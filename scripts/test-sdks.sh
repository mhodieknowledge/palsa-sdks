#!/usr/bin/env bash
#
# Build and test the generated clients, as far as the toolchains present allow.
#
# Called by CI, where every toolchain exists, and usable locally, where some do not. A language whose
# toolchain is missing is reported as skipped rather than passed: "not run" and "passing" are different
# facts and must not be printed the same way.
#
#   scripts/test-sdks.sh            everything available
#   scripts/test-sdks.sh go php     only those
set -uo pipefail
cd "$(dirname "$0")/.."

# Toolchains installed by scripts/install-sdk-toolchains.sh land here rather than on the system path,
# so a container that has them finds them without the caller exporting anything.
toolchains=${TOOLCHAIN_DIR:-/opt/toolchains}
for dir in "$toolchains"/dart-sdk/bin "$toolchains"/dotnet "$toolchains"/swift-*/usr/bin; do
  [ -d "$dir" ] && PATH="$dir:$PATH"
done
export PATH DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_NOLOGO=1

wanted=("$@")
should_run() { [ ${#wanted[@]} -eq 0 ] || printf '%s\n' "${wanted[@]}" | grep -qx "$1"; }

passed=(); failed=(); skipped=()
record() { case "$1" in pass) passed+=("$2") ;; fail) failed+=("$2") ;; skip) skipped+=("$2: $3") ;; esac; }

# Each language's output goes to a file and is printed only if it failed. Silencing it entirely cost a
# round trip through CI once: the summary said "failed: swift" and nothing else, which is not a fault
# report, it is a rumour of one.
LOGS=$(mktemp -d)
log() { echo "$LOGS/$1.log"; }

# ---------------------------------------------------------------- typescript
if should_run typescript; then
  if command -v node >/dev/null; then
    ( cd clients/typescript && npm install --silent --no-audit --no-fund \
      && npx tsc --noEmit -p tsconfig.json && npm run build --silent && node test/webhook.test.mjs ) > "$(log typescript)" 2>&1
    [ $? -eq 0 ] && record pass typescript || record fail typescript
  else
    record skip typescript "no node"
  fi
fi

# ---------------------------------------------------------------- python
if should_run python; then
  if command -v python3 >/dev/null; then
    { ( cd clients/python && python3 -m pip install -q -e . ) \
      && ( cd /tmp && python3 -c "import palsa_api" ) \
      && ( cd clients/python && python3 -m unittest -q test.test_webhook ); } > "$(log python)" 2>&1
    [ $? -eq 0 ] && record pass python || record fail python
  else
    record skip python "no python3"
  fi
fi

# ---------------------------------------------------------------- php
if should_run php; then
  if command -v php >/dev/null; then
    bad=0
    while IFS= read -r file; do php -l "$file" >/dev/null 2>&1 || bad=1; done \
      < <(find clients/php/lib -name '*.php')
    # The webhook test is the one that matters: it checks the client against the server's own signature.
    ( cd clients/php && php lib/webhook_test.php >/dev/null ) || bad=1
    [ $bad -eq 0 ] && record pass php || record fail php
  else
    record skip php "no php"
  fi
fi

# ---------------------------------------------------------------- go
if should_run go; then
  if command -v go >/dev/null; then
    # download rather than tidy: tidy rewrites go.mod and go.sum, which then differ from what is
    # committed, and the drift check would fail every time the tests ran. Both files are pinned by
    # scripts/patch-sdks.sh instead.
    #
    # -mod=readonly, not -mod=mod: mod quietly fills in whatever go.sum is missing, so an incomplete
    # go.sum passes here and fails on a clean checkout. That is exactly how it failed in CI once.
    ( cd clients/go && go mod download \
      && go test ./... -count=1 -mod=readonly ) > "$(log go)" 2>&1
    [ $? -eq 0 ] && record pass go || record fail go
  else
    record skip go "no go"
  fi
fi

# ---------------------------------------------------------------- java
if should_run java; then
  if command -v mvn >/dev/null; then
    ( cd clients/java && mvn -q -B test ) > "$(log java)" 2>&1
    [ $? -eq 0 ] && record pass java || record fail java
  else
    record skip java "no maven"
  fi
fi

# ---------------------------------------------------------------- kotlin
if should_run kotlin; then
  if command -v gradle >/dev/null; then
    ( cd clients/kotlin && gradle --no-daemon -q test --rerun-tasks ) > "$(log kotlin)" 2>&1
    [ $? -eq 0 ] && record pass kotlin || record fail kotlin
  else
    record skip kotlin "no gradle"
  fi
fi

# ---------------------------------------------------------------- csharp
if should_run csharp; then
  if command -v dotnet >/dev/null; then
    ( cd clients/csharp && dotnet test ) > "$(log csharp)" 2>&1
    [ $? -eq 0 ] && record pass csharp || record fail csharp
  else
    record skip csharp "no dotnet"
  fi
fi

# ---------------------------------------------------------------- swift
if should_run swift; then
  if command -v swift >/dev/null; then
    ( cd clients/swift && swift test ) > "$(log swift)" 2>&1
    [ $? -eq 0 ] && record pass swift || record fail swift
  else
    record skip swift "no swift"
  fi
fi

# ---------------------------------------------------------------- dart
if should_run dart; then
  if command -v dart >/dev/null; then
    ( cd clients/dart && dart pub get && dart test ) > "$(log dart)" 2>&1
    [ $? -eq 0 ] && record pass dart || record fail dart
  else
    record skip dart "no dart"
  fi
fi

echo
echo "passed:  ${passed[*]:-none}"
echo "failed:  ${failed[*]:-none}"
printf 'skipped: %s\n' "${skipped[0]:-none}"
for s in "${skipped[@]:1}"; do printf '         %s\n' "$s"; done
echo

for name in "${failed[@]}"; do
  echo "---------------------------------------------------------------- $name"
  tail -40 "$LOGS/$name.log" 2>/dev/null || echo "(no output captured)"
  echo
done

rm -rf "$LOGS"

# Skipped is not failed, but it is not passed either, and the distinction is the point of this script.
[ ${#failed[@]} -eq 0 ] || exit 1
