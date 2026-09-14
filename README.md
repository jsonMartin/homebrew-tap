# jsonmartin/tap

Homebrew tap for [Superherdr](https://github.com/jsonmartin/superherdr), a terminal workspace manager built on [Herdr](https://github.com/herdrdev/herdr) with focus, snooze, and top-level agents.

## Status

The Superherdr 0.1.0 release is staged as a draft. The formula in this tap is **not installable yet** — installing before publication will fail to download.

## Install

After the release is published, add this tap and install the formula. Homebrew versions with `brew trust` require the first command before loading a new third-party formula:

```sh
brew trust --formula jsonmartin/tap/superherdr
brew tap jsonmartin/tap
brew install jsonmartin/tap/superherdr
```

If your Homebrew version does not have `brew trust`, omit that first command.

Run it as `superherdr` or `herdr` — both names invoke the same binary.

## Conflict with Herdr

Superherdr and the original Herdr formula both provide a `herdr` command, so Homebrew refuses to link both at once. Run `brew unlink herdr` before installing Superherdr; this preserves your original installation so it can be relinked later.

`herdr-og` is a personal, existing snapshot of Herdr. It is **not** provided by this public tap.

## Requirements

- Apple Silicon (arm64) Macs only
- Deployment target macOS 13 (Ventura); tested on macOS 27. macOS 13 runtime behavior is **not** verified.
- No Linux, Intel, or Windows builds are provided
