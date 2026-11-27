#!/usr/bin/env bash
#
# What each client tells its registry about itself.
#
# A wrong repository or homepage is not caught by any build: it compiles, it publishes, and it sends
# people to the wrong place for the rest of the package's life. The Dart client shipped with a link to
# a repository that does not hold it, because the patch that set the others only added the field when
# it was missing and the generator always writes one.
#
#   scripts/audit-metadata.sh          report
#   scripts/audit-metadata.sh --check  exit 1 if anything points at the wrong place
set -uo pipefail
cd "$(dirname "$0")/.."

repo=https://github.com/mhodieknowledge/palsa-sdks
home=https://palsa.co.zw/docs
bad=0

show() { printf '  %-14s %s\n' "$1" "${2:-(not declared)}"; }
check() {
  case "${2:-}" in
    *mhodieknowledge/palsa-sdks*|*palsa.co.zw*) ;;
    '') ;;
    *) echo "    ^ points somewhere else"; bad=$((bad + 1)) ;;
  esac
}

echo "typescript (npm, package.json)"
for key in name homepage; do
  v=$(node -p "require('./clients/typescript/package.json').$key ?? ''" 2>/dev/null)
  show "$key" "$v"; [ "$key" = homepage ] && check "$key" "$v"
done
v=$(node -p "require('./clients/typescript/package.json').repository?.url ?? ''" 2>/dev/null)
show repository "$v"; check repository "$v"
v=$(node -p "require('./clients/typescript/package.json').bugs?.url ?? ''" 2>/dev/null)
show bugs "$v"; check bugs "$v"

echo "python (pyproject.toml)"
for key in name; do show "$key" "$(grep -m1 "^$key = " clients/python/pyproject.toml | cut -d'"' -f2)"; done
for key in Homepage Source; do
  v=$(grep -m1 "^$key = " clients/python/pyproject.toml | cut -d'"' -f2)
  show "$key" "$v"; check "$key" "$v"
done

echo "php (composer.json)"
for key in name homepage; do
  v=$(node -p "require('./clients/php/composer.json').$key ?? ''" 2>/dev/null)
  show "$key" "$v"; [ "$key" = homepage ] && check "$key" "$v"
done

echo "dart (pubspec.yaml)"
for key in name homepage repository issue_tracker documentation; do
  v=$(grep -m1 "^$key:" clients/dart/pubspec.yaml | cut -d' ' -f2-)
  show "$key" "$v"; [ "$key" != name ] && check "$key" "$v"
done

echo "java (pom.xml)"
v=$(grep -m1 '<url>' clients/java/pom.xml | sed 's/.*<url>\(.*\)<\/url>.*/\1/')
show url "$v"; check url "$v"
v=$(grep -m1 '<connection>' clients/java/pom.xml | sed 's/.*<connection>\(.*\)<\/connection>.*/\1/')
show scm "$v"; check scm "$v"

echo "kotlin (build.gradle)"
for key in url connection; do
  v=$(grep -m1 "$key = '" clients/kotlin/build.gradle | cut -d"'" -f2)
  show "$key" "$v"; check "$key" "$v"
done

echo "csharp (csproj)"
for key in RepositoryUrl PackageProjectUrl; do
  v=$(grep -m1 "<$key>" clients/csharp/src/Palsa.Api/Palsa.Api.csproj 2>/dev/null | sed "s/.*<$key>\(.*\)<\/$key>.*/\1/")
  show "$key" "$v"; check "$key" "$v"
done

echo "go (go.mod)"
v=$(head -1 clients/go/go.mod | cut -d' ' -f2)
show module "$v"; check module "$v"

echo "swift (Package.swift)"
show name "$(grep -m1 'name:' clients/swift/Package.swift | cut -d'"' -f2)"

echo
if [ "$bad" -gt 0 ]; then
  echo "$bad field(s) point somewhere other than this repository or the documentation."
  [ "${1:-}" = --check ] && exit 1
else
  echo "Every declared url points at this repository or the documentation."
fi
