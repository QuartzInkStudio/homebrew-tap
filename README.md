# Quartz Homebrew Tap

Official Homebrew Casks for Quartz Mac apps.

## Install

```bash
brew tap QuartzInkStudio/tap
brew install --cask tuck-menu-bar
brew install --cask facet
brew install --cask peekmark
```

You can also install a Cask without keeping the Tap:

```bash
brew install --cask QuartzInkStudio/tap/tuck-menu-bar
brew install --cask QuartzInkStudio/tap/facet
brew install --cask QuartzInkStudio/tap/peekmark
```

## Apps

| Cask | App | Website |
| --- | --- | --- |
| `tuck-menu-bar` | Tuck | [usetuck.com](https://usetuck.com/) |
| `facet` | Facet | [facetlauncher.com](https://facetlauncher.com/) |
| `peekmark` | PeekMark | [peekmark.quartz.ink](https://peekmark.quartz.ink/) |

The Casks install signed and Apple-notarized DMGs from each app's official download channel.

The `tuck-menu-bar` Cask is synchronized automatically from Tuck's Stable Sparkle appcast. Compatibility Preview releases use a separate appcast and are never published through the default Homebrew Cask.
