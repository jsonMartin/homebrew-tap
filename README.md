# jsonmartin/tap

Homebrew tap for [Superherdr](https://github.com/jsonmartin/superherdr), a drop-in replacement for [Herdr](https://github.com/herdrdev/herdr) that adds focus, snooze, and top-level agents.

## Status

Superherdr [0.9.1.2](https://github.com/jsonmartin/superherdr/releases/tag/superherdr-v0.9.1.2) is published and installable from this tap.

## Install

Add this tap and install the formula. Homebrew versions with `brew trust` require the first command before loading a new third-party formula:

```sh
brew trust --formula jsonmartin/tap/superherdr
brew tap jsonmartin/tap
brew install jsonmartin/tap/superherdr
```

If your Homebrew version does not have `brew trust`, omit that first command.

Run it as `herdr`. It uses Herdr's configuration, plugins, and sessions, and `herdr --version` prints `herdr 0.9.1 (superherdr 0.9.1.2)`.

## Conflict with Herdr

Superherdr and the original Herdr formula both provide a `herdr` command, so Homebrew refuses to link both at once. Run `brew unlink herdr` before installing Superherdr; this preserves your original installation so it can be relinked later.

## Requirements

- Apple Silicon (arm64) Macs only
- Deployment target macOS 13 (Ventura); tested on macOS 27. macOS 13 runtime behavior is **not** verified.
- This tap provides only the macOS Apple Silicon package; Linux x86_64 uses the [release shell installer](https://github.com/jsonmartin/superherdr#linux-x86_64-shell-installer). No Intel or Windows builds are provided
