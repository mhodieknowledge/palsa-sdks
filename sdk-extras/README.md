# Hand-written parts of the clients

`scripts/generate-sdks.sh` deletes each `clients/<name>/` before generating it, so anything written by hand
lives here and is copied in after generation. Edit these files, never their copies under `clients/`.

What is here is the webhook signature verifier for each language, and its test against the signature the
Palsa server produced (`tests/fixtures/webhook-signature.json`). No generator produces one, because it is
not an API call, and it is the part of a client most worth getting right.

| Directory | Copied to |
| --- | --- |
| `typescript/`, `typescript-test/` | `src/` (and exported from `src/index.ts`), `test/` |
| `python/`, `python-test/` | `palsa_api/` (and exported from `palsa_api/__init__.py`), `test/` |
| `go/` | the module root |
| `php/` | `lib/` |
| `java/`, `java-test/`, `kotlin/`, `kotlin-test/` | the `dev/palsa/api` source trees, which `patch-sdks.sh` then moves to `com/kuzikode/palsa/api` |
| `csharp/`, `csharp-test/` | `src/Palsa.Api/`, `src/Palsa.Api.Test/` |
| `swift/`, `swift-test/` | `Sources/PalsaApi/`, `Tests/PalsaApiTests/` |
| `dart/`, `dart-test/` | `lib/`, `test/` |
