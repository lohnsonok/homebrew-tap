# lohnsonok/homebrew-tap

Unofficial Homebrew Tap for MuMood and future apps.

## Install

```bash
brew tap lohnsonok/tap
brew install --cask mumood
```

To upgrade:
```bash
brew upgrade --cask mumood
```

To uninstall:
```bash
brew uninstall --cask mumood
```

## Livecheck
This tap uses a Sparkle appcast for `mumood`, with arch-specific feeds.

## Development
Run the following in the tap root (this repository):

```bash
# Style
brew style --fix Casks

# Audit (strict, online) for the cask file path
brew audit --cask --online --strict Casks/m/mumood.rb

# Livecheck (uses Sparkle appcast)
brew livecheck --cask Casks/m/mumood.rb
```

## Contributing
- Open a PR. CI will run style, audit and livecheck on macOS.
- Ensure stanzas follow Homebrew style: no blank lines within groups, one blank line between groups.
- Prefer `livecheck` with Sparkle when upstream is private.

## CI
This tap includes a minimal GitHub Actions workflow to run:
- brew style
- brew audit (strict, online) on the cask file path
- brew livecheck

Workflow is triggered on pushes and pull requests that modify files under `Casks/` or workflow files.
