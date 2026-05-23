# homebrew-eijii

Homebrew tap for [eijii](https://acyclic.eu/eijii) - AI agent session manager.

## Install

```bash
brew tap acyclic-eu/eijii

# GUI app (macOS)
brew install --cask eijii          # beta channel
brew install --cask eijii-alpha    # alpha channel

# TUI + daemon (CLI)
brew install acyclic-eu/eijii/eijii-tui
```

## Channels

| Cask/Formula | Channel | Notes |
|---|---|---|
| `eijii` | beta | latest named version |
| `eijii-alpha` | alpha | latest build, no SHA check |
| `eijii-tui` | beta | TUI binary + daemon jar |
