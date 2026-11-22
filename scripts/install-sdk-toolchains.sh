#!/usr/bin/env bash
#
# Install the toolchains a plain container does not have, so every generated client can be tested here
# rather than only in CI.
#
# Three of the nine clients were written with no way to run them: C#, Dart and Swift. The first CI run
# found a real defect in each, which is the argument for installing these instead of waiting on a
# push-and-see loop. scripts/test-sdks.sh picks them up from /opt/toolchains on its own.
#
#   scripts/install-sdk-toolchains.sh             all three
#   scripts/install-sdk-toolchains.sh dart        only that one
#
# Node, Python, PHP, Go, Maven and Gradle are already present in the container these were built in.
set -euo pipefail

SWIFT_VERSION=6.0.3
SWIFT_BUILD=swift-${SWIFT_VERSION}-RELEASE-ubuntu24.04

# /opt here, where scripts/test-sdks.sh looks first. On a machine where /opt is not writable, such as a
# CI runner, set TOOLCHAIN_DIR to somewhere that is; test-sdks.sh reads the same variable.
DEST=${TOOLCHAIN_DIR:-/opt/toolchains}

wanted=("$@")
should_install() { [ ${#wanted[@]} -eq 0 ] || printf '%s\n' "${wanted[@]}" | grep -qx "$1"; }

mkdir -p "$DEST"

if should_install dart && [ ! -x "$DEST/dart-sdk/bin/dart" ]; then
  echo "==> dart"
  curl -sSL -o /tmp/dart.zip \
    https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip
  unzip -q /tmp/dart.zip -d "$DEST"
  rm -f /tmp/dart.zip
  "$DEST/dart-sdk/bin/dart" --version
fi

if should_install dotnet && [ ! -x "$DEST/dotnet/dotnet" ]; then
  echo "==> dotnet"
  curl -sSL -o /tmp/dotnet-install.sh https://dot.net/v1/dotnet-install.sh
  bash /tmp/dotnet-install.sh --channel 8.0 --install-dir "$DEST/dotnet" --no-path
  rm -f /tmp/dotnet-install.sh
  "$DEST/dotnet/dotnet" --version
fi

if should_install swift && [ ! -x "$DEST/$SWIFT_BUILD/usr/bin/swift" ]; then
  echo "==> swift"
  curl -sSL -o /tmp/swift.tar.gz \
    "https://download.swift.org/swift-${SWIFT_VERSION}-release/ubuntu2404/swift-${SWIFT_VERSION}-RELEASE/${SWIFT_BUILD}.tar.gz"
  tar xzf /tmp/swift.tar.gz -C "$DEST"
  rm -f /tmp/swift.tar.gz
  "$DEST/$SWIFT_BUILD/usr/bin/swift" --version
fi

echo
echo "Installed under $DEST. scripts/test-sdks.sh finds them there."
