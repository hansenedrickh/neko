# Zsh Config

Zsh configuration powered by [Oh My Zsh](https://ohmyz.sh/) with a focus on developer workflows.

## Features

- **Prompt**: [Starship](https://starship.rs/) — fast, customizable, informative
- **Syntax Highlighting**: [Catppuccin Mocha](https://github.com/catppuccin/zsh-syntax-highlighting) theme
- **Autosuggestions**: Fish-like autocomplete based on history
- **Directory Jump**: `z` / `zsh-z` — fuzzy directory navigation
- **Aliases**: `ls` → `eza`, `cat` → `bat`, `ll` → detailed listing

## Custom Functions

| Function | Description |
|---|---|
| `neko` | Jump to directory (`z`) then open Neovim (`nvim .`) |
| `cursor` | Alias for the Cursor CLI (`agent`) |
| `nvm` / `node` / `npm` | Lazy-loaded NVM (loads on first use) |

## Plugins

| Plugin | Purpose |
|---|---|
| [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) | Git aliases and helpers |
| [zsh-z](https://github.com/agkozak/zsh-z) | Fuzzy directory jumping |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | History-based autocomplete |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Real-time command highlighting |
| [Starship](https://github.com/starship/starship) | Prompt |

## Toolchain Paths

- **Go**: Installed via Homebrew — `GOROOT=/opt/homebrew/opt/go/libexec`, `GOPATH=$HOME/go`
- **Python 3.13**: Homebrew-installed, added to `$PATH`
- **Node**: NVM (lazy-loaded), installed via Homebrew
- **JetBrains Toolbox**: Added to `$PATH`

## Dependencies

- [Oh My Zsh](https://ohmyz.sh/) — `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- [Starship](https://starship.rs/) — `brew install starship`
- [eza](https://github.com/eza-community/eza) — `brew install eza`
- [bat](https://github.com/sharkdp/bat) — `brew install bat`
- [zsh-z](https://github.com/agkozak/zsh-z) — `brew install zsh-z`
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) — `brew install zsh-autosuggestions`
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) — `brew install zsh-syntax-highlighting`
- [Catppuccin zsh-syntax-highlighting theme](https://github.com/catppuccin/zsh-syntax-highlighting) — download the `.zsh` file to `~/.oh-my-zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh`
