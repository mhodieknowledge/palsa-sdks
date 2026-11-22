#!/usr/bin/env bash
#
# Writes PALSA.md into each generated client: what it is, how it is regenerated, where the hand-written
# parts are, and — the part worth being careful about — whether it has actually been run.
#
# "Written" and "working" are different facts, and the status comes from openapi/generators.json rather
# than from a sentence someone remembered to update. Three of these clients were written with no
# toolchain to run them and said so here; scripts/install-sdk-toolchains.sh closed that, and a target
# added later with no way to test it will print the same warning again.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - <<'PYEOF'
import json

config = json.load(open('openapi/generators.json'))

for target in config['targets']:
    name = target['name']
    out = target['out']
    verified = target['verified']
    how = target['verifiedHow']

    if verified == 'locally':
        status = (
            f'**Built and tested.** {how[0].upper()}{how[1:]}.\n\n'
            'The webhook verification beside it is checked against '
            '`tests/fixtures/webhook-signature.json`, a signature the Palsa server itself produced, so '
            'this client cannot drift from the server without a test failing.'
        )
    else:
        status = (
            f'**Written, and verified only in CI.** {how[0].upper()}{how[1:]}, so it has never been '
            'built on the machine it was written on.\n\n'
            'Its webhook verification follows the same rules as the six that were built locally and is '
            'checked against the same fixture, a signature the Palsa server itself produced, but by '
            '`.github/workflows/sdk-verify.yml` rather than here. Until that workflow has run green on '
            'it, treat this client as written rather than working.'
        )

    open(f'{out}/PALSA.md', 'w').write(f'''# Palsa client for {name}

Published to {target['registry']}.

## Status

{status}

## Do not edit this directory by hand

Everything here is generated from `openapi/palsa.yaml` by `scripts/generate-sdks.sh`, with the generator
version pinned in `openapi/generators.json`. The directory is deleted and rewritten on every run, so a
hand edit survives until the next regeneration and then vanishes.

An API change is a change to the specification followed by a regeneration. `.github/workflows/sdk-regenerate.yml`
fails the build if what is committed here is not what the specification produces.

## What was written by hand, and why

Webhook signature verification, which lives in `sdk-extras/{name}/` and is copied in after generation. No
generator produces it, because it is not an API call, and it is the part of a client most worth getting
right: wrong, it either trusts forged payloads or rejects genuine ones.

Its rules are the same in all nine languages and are stated once in `sdk-extras/README.md`. The ones worth
knowing as a caller: verify against the **raw** body, because parsing and re-serialising changes the bytes;
and a signature older than five minutes is refused, which is what stops an old delivery being replayed at
you later.

## Keys

`pk_live_…` sends real messages and is charged. `pk_test_…` is a sandbox key: a send is accepted, costs
nothing and reaches nobody, which is the one to develop against. Keep a live key on a server.
''')
    print(f'wrote {out}/PALSA.md ({verified})')
PYEOF
