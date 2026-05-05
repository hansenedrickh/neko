<p align="center">
  <img src="neko.png" alt="neko" width="600" />
</p>

<h1 align="center">neko</h1>

<p align="center">
  Personal dotfiles for <strong>Kitty</strong>, <strong>Neovim</strong> (LazyVim), and <strong>Zsh</strong>
</p>

---

| Config | Description |
|---|---|
| [kitty/](kitty/) | Kitty terminal — Catppuccin Mocha theme, IDE-style split keybindings, macOS blur |
| [nvim/](nvim/) | Neovim (LazyVim) — Catppuccin Mocha transparent, multi-language LSP, custom dashboard |
| [zsh/](zsh/) | Zsh (Oh My Zsh) — Starship prompt, Catppuccin syntax highlighting, dev toolchains |

## Getting Started

1. Install [Maple Mono Nerd Font](https://github.com/subframe7536/maple-font/releases) — see [kitty/README.md](kitty/README.md#font) for instructions
2. Clone this repo and symlink the configs to your home directory
3. Open Kitty and Neovim — plugins will auto-install

## Structure

```
neko/
├── neko.png
├── README.md
├── kitty/
│   ├── README.md
│   ├── kitty.conf
│   └── catppuccin-mocha.conf
├── nvim/
│   ├── README.md
│   ├── init.lua
│   ├── lazy-lock.json
│   ├── lazyvim.json
│   ├── stylua.toml
│   ├── .neoconf.json
│   ├── .gitignore
│   ├── LICENSE
│   ├── lua/
│   └── scripts/
└── zsh/
    ├── README.md
    └── .zshrc
```
