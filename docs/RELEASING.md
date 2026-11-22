# Releasing

`.github/workflows/publish.yml`, run by hand, one client at a time, with the version typed in and the
word `publish` typed to confirm. Publishing cannot be undone: a version number cannot be reused.

## Where 0.1.0 went

| Client | Registry | State |
| --- | --- | --- |
| Python | PyPI, `palsa-api` | Published |
| C# | NuGet, `Palsa.Api` | Published |
| Java | Maven Central, `com.kuzikode.palsa:palsa-api` | Published |
| Kotlin | Maven Central, `com.kuzikode.palsa:palsa-api-kotlin` | Uploaded, waiting on Central |
| Go | `github.com/mhodieknowledge/palsa-sdks/clients/go` | Tagged `clients/go/v0.1.0` |
| PHP | Packagist, `mhodieknowledge/palsa` | Mirrored and tagged, needs submitting once |
| Swift | `mhodieknowledge/palsa-swift` | Mirrored and tagged `v0.1.0` |
| TypeScript | npm, `@palsa/sdk` | Blocked on the token |
| Dart | pub.dev, `palsa` | Blocked on the first upload |

## The three that need a person, once

**npm.** The token authenticates and the package builds, but npm refuses it: *Two-factor
authentication or granular access token with bypass 2fa enabled is required to publish packages.*
Create a **granular access token** at npmjs.com with read and write on the `@palsa` scope, and replace
`NPM_TOKEN` with it. A classic automation token is not enough on an account with 2FA.

**pub.dev.** *Only users are allowed to upload new packages.* A package that has never existed must be
published by a signed-in person; automation can only publish later versions. Run it once from a machine
that is logged in:

```
cd clients/dart && dart pub publish
```

Then add a publisher on pub.dev pointing at this repository and the workflow takes over.

**Packagist.** It watches a repository rather than receiving an upload, and a package that has never
been submitted has to be added once at [packagist.org/packages/submit](https://packagist.org/packages/submit)
with the URL `https://github.com/mhodieknowledge/palsa-php`. After that the workflow's update call is
enough, and the tag is already there.

## Rotate the credentials

Every token in the repository secrets was shared through a chat upload before it got there. Rotate all
of them once the first release of each client is out: npm, PyPI, Packagist, the Sonatype password, the
NuGet key, and the GPG signing key.
