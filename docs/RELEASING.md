# Releasing

`.github/workflows/publish.yml`, run by hand, one client at a time, with the version typed in and the
word `publish` typed to confirm. Publishing cannot be undone: a version number cannot be reused.

Before anything is sent, the run checks that every client's declared repository and homepage point
here, because a wrong url passes every build and every test and is then wrong on the listing page for
the life of the package. That check is `scripts/audit-metadata.sh`, and it also runs on every push.

## Where the clients are

0.1.1 is the current release. 0.1.0 was the first, and 0.1.1 is the same code: it exists because
validating npm and PyPI trusted publishing needs a real publication, and a version number cannot be
reused.

| Client | Registry and name | 0.1.1 |
| --- | --- | --- |
| TypeScript | npm, `@palsa/sdk` | Published, with provenance |
| Python | PyPI, `palsa-api` | Published |
| C# | NuGet, `Palsa.Api` | Published |
| Java | Maven Central, `com.kuzikode.palsa:palsa-api` | Published |
| Kotlin | Maven Central, `com.kuzikode.palsa:palsa-api-kotlin` | Published |
| Go | `github.com/mhodieknowledge/palsa-sdks/clients/go` | Tagged `clients/go/v0.1.1` |
| Swift | `github.com/mhodieknowledge/palsa-swift` | Tagged `v0.1.1` |
| PHP | Packagist, `mhodieknowledge/palsa` | Mirrored and tagged; Packagist still shows 0.1.0 |
| Dart | pub.dev, `palsa_api` | Still 0.1.0, see below |

### Dart is held up by one tag

`dart-v0.1.1` exists but points at a commit from before `dart-publish.yml` could be started by hand,
and it never started on its own: GitHub refuses to begin a workflow from a tag pushed with a run's own
`GITHUB_TOKEN`, by design, so a workflow cannot trigger itself forever. The tag landed, nothing ran,
and from the outside that looks exactly like a broken trigger.

The fix is already in the workflow, which pushes the tag with `SDK_MIRROR_TOKEN` when it is set. The
stale tag has to go first, and moving or deleting a tag is not something to do automatically:

```
git push origin --delete dart-v0.1.1
```

Then run `publish.yml` with target `dart` and version `0.1.1`. If `SDK_MIRROR_TOKEN` does not have
write access to this repository, give it that, or create the tag yourself at the current `main`:

```
git tag -a dart-v0.1.1 -m 'Dart client v0.1.1' && git push origin dart-v0.1.1
```

Either way `dart-publish.yml` analyses, tests and uploads with the run's own OIDC identity.

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
