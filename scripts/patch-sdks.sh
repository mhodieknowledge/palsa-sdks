#!/usr/bin/env bash
#
# Repairs applied after generation.
#
# Each works around a defect in OpenAPI Generator 7.14.0 itself, not a choice about how Palsa's clients
# should look. They live here rather than in the generated files so a regeneration does not undo them. On a
# generator upgrade, comment one out, regenerate, and see whether the build still passes; if it does, the
# patch is no longer needed and should go.
set -euo pipefail
cd "$(dirname "$0")/.."

# ---------------------------------------------------------------- typescript-fetch
#
# Every generated model imports `mapValues` from the runtime, and the runtime does not export it. Without
# this the client does not compile at all: 39 errors, every one this single cause.
TS_RUNTIME=clients/typescript/src/runtime.ts
if [ -f "$TS_RUNTIME" ] && ! grep -q "export function mapValues" "$TS_RUNTIME"; then
  cat >> "$TS_RUNTIME" <<'TS'

/** Applied by scripts/patch-sdks.sh: generator 7.14.0 imports this without emitting it. */
export function mapValues(data: any, fn: (item: any) => any) {
  return Object.keys(data).reduce(
    (acc, key) => ({ ...acc, [key]: fn(data[key]) }),
    {} as Record<string, any>,
  );
}
TS
  echo "patched: typescript runtime mapValues"
fi

# ---------------------------------------------------------------- python
#
# The generated pyproject.toml writes `license = "NoLicense"`, a bare string where modern setuptools wants
# a table, so `pip install` fails before it begins: "project.license must be valid exactly by one
# definition".
PY_PROJECT=clients/python/pyproject.toml
if [ -f "$PY_PROJECT" ] && grep -q '^license = "NoLicense"' "$PY_PROJECT"; then
  sed -i 's/^license = "NoLicense"$/license = { text = "UNLICENSED" }/' "$PY_PROJECT"
  echo "patched: python pyproject license table"
fi

# ---------------------------------------------------------------- kotlin
#
# The generated build declares kotlintest 3.4.2 as its only test dependency, a framework unmaintained for
# years and whose DSL is not kotlin.test, so a hand-written test using the standard annotations does not
# compile. The standard test library is added rather than swapped in: the generator's own stub tests are
# written in the kotlintest DSL, so removing it stops them compiling, and empty stubs that fail the build
# are worse than empty stubs.
KT_BUILD=clients/kotlin/build.gradle
if [ -f "$KT_BUILD" ] && ! grep -q "kotlin-test" "$KT_BUILD"; then
  python3 - "$KT_BUILD" <<'PYEOF'
import sys

path = sys.argv[1]
source = open(path).read()
source = source.replace(
    '    testImplementation "io.kotlintest:kotlintest-runner-junit5:3.4.2"\n',
    '    testImplementation "io.kotlintest:kotlintest-runner-junit5:3.4.2"\n'
    '    testImplementation "org.jetbrains.kotlin:kotlin-test:$kotlin_version"\n'
    '    testImplementation "org.junit.jupiter:junit-jupiter:5.11.3"\n'
    '    testRuntimeOnly "org.junit.platform:junit-platform-launcher:1.11.3"\n',
    1,
)
if 'useJUnitPlatform' not in source:
    source += '\ntest {\n    useJUnitPlatform()\n}\n'
open(path, 'w').write(source)
PYEOF
  echo "patched: kotlin build.gradle test framework"
fi

# ---------------------------------------------------------------- csharp
#
# The C# generator mints a fresh project GUID on every run, so the solution file can never match a
# committed copy and the drift check would fail on every clean regeneration. The GUID only identifies the
# project within the solution, so it is pinned and the output becomes genuinely reproducible, which is the
# point of pinning the generator in the first place.
CS_SLN=clients/csharp/Palsa.Api.sln
if [ -f "$CS_SLN" ]; then
  python3 - "$CS_SLN" <<'PYEOF'
import re
import sys

path = sys.argv[1]
source = open(path).read()
fixed = "7A1F3C9E-4B2D-4E8A-9C5F-1D6B8E2A4F70"

# The GUID on the main project's line is the one that moves; the test project's is stable.
match = re.search(r'"Palsa\.Api", "[^"]+", "\{([0-9A-Fa-f-]{36})\}"', source)
if match and match.group(1) != fixed:
    open(path, "w").write(source.replace(match.group(1), fixed))
    print("pinned")
PYEOF
  echo "patched: csharp solution project guid pinned"
fi

# ---------------------------------------------------------------- go
#
# Two files, written together because they have to agree.
#
# The generated go.mod has an empty require block, yet the generator's own stub tests import testify, so
# nothing compiles until the dependency is added, and the generated go.sum has no entry for it either. A
# container whose module cache already holds testify passes anyway, which is why CI caught this and the
# local run did not: from a cold cache `go test` refuses to add a missing go.sum entry by itself.
#
# `go mod tidy` writes both files correctly, but it reaches the network and rewrites whatever it finds, so
# the committed output would differ from the next run and the drift check would fail every time. Pinning
# both here makes the module complete as generated, reproducible, and buildable from a cold cache.
#
# To refresh after a spec or generator change: run `go mod tidy` in clients/go, then paste the two
# files it produces in below. This patch stops being needed when the generator emits its own require
# block and a go.sum that matches it.
GO_MOD=clients/go/go.mod
if [ -f "$GO_MOD" ] && ! grep -q "stretchr/testify" "$GO_MOD"; then
  cat > "$GO_MOD" <<'GOMOD'
module github.com/mhodieknowledge/palsa-sdks/clients/go

go 1.21

// Pinned by scripts/patch-sdks.sh, with the matching go.sum: the generator leaves this empty while
// emitting tests that need it.
require github.com/stretchr/testify v1.9.0

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
GOMOD
  cat > clients/go/go.sum <<'GOSUM'
github.com/davecgh/go-spew v1.1.1 h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=
github.com/davecgh/go-spew v1.1.1/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38=
github.com/pmezard/go-difflib v1.0.0 h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=
github.com/pmezard/go-difflib v1.0.0/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4=
github.com/stretchr/testify v1.9.0 h1:HtqpIVDClZ4nwg75+f6Lvsy/wHu+3BoSGCbBAcpTsTg=
github.com/stretchr/testify v1.9.0/go.mod h1:r2ic/lqez/lEtzL7wO/rwa5dbSLXVDPFyf8C91i36aY=
gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405 h1:yhCVgyC4o1eVCa2tZl7eS0r+SDo693bJlVdllGtEeKM=
gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0=
gopkg.in/yaml.v3 v3.0.1 h1:fxVm/GzAzEWqLHuvctI91KS9hhNmmWOoWu0XTYJS7CA=
gopkg.in/yaml.v3 v3.0.1/go.mod h1:K4uyk7z7BCEPqu6E+C64Yfv1cQ7kz7rIZviUmN+EgEM=
GOSUM
  echo "patched: go.mod and go.sum pinned together"
fi

# The module path, which the generator derives from the repository name alone. `go get` resolves a
# module path to a directory, and this client lives in a subdirectory, so the generated
# github.com/mhodieknowledge/palsa-sdks pointed at a repository root with no go.mod in it: nobody
# could install this client at all. Go module paths are case-sensitive, so the spelling has to be the
# repository's own.
#
# A module in a subdirectory is released by tagging clients/go/vX.Y.Z rather than vX.Y.Z; the publish
# workflow says so.
#
# The replacement is anchored to a path that is NOT already correct, because the generated path is a
# prefix of the one it becomes: a plain substitution would turn an already-patched tree into
# .../palsa-sdks/clients/go-sdks/clients/go on the second run.
#
# This stops being needed when the generator takes a module path of its own. The tests import it and
# the README and docs tell a consumer to, so all three are rewritten.
go_module=github.com/mhodieknowledge/palsa-sdks/clients/go
if [ -d clients/go ]; then
  # `|| true`, because a grep that matches nothing exits 1 and the script runs under `set -o pipefail`:
  # without it a tree that needs no patching aborts the run, and every patch after this one is skipped.
  go_files=$(grep -rl 'github.com/mhodieknowledge/palsa-sdks' clients/go || true)
  if [ -n "$go_files" ]; then
    # The optional group makes this idempotent. The generated path is a prefix of the correct one, so a
    # plain substitution would append the suffix again on every run.
    printf '%s\n' "$go_files" \
      | xargs sed -i -E "s|github\\.com/mhodieknowledge/palsa-sdks(/clients/go)?|$go_module|g"
    echo "patched: go module path points at the directory the module is in"
  fi
fi

# ---------------------------------------------------------------- dart
#
# Two edits to a generated pubspec, both of which stop the package dead without them.
#
# 1. `crypto`, which lib/webhook.dart imports. The generator knows nothing about the hand-written
#    verification copied in beside its output, so it declares no dependency for it and nothing that
#    imports the library compiles.
# 2. The test constraint. The generator pins `test: '>=1.21.6 <1.22.0'`. That version runs tests through
#    bin/snapshots/frontend_server.dart.snapshot, and a current Dart SDK ships only
#    frontend_server_aot.dart.snapshot, so all 45 suites fail to load before a single test runs. This is
#    what the first CI run reported as "0 tests passed, 45 failed".
#
# Both stop being needed when the generator learns about hand-written dependencies and raises its own
# test pin.
PUBSPEC=clients/dart/pubspec.yaml
if [ -f "$PUBSPEC" ] && ! grep -q "^  crypto:" "$PUBSPEC"; then
  python3 - "$PUBSPEC" <<'PYDART'
import sys
path = sys.argv[1]
lines = open(path).read().splitlines(keepends=True)
out = []
for line in lines:
    if line.startswith("  collection:"):
        out.append(line)
        out.append("  crypto: '>=3.0.0 <4.0.0'\n")
    elif line.lstrip().startswith("test:") and "1.22.0" in line:
        out.append("  test: '>=1.25.0 <2.0.0'\n")
    else:
        out.append(line)
open(path, "w").write("".join(out))
PYDART
  echo "patched: dart pubspec declares crypto and a test version a current SDK can run"
fi

# Three defects in the generated Dart models, all of which stop the whole library compiling, which in
# turn makes every one of the 44 generated test suites fail to load.
#
#   1. A schema property with both an enum and a default produces
#      `XEnum.fromJson(json[r'y']) ?? 'default'` -- the fallback is the raw string, not the enum member,
#      so the argument type does not match. Replaced with the member that carries that value, looked up
#      in the same file so a renamed value cannot be patched to something that does not exist.
#   2. A map of string arrays produces `mapCastOfType<String, List>`, whose `Map<String, List<dynamic>>?`
#      will not assign to the declared `Map<String, List<String>>`. Wrapped in a cast.
#
# Each stops being needed when `dart analyze clients/dart/lib` reports no errors without it.
if [ -d clients/dart/lib/model ]; then
  python3 - <<'PYDARTCODE'
import glob, re

changed = []
for path in sorted(glob.glob('clients/dart/lib/model/*.dart')):
    src = original = open(path).read()

    def enum_default(match):
        enum, arg, value = match.group('enum'), match.group('arg'), match.group('value')
        member = re.search(
            r"static const (\w+) = %s\._\(r'%s'\)" % (re.escape(enum), re.escape(value)), src)
        if not member:
            return match.group(0)
        return '%s.fromJson(%s) ?? %s.%s' % (enum, arg, enum, member.group(1))

    src = re.sub(
        r"(?P<enum>\w+Enum)\.fromJson\((?P<arg>json\[r'\w+'\])\) \?\? '(?P<value>[^']*)'",
        enum_default, src)

    src = re.sub(
        r"mapCastOfType<String, List>\(json, (r'\w+')\)(?! \?\? const \{\})",
        r"(mapCastOfType<String, List>(json, \1) ?? const {})\n"
        r"                .map((key, value) => MapEntry(key, value.cast<String>()))",
        src)

    if src != original:
        open(path, 'w').write(src)
        changed.append(path.split('/')[-1])

if changed:
    print('patched: dart models compile (%s)' % ', '.join(changed))
PYDARTCODE
fi

# ---------------------------------------------------------------- swift
#
# Five repairs to one generated manifest.
#
#   1. It declares a single target whose path is the package root and no test target at all, so
#      `swift test` compiled the test sources into the library itself: XCTest inside a library target,
#      and `@testable import PalsaApi` inside PalsaApi. The compiler did not report that as an error,
#      it crashed with `error: fatalError`, which is what the first CI run showed.
#   2. With the root as the target path, everything beside the sources is compiled too, so the test
#      directory and the generator's own files need excluding by name.
#   3. Webhook verification needs HMAC-SHA256. CryptoKit exists only on Apple's platforms, so the
#      client would not build on Linux at all. swift-crypto is the same API and is linked only where
#      CryptoKit is missing.
#   4. Linking a product per platform needs swift-tools-version 5.7; the generator writes 5.1.
#   5. The generated platform floor is iOS 11 and macOS 10.13, but CryptoKit starts at iOS 13 and
#      macOS 10.15, so the floor was a claim the library could not keep.
#
# This stops being needed when the generator emits a test target of its own.
PACKAGE_SWIFT=clients/swift/Package.swift
if [ -f "$PACKAGE_SWIFT" ] && ! grep -q "testTarget" "$PACKAGE_SWIFT"; then
  python3 - "$PACKAGE_SWIFT" <<'PYSWIFT'
import sys

path = sys.argv[1]
src = open(path).read()

replacements = [
    (
        "// swift-tools-version:5.1",
        "// swift-tools-version:5.7\n// Raised from 5.1 by scripts/patch-sdks.sh: linking a product per platform needs 5.7.",
    ),
    (
        """    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v11),
        .watchOS(.v4),
    ],""",
        """    platforms: [
        // Raised by scripts/patch-sdks.sh from iOS 11 / macOS 10.13: Webhook.swift uses CryptoKit,
        // which does not exist before iOS 13 and macOS 10.15.
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],""",
    ),
    (
        """        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1")),""",
        """        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1")),
        // Added by scripts/patch-sdks.sh: CryptoKit is Apple-only, and Webhook.swift needs HMAC-SHA256
        // wherever the client runs. Linked only off Apple, in the target below.
        .package(url: "https://github.com/apple/swift-crypto", .upToNextMajor(from: "3.0.0")),""",
    ),
    (
        """        .target(
            name: "PalsaApi",
            dependencies: ["AnyCodable", ],
            path: "."
        ),""",
        """        .target(
            name: "PalsaApi",
            dependencies: [
                "AnyCodable",
                .product(
                    name: "Crypto",
                    package: "swift-crypto",
                    condition: .when(platforms: [.linux])
                ),
            ],
            path: ".",
            // Added by scripts/patch-sdks.sh. This target's path is the package root, so without an
            // exclude list the test sources below are compiled into the library as well.
            exclude: [
                "Tests",
                "docs",
                "README.md",
                "PALSA.md",
                "project.yml",
                "Cartfile",
                "PalsaApi.podspec",
                "git_push.sh",
                ".openapi-generator",
                ".openapi-generator-ignore",
                ".swiftformat",
            ]
        ),
        // Added by scripts/patch-sdks.sh: the generator emits no test target, so `swift test` found
        // nothing to run and the webhook tests never executed.
        .testTarget(
            name: "PalsaApiTests",
            dependencies: ["PalsaApi"],
            path: "Tests/PalsaApiTests"
        ),""",
    ),
]

for old, new in replacements:
    assert old in src, "the generated Package.swift has changed shape: " + old.splitlines()[0].strip()
    src = src.replace(old, new)

open(path, "w").write(src)
PYSWIFT
  echo "patched: swift package separates its library from its tests and builds off Apple"
fi

# The same manifest's sources assume Apple too: URLSessionImplementations.swift imports
# MobileCoreServices under `#if !os(macOS)`, which is true on Linux where that framework does not
# exist, and calls the pre-UniformTypeIdentifiers MIME lookup in a branch nothing guards. Both are
# only reached by multipart file uploads, which this API has none of, so on Linux they become a
# MIME type of application/octet-stream rather than a missing feature.
#
# This stops being needed when the generator guards those imports with canImport.
SWIFT_SESSION=clients/swift/URLSessionImplementations.swift
if [ -f "$SWIFT_SESSION" ] && grep -q '^#if !os(macOS)$' "$SWIFT_SESSION"; then
  python3 - "$SWIFT_SESSION" <<'PYSWIFTSESSION'
import sys

path = sys.argv[1]
src = open(path).read()

replacements = [
    (
        """#if !os(macOS)
import MobileCoreServices
#endif""",
        """// Patched by scripts/patch-sdks.sh: `!os(macOS)` is true on Linux, where this framework does not exist.
#if canImport(MobileCoreServices)
import MobileCoreServices
#endif""",
    ),
    (
        """        } else {
            if let uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension as NSString, nil)?.takeRetainedValue(),
                    let mimetype = UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType)?.takeRetainedValue() {
                return mimetype as String
            }
            return "application/octet-stream"
        }""",
        """        } else {
            // Guard added by scripts/patch-sdks.sh: these two functions come from MobileCoreServices.
            #if canImport(MobileCoreServices)
            if let uti = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension as NSString, nil)?.takeRetainedValue(),
                    let mimetype = UTTypeCopyPreferredTagWithClass(uti, kUTTagClassMIMEType)?.takeRetainedValue() {
                return mimetype as String
            }
            #endif
            return "application/octet-stream"
        }""",
    ),
]

for old, new in replacements:
    assert old in src, "URLSessionImplementations.swift has changed shape: " + old.splitlines()[0].strip()
    src = src.replace(old, new)

open(path, "w").write(src)
PYSWIFTSESSION
  echo "patched: swift client builds off Apple"
fi

# On Linux, URLRequest, URLSession and URLCredential live in FoundationNetworking rather than
# Foundation, and the generator imports only Foundation. Every file that touches them gets the
# conditional import; on Apple's platforms canImport is false and nothing changes.
#
# This stops being needed when the generator emits the FoundationNetworking import itself.
if [ -d clients/swift ]; then
  python3 - <<'PYSWIFTNET'
import glob

needs = ("URLRequest", "URLSession", "URLCredential", "URLResponse")
guard = "#if canImport(FoundationNetworking)"
added = []

for path in sorted(glob.glob("clients/swift/*.swift")):
    src = open(path).read()
    if guard in src or not any(name in src for name in needs):
        continue
    if "\nimport Foundation\n" not in src:
        continue
    src = src.replace(
        "\nimport Foundation\n",
        "\nimport Foundation\n"
        "// Added by scripts/patch-sdks.sh: off Apple, URL loading lives in its own module.\n"
        + guard + "\nimport FoundationNetworking\n#endif\n",
        1)
    open(path, "w").write(src)
    added.append(path.split("/")[-1])

if added:
    print("patched: swift url loading imports (%s)" % ", ".join(added))
PYSWIFTNET
fi

echo "Patches applied."

# ---------------------------------------------------------------- package metadata
#
# What a registry shows and what a lawyer reads. The generator fills these from its own defaults: the
# author becomes "OpenAPI", the licence becomes "unlicense" or "NoLicense", the description becomes the
# whole specification summary, and there is no link back to the source. None of that is fixable after a
# version is published, so it is set before anything ever is.
#
# The names were checked as free on npm, PyPI, Packagist and pub.dev before being chosen.

repo=https://github.com/mhodieknowledge/palsa-sdks
home=https://palsa.mhodieknowledge.workers.dev/docs
author='Kuzikode Intelligent Technologies'
blurb='Official Palsa client, generated from the OpenAPI specification. SMS, email and push from one request.'

node - "$repo" "$home" "$author" "$blurb" <<'NODE'
const { readFileSync, writeFileSync, existsSync } = require('node:fs')
const [repo, home, author, blurb] = process.argv.slice(2)

const edit = (path, change) => {
  if (!existsSync(path)) return
  writeFileSync(path, change(readFileSync(path, 'utf8')))
}

// npm: the generator names the package after its own title and leaves no author or repository.
edit('clients/typescript/package.json', (text) => {
  const pkg = JSON.parse(text)
  pkg.name = '@palsa/sdk'
  // A scoped package is private by default, and this one is not.
  pkg.publishConfig = { access: 'public' }
  pkg.description = blurb
  pkg.author = author
  pkg.license = 'MIT'
  pkg.homepage = home
  pkg.repository = { type: 'git', url: repo + '.git', directory: 'clients/typescript' }
  pkg.bugs = { url: repo + '/issues' }
  pkg.keywords = ['palsa', 'sms', 'email', 'push', 'notifications', 'zimbabwe']
  writeFileSync('clients/typescript/package.json', JSON.stringify(pkg, null, 2) + '\n')
  return JSON.stringify(pkg, null, 2) + '\n'
})

// PyPI: the name must be the distribution name, and the licence a table setuptools accepts.
//
// Line by line rather than by regular expression. A pattern for the generated multi-line `authors`
// array ran past the end of the table on an already-patched file, swallowed a section header, and
// left the mypy settings dangling inside [project]. A patch script has to be safe to run twice.
edit('clients/python/pyproject.toml', (text) => {
  const out = []
  let section = ''
  let droppingAuthors = false
  for (const line of text.split('\n')) {
    const header = line.match(/^\[([^\]]+)\]\s*$/)
    if (header) {
      section = header[1]
      droppingAuthors = false
      if (section === 'project.urls') continue // rewritten at the end, exactly once
      out.push(line)
      continue
    }
    if (section === 'project.urls') continue
    if (droppingAuthors) {
      if (/^\]\s*$/.test(line)) droppingAuthors = false
      continue
    }
    if (section === 'project') {
      if (/^name\s*=/.test(line)) { out.push('name = "palsa-api"'); continue }
      if (/^description\s*=/.test(line)) { out.push(`description = "${blurb}"`); continue }
      if (/^license\s*=/.test(line)) { out.push('license = { text = "MIT" }'); continue }
      if (/^authors\s*=/.test(line)) {
        out.push(`authors = [{ name = "${author}" }]`)
        if (!/\]\s*$/.test(line)) droppingAuthors = true
        continue
      }
    }
    out.push(line)
  }
  let result = out.join('\n').replace(/\n{3,}/g, '\n\n').replace(/\n+$/, '\n')
  return result + `\n[project.urls]\nHomepage = "${home}"\nSource = "${repo}"\n`
})

// Packagist reads the repository root, so the name is the GitHub path. The generated description was
// the entire specification summary, which is a page of prose on a package listing.
edit('clients/php/composer.json', (text) => {
  const pkg = JSON.parse(text)
  pkg.name = 'mhodieknowledge/palsa'
  pkg.description = blurb
  pkg.license = 'MIT'
  pkg.homepage = home
  pkg.authors = [{ name: author, homepage: home }]
  return JSON.stringify(pkg, null, 2) + '\n'
})

edit('clients/dart/pubspec.yaml', (text) =>
  text
    .replace(/^name: .*$/m, "name: palsa")
    .replace(/^description: .*$/m, `description: '${blurb}'`)
    .replace(/^homepage: .*$/m, `homepage: ${home}`) +
  (/^repository:/m.test(text) ? '' : `repository: ${repo}\n`),
)
NODE

# Maven Central only accepts a group id whose namespace the publisher has proved they own. The
# generator writes dev.palsa, which nobody has verified. com.kuzikode.palsa is verified with Sonatype
# against kuzikode.com, so that is the namespace these publish under.
#
# Both the generated value and an earlier io.github.mhodieknowledge are matched, so a tree patched
# before this changed lands on the right one too.
maven_group=com.kuzikode.palsa
if [ -d clients/java ] || [ -d clients/kotlin ]; then
  # `|| true`: a grep that matches nothing exits 1, and under `set -o pipefail` that would abort the
  # run and silently skip every patch after this one.
  maven_files=$(grep -rlE 'dev\.palsa|io\.github\.mhodieknowledge' clients/java clients/kotlin 2>/dev/null || true)
  if [ -n "$maven_files" ]; then
    printf '%s\n' "$maven_files" \
      | xargs sed -i -E "s|dev\\.palsa|$maven_group|g; s|io\\.github\\.mhodieknowledge|$maven_group|g"
    echo "patched: maven group id set to the namespace verified with Sonatype"
  fi

  # A package declaration has to match the directory the file is in. Renaming the group in the source
  # text alone left every class under src/main/java/dev/palsa while declaring com.kuzikode.palsa:
  # javac accepts that when handed explicit files, javadoc does not, and it reported "no public or
  # protected classes found to document" rather than naming the cause.
  group_path=$(printf '%s' "$maven_group" | tr '.' '/')
  for lang in java kotlin; do
    root="clients/$lang/src"
    [ -d "$root" ] || continue
    for tree in $(find "$root" -type d -path "*/dev/palsa" 2>/dev/null); do
      base=${tree%/dev/palsa}
      mkdir -p "$base/$group_path"
      cp -r "$tree"/. "$base/$group_path"/
      rm -rf "$base/dev"
      echo "patched: $lang sources moved to $group_path to match their package"
    done
  done
fi

# Maven Central needs more than a built jar, and the generator supplies none of it: the project url and
# the scm block point at the generator's own repository, and there is no distribution target at all, so
# `mvn deploy` has nowhere to deploy to. Central also refuses anything unsigned or without sources and
# javadoc, which the generated pom does cover under its sign-artifacts profile.
node - "$repo" <<'NODE'
const { readFileSync, writeFileSync, existsSync } = require('node:fs')
const [repo] = process.argv.slice(2)
const pom = 'clients/java/pom.xml'
if (existsSync(pom)) {
  let text = readFileSync(pom, 'utf8')
  const scm = repo.replace('https://github.com/', '')
  text = text
    .replace(
      /<url>https:\/\/github\.com\/openapitools\/openapi-generator<\/url>/g,
      `<url>${repo}</url>`,
    )
    .replace(
      /scm:git:git@github\.com:openapitools\/openapi-generator\.git/g,
      `scm:git:git@github.com:${scm}.git`,
    )
  // The Central Portal's own plugin. Added once: a second run would otherwise stack copies of it.
  if (!text.includes('central-publishing-maven-plugin')) {
    text = text.replace(
      '<plugins>',
      `<plugins>
            <plugin>
                <groupId>org.sonatype.central</groupId>
                <artifactId>central-publishing-maven-plugin</artifactId>
                <version>0.12.0</version>
                <extensions>true</extensions>
                <configuration>
                    <publishingServerId>central</publishingServerId>
                    <autoPublish>true</autoPublish>
                    <waitUntil>published</waitUntil>
                </configuration>
            </plugin>`,
      )
    }
  writeFileSync(pom, text)
  console.log('patched: java pom points at this repository and can reach Maven Central')
}
NODE

# The Kotlin client is Gradle-only, with maven-publish applied and nowhere to publish to. Maven Central
# needs signed artefacts with sources, javadoc and the required pom metadata, none of which Gradle adds
# by itself. This writes a publish block that produces all of it into a local staging directory; the
# workflow then signs the directory and uploads it to the Central Portal as a bundle.
if [ -f clients/kotlin/build.gradle ] && ! grep -q 'palsa-publishing' clients/kotlin/build.gradle; then
  cat >>clients/kotlin/build.gradle <<'GRADLE'

// ---------------------------------------------------------------- palsa-publishing
//
// Added by scripts/patch-sdks.sh. The generator applies maven-publish and configures nothing, so
// `gradle publish` had no repository and produced no sources or javadoc jar. Maven Central rejects a
// release missing either, and rejects a pom without a description, a licence, a developer and an scm
// block. Everything below is what Central checks for.
java {
    withSourcesJar()
    withJavadocJar()
}

publishing {
    publications {
        maven(MavenPublication) {
            from components.java
            pom {
                name = 'palsa-api'
                description = 'Official Palsa client for Kotlin, generated from the OpenAPI specification.'
                url = 'https://github.com/mhodieknowledge/palsa-sdks'
                licenses {
                    license {
                        name = 'MIT License'
                        url = 'https://opensource.org/licenses/MIT'
                    }
                }
                developers {
                    developer {
                        name = 'Kuzikode Intelligent Technologies'
                        url = 'https://palsa.mhodieknowledge.workers.dev'
                    }
                }
                scm {
                    url = 'https://github.com/mhodieknowledge/palsa-sdks'
                    connection = 'scm:git:git@github.com:mhodieknowledge/palsa-sdks.git'
                    developerConnection = 'scm:git:git@github.com:mhodieknowledge/palsa-sdks.git'
                }
            }
        }
    }
    repositories {
        // A directory, not a server. The workflow signs what lands here and uploads it as one bundle,
        // which is what the Central Portal takes.
        maven { url = layout.buildDirectory.dir('staging').get().asFile.toURI() }
    }
}
GRADLE
  echo "patched: kotlin can produce a Maven Central bundle"
fi

for file in clients/*/README.md; do
  [ -f "$file" ] || continue
  if ! grep -q 'Licensed under the MIT' "$file"; then
    printf '\n## Licence\n\nMIT. See the repository for the full text.\n' >>"$file"
  fi
done
