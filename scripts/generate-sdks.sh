#!/usr/bin/env bash
#
# Regenerate every Palsa client from openapi/palsa.yaml.
#
# This is the whole point of having a specification: an API change is a change to that file followed by
# running this, not nine hand edits that drift apart. The generator version is pinned in
# openapi/generators.json, because an unpinned generator rewrites every library differently on a different
# day and the diff becomes noise nobody reads.
#
#   scripts/generate-sdks.sh            regenerate all of them
#   scripts/generate-sdks.sh go java    regenerate only those
#
# What this does NOT touch: sdk/ and sdk-python/, the hand-written clients. Generated output lands in
# clients/<name>/ and is committed, so a consumer never has to run a generator and a reviewer can
# see exactly what the spec change did to each language.
set -euo pipefail

cd "$(dirname "$0")/.."
SPEC=openapi/palsa.yaml
CONFIG=openapi/generators.json

[ -f "$SPEC" ] || { echo "No $SPEC"; exit 1; }

wanted=("$@")
names=$(python3 -c "
import json, sys
config = json.load(open('$CONFIG'))
wanted = sys.argv[1:]
for target in config['targets']:
    if not wanted or target['name'] in wanted:
        print(target['name'])
" "${wanted[@]+"${wanted[@]}"}")

[ -n "$names" ] || { echo "Nothing matched: ${wanted[*]:-}"; exit 1; }

for name in $names; do
  # A config file rather than --additional-properties. That flag is a comma-separated list of key=value
  # pairs split on both commas and spaces, so any property whose value is a sentence arrives as a dozen
  # stray arguments. A config file has no such parsing to get wrong.
  config_file=$(mktemp)
  out=$(python3 -c "
import json
config = json.load(open('$CONFIG'))
target = next(t for t in config['targets'] if t['name'] == '$name')
json.dump({'generatorName': target['generator'], 'additionalProperties': target['properties']},
          open('$config_file', 'w'), indent=2)
print(target['out'])
")

  echo "==> $name -> $out"
  # Removed first: a stale file from an operation the spec no longer has would otherwise survive and keep
  # compiling, which is the quiet way a generated client drifts from the API.
  rm -rf "$out"
  mkdir -p "$out"

  npx --yes @openapitools/openapi-generator-cli generate \
    --input-spec "$SPEC" \
    --config "$config_file" \
    --output "$out" \
    --git-host github.com \
    --git-user-id mhodieknowledge \
    --git-repo-id palsa \
    --skip-validate-spec >/dev/null
  rm -f "$config_file"


  # Hand-written parts, copied in after generation because the output directory is deleted before each
  # run. See sdk-extras/README.md: webhook verification cannot be generated, and it is the part of a
  # client most worth getting right.
  extras="sdk-extras/$name"
  if [ -d "$extras" ]; then
    case "$name" in
      go)
        cp "$extras"/*.go "$out"/
        ;;
      php)
        cp "$extras"/*.php "$out/lib/"
        ;;
      java)
        mkdir -p "$out/src/main/java/dev/palsa/api" "$out/src/test/java/dev/palsa/api"
        cp "$extras"/dev/palsa/api/*.java "$out/src/main/java/dev/palsa/api/"
        cp sdk-extras/java-test/dev/palsa/api/*.java "$out/src/test/java/dev/palsa/api/"
        ;;
      kotlin)
        mkdir -p "$out/src/main/kotlin/dev/palsa/api" "$out/src/test/kotlin/dev/palsa/api"
        cp "$extras"/dev/palsa/api/*.kt "$out/src/main/kotlin/dev/palsa/api/"
        cp sdk-extras/kotlin-test/dev/palsa/api/*.kt "$out/src/test/kotlin/dev/palsa/api/"
        ;;
      csharp)
        mkdir -p "$out/src/Palsa.Api" "$out/src/Palsa.Api.Test"
        cp "$extras"/*.cs "$out/src/Palsa.Api/"
        cp sdk-extras/csharp-test/*.cs "$out/src/Palsa.Api.Test/"
        ;;
      swift)
        mkdir -p "$out/Sources/PalsaApi" "$out/Tests/PalsaApiTests"
        cp "$extras"/*.swift "$out/Sources/PalsaApi/"
        cp sdk-extras/swift-test/*.swift "$out/Tests/PalsaApiTests/"
        ;;
      dart)
        mkdir -p "$out/test"
        cp "$extras"/*.dart "$out/lib/"
        cp sdk-extras/dart-test/*.dart "$out/test/"
        ;;
    esac
    echo "    + hand-written extras from $extras"
  fi
done

# Repairs for defects in the generator itself. Without these the TypeScript client does not
# compile at all, so generation is not finished until they are applied.
"$(dirname "$0")/patch-sdks.sh"

# PALSA.md in each client: what it is, how it is regenerated, and whether it has actually
# been run. Written last so it reflects the run that just happened.
"$(dirname "$0")/sdk-docs.sh"

echo
echo "Done. Hand-written clients in sdk/ and sdk-python/ were not touched."
