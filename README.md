# sq Homebrew Tap (Retired)

This tap (`neilotoole/sq`) is retired. `sq` is now a [homebrew-core](https://formulae.brew.sh/formula/sq) formula:

```shell
brew install sq
```

## Existing users

If you installed `sq` from this tap (`brew install neilotoole/sq/sq`), you don't need to do
anything. This tap's [`tap_migrations.json`](tap_migrations.json) points `sq` at
`homebrew/core`, so your next `brew update` switches the install to the core formula, and
`brew upgrade` takes it from there.

Once that's done, you can remove the tap:

```shell
brew untap neilotoole/sq
```

## Intel Macs

Homebrew no longer builds bottles for Intel Macs, so on an Intel Mac, `brew install sq` builds
from source. To skip the build, download the `macos-amd64` binary from
[GitHub releases](https://github.com/neilotoole/sq/releases).

See [neilotoole/sq#1285](https://github.com/neilotoole/sq/issues/1285) for background.
