# Releasing

`.github/workflows/publish.yml`, run by hand, one client at a time, with the version typed in and the
word `publish` typed to confirm. Publishing cannot be undone: a version number cannot be reused.

Before anything is sent, the run checks that every client's declared repository and homepage point
here, because a wrong url passes every build and every test and is then wrong on the listing page for
the life of the package. That check is `scripts/audit-metadata.sh`, and it also runs on every push.

## Where the clients are

0.2.0 is the current release, published on 27 November 2026 by `publish.yml` for all nine. It adds
the five sending-domain operations (seventeen in all) and gives the TypeScript and Python clients the
webhook verifier the other seven already had. 0.1.1 was the same code as 0.1.0, released to validate
trusted publishing.

| Client | Registry and name | 0.2.0 |
| --- | --- | --- |
| TypeScript | npm, `@palsa/sdk` | Published, with provenance |
| Python | PyPI, `palsa-api` | Published |
| C# | NuGet, `Palsa.Api` | Published |
| Java | Maven Central, `com.kuzikode.palsa:palsa-api` | Published |
| Kotlin | Maven Central, `com.kuzikode.palsa:palsa-api-kotlin` | Published |
| Go | `github.com/mhodieknowledge/palsa-sdks/clients/go` | Tagged `clients/go/v0.2.0` |
| Swift | `github.com/mhodieknowledge/palsa-swift` | Tagged `v0.2.0` |
| PHP | Packagist, `mhodieknowledge/palsa` | Published |
| Dart | pub.dev, `palsa_api` | Published from the tag `dart-v0.2.0` |

The stale `dart-v0.1.1` tag described in earlier notes no longer matters: 0.2.0 was tagged with
`SDK_MIRROR_TOKEN` and `dart-publish.yml` started from it and uploaded.

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
