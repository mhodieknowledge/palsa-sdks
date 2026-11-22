#!/usr/bin/env bash
#
# Push one generated client to the root of a repository of its own, and tag it.
#
# Two registries read a package only from a repository root: Packagist reads composer.json there and
# has no notion of a subdirectory, and a Swift package must sit there. Those two clients are therefore
# published by copying clients/<name>/ into a mirror repository and tagging that.
#
# The mirror is write-only. Nothing is ever edited there, and the next release overwrites it with
# whatever the specification produces, so the generated tree here stays the one source of truth.
#
#   scripts/publish-mirror.sh php   mhodieknowledge/palsa-php   0.1.0
#   scripts/publish-mirror.sh swift mhodieknowledge/palsa-swift 0.1.0
#
# Needs MIRROR_TOKEN in the environment: a token that may push to the mirror.
# Called by .github/workflows/sdk-publish.yml, which is manual and requires a typed confirmation.
set -euo pipefail

name=${1:?which client, e.g. php}
mirror=${2:?the mirror repository, e.g. mhodieknowledge/palsa-php}
version=${3:?the version, e.g. 0.1.0}

cd "$(dirname "$0")/.."
source="clients/$name"
[ -d "$source" ] || { echo "No $source. Run scripts/generate-sdks.sh first."; exit 1; }

if [ -z "${MIRROR_TOKEN:-}" ]; then
  cat <<MESSAGE
No MIRROR_TOKEN.

Publishing $name needs a repository of its own, because its registry reads a package only from a
repository root. Two things have to exist first, and neither is this script's to create:

  1. https://github.com/$mirror, empty.
  2. A repository secret SDK_MIRROR_TOKEN on this repository, holding a token that may push to it.

Nothing has been published.
MESSAGE
  exit 1
fi

work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT

echo "==> $source -> https://github.com/$mirror (v$version)"
cp -r "$source/." "$work/"
# Written by the mirror, not copied: the point of a README here is to say where the code came from.
cat > "$work/MIRROR.md" <<MIRROR
This repository is generated. It holds the Palsa client for $name, copied from
\`clients/$name\` in https://github.com/mhodieknowledge/Palsa at each release, because this
registry reads a package only from a repository root.

Do not send changes here; they will be overwritten by the next release. The client is generated from
\`openapi/palsa.yaml\` in that repository.
MIRROR

cd "$work"
git init -q
git checkout -q -b main
git add -A
git -c user.name="palsa-release" -c user.email="noreply@palsa.dev" \
  commit -q -m "Palsa $name client v$version"
git tag "v$version"
# MIRROR_REMOTE exists so this script can be run against a local bare repository and watched doing
# what it claims. Unset, which is how the workflow calls it, it is the real mirror on GitHub.
git remote add origin "${MIRROR_REMOTE:-https://x-access-token:${MIRROR_TOKEN}@github.com/${mirror}.git}"

# Force, because the mirror holds no history worth keeping: every release replaces it wholesale. The
# tags are what consumers resolve, and a tag is never moved.
git push -q --force origin main
git push -q origin "v$version"

echo "Pushed main and tag v$version to $mirror."
