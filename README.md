# Palsa client libraries

Nine clients for the [Palsa](https://palsa.mhodieknowledge.workers.dev) API, every one generated from
the same OpenAPI document the server is tested against.

Nothing here is written by hand except the parts a generator cannot produce: the webhook signature
verifier each client ships, and the patches in `scripts/patch-sdks.sh` that work around defects in
OpenAPI Generator itself. When the API changes, the clients are regenerated rather than edited, so none
of them can fall behind the others.

| Client | Install | Registry name |
| --- | --- | --- |
| [JavaScript and TypeScript](clients/typescript) | `npm i @palsa/sdk` | npm |
| [Python](clients/python) | `pip install palsa` | PyPI |
| [PHP](clients/php) | `composer require mhodieknowledge/palsa` | Packagist |
| [Dart and Flutter](clients/dart) | `dart pub add palsa` | pub.dev |
| [Java](clients/java) | `io.github.mhodieknowledge:palsa-api` | Maven Central |
| [Kotlin](clients/kotlin) | `io.github.mhodieknowledge:palsa-api` | Maven Central |
| [C#](clients/csharp) | `dotnet add package Palsa.Api` | NuGet |
| [Go](clients/go) | `go get github.com/mhodieknowledge/palsa-sdks/clients/go` | the module path |
| [Swift](clients/swift) | Swift Package Manager | a package repository |

Each client's own README has its usage. The API reference is at
[palsa.mhodieknowledge.workers.dev/docs](https://palsa.mhodieknowledge.workers.dev/docs).

## How this repository is built

```
openapi/palsa.yaml          the specification, copied from the Palsa repository
scripts/generate-sdks.sh    runs OpenAPI Generator over it
scripts/patch-sdks.sh       repairs generator defects and sets package metadata
scripts/test-sdks.sh        builds and tests every client it has a toolchain for
clients/<language>/         the committed output
```

The specification lives in [mhodieknowledge/palsa](https://github.com/mhodieknowledge/palsa) beside the
server it describes. `.github/workflows/sync-spec.yml` copies it here and regenerates when it changes,
so a change to the API reaches all nine clients at once without anybody remembering to do it.

## Releasing

`.github/workflows/publish.yml`, run by hand, one client at a time, with the version typed in and the
word `publish` typed to confirm. Publishing cannot be undone: a version number cannot be reused and a
package that has been fetched once is out there.

Two clients cannot be published from this repository, through no fault of the layout. Packagist reads
`composer.json` only at a repository root and has no notion of a subdirectory, and a Swift package must
sit at a root too. Both are published by copying the directory to the root of a repository of its own
and tagging that, which `scripts/publish-mirror.sh` does, and which needs those two repositories to
exist first.

## Licence

MIT. The clients carry the same.
