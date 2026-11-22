# Releasing

`.github/workflows/publish.yml`, run by hand, one client at a time, with the version typed in and the
word `publish` typed to confirm. Publishing cannot be undone: a version number cannot be reused.

Before anything is sent, the run checks that every client's declared repository and homepage point
here, because a wrong url passes every build and every test and is then wrong on the listing page for
the life of the package. That check is `scripts/audit-metadata.sh`, and it also runs on every push.

## Where 0.1.0 is

| Client | Registry and name | State |
| --- | --- | --- |
| TypeScript | npm, `@palsa/sdk` | **Published** |
| Python | PyPI, `palsa-api` | **Published** |
| C# | NuGet, `Palsa.Api` | **Published** |
| Java | Maven Central, `com.kuzikode.palsa:palsa-api` | **Published** |
| Kotlin | Maven Central, `com.kuzikode.palsa:palsa-api-kotlin` | **Published** |
| PHP | Packagist, `mhodieknowledge/palsa` | **Published** |
| Go | `github.com/mhodieknowledge/palsa-sdks/clients/go` | **Tagged** `clients/go/v0.1.0` |
| Swift | `github.com/mhodieknowledge/palsa-swift` | **Tagged** `v0.1.0` |
| Dart | pub.dev, `palsa_api` | **Blocked**: first upload must be a person |

Go and Swift have no registry to publish to. A tag is how those two are released, and both are tagged,
so `go get` and Swift Package Manager can resolve them today.

## Dart, the one that needs a person once

pub.dev refuses a first upload from automation: *only users are allowed to upload new packages.* This
is deliberate on their part and there is no way around it, nor should there be. Once the package
exists, attach a publisher and the workflow takes every later version.

From a machine with the Dart SDK and a browser:

```
git clone https://github.com/mhodieknowledge/palsa-sdks
cd palsa-sdks/clients/dart

dart pub get
dart analyze --fatal-warnings      # expect: No issues found!
dart test                          # expect: 178 tests passed
dart pub publish --dry-run         # expect: Package has 0 warnings

dart pub publish
```

The last command opens a browser to sign in to pub.dev, then asks you to type `y`. After it succeeds:

1. On pub.dev, open the `palsa_api` package, then Admin, then Automated publishing.
2. Enable publishing from GitHub Actions with repository `mhodieknowledge/palsa-sdks` and the tag
   pattern `dart-v{{version}}`.
3. Later releases then run through `publish.yml` with no secret at all, because that route uses OIDC.

## Long-lived credentials, and what can replace them

| Registry | Today | Can it use OIDC |
| --- | --- | --- |
| pub.dev | none; the job already runs with `id-token: write` | Yes, once a publisher is attached |
| PyPI | `PYPI_API_TOKEN` | Yes. Add a trusted publisher for this repository and workflow on the project's Publishing page, then delete the secret and the `password:` line |
| npm | `NPM_TOKEN`, granular | Yes, with npm's trusted publishing. Configure it on the package and drop the token |
| NuGet | `NUGET_API_KEY` | Not yet generally available |
| Maven Central | `MAVEN_CENTRAL_*` and the GPG key | No. Sonatype has no OIDC route, and Central requires a signature |
| Packagist | `PACKAGIST_API_TOKEN` | No, but it is only a hint to re-read; the GitHub service hook does the same thing |
| Go, Swift | none | Nothing to authenticate: a tag is the release |

Every token currently in the repository secrets was shared through a chat upload before it got there.
Rotate all of them, and prefer the OIDC route above wherever the table says it exists.

## Keeping the clients current

`sync-spec.yml` fetches `openapi/palsa.yaml` from mhodieknowledge/palsa, regenerates, re-runs the
metadata audit and commits if anything changed.

It needs `SPEC_READ_TOKEN`: that repository is private, and a workflow's own token cannot read another
repository. A fine-grained personal access token scoped to it with Contents: Read is enough.

It refuses a specification that describes fewer operations than the committed one. That is not
hypothetical: `main` is sixty commits behind the branch the work is on and carries a specification
four kilobytes smaller, so an unguarded run would have rebuilt all nine clients from a stale document
and committed it over the correct output.
