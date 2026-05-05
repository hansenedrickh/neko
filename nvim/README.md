# Neovim Config

Built on [LazyVim](https://github.com/LazyVim/LazyVim) — a modern Neovim configuration with lazy-loading, built-in LSP, and a rich plugin ecosystem.

## Features

- **Theme**: Catppuccin Mocha with transparent background and pitch-black base overrides
- **Dashboard**: Snacks.nvim with custom cat ASCII art + rainbow color cycling + git branch + cwd
- **File Explorer**: Neo-tree (left sidebar, 40 wide, dotfiles visible)
- **LSP**: Auto-installs language servers via Mason — Go, Python, TypeScript/JS, Vue, PHP, Docker, SQL, Clojure, YAML, Markdown
- **Completion**: blink.cmp with snippets
- **Git**: Gitsigns (inline blame), lazygit integration
- **Terminal**: Auto-enters insert mode; smooth window navigation (`Ctrl+hjkl`)

## Font

Requires a [Nerd Font](https://www.nerdfonts.com/) for icons. See [kitty/README.md](../kitty/README.md#font) for Maple Mono NF install instructions.

## Plugin Highlights

| Plugin | Purpose |
|---|---|
| [LazyVim](https://github.com/LazyVim/LazyVim) | Framework with pre-configured modules |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Dashboard, picker, and more |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File tree explorer |
| [catppuccin](https://github.com/catppuccin/nvim) | Theme |
| [cursoragent.nvim](https://github.com/aug6th/cursoragent.nvim) | AI coding agent |
| [auto-save.nvim](https://github.com/pocco81/auto-save.nvim) | Auto-save on change |
| [smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) | Smooth cursor animation |
| [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) | Smooth scrolling |
| [http-client.nvim](https://github.com/askfiy/http-client.nvim) | REST client inside Neovim |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Live markdown preview in browser |

## Custom Keymaps

| Mode | Key | Action |
|---|---|---|
| Normal | `<leader>cp` | Copy absolute file path to clipboard |
| Normal | `<leader>jq` | Format JSON with `jq` |
| Normal | `<leader>jm` | Minify JSON with `jq -c` |
| Normal | `<leader>a` | Open Cursor Agent |
| Normal | `<leader>mp` | Toggle Markdown Preview |
| Normal | `<leader>rr` | Send HTTP request |
| Normal | `<leader>gtb` | Toggle Git inline blame |
| Terminal | `Esc Esc` | Exit terminal mode |
| All | `Ctrl+h` / `Ctrl+l` | Go to left/right window |
| All | `Ctrl+j` / `Ctrl+k` | Go to lower/upper window |

## Language Support (LazyVim Extras)

- Go
- Python
- TypeScript / JavaScript / Vue
- PHP
- Docker (docker-compose)
- SQL
- Clojure
- JSON / YAML
- Markdown
- Tailwind CSS

## Dependencies

- [Neovim](https://neovim.io/) ≥ 0.9
- [Nerd Font](https://www.nerdfonts.com/) for UI icons
- [git](https://git-scm.com/) for plugin management
- [jq](https://jqlang.github.io/jq/) for JSON formatting (`<leader>jq`)
- [lazygit](https://github.com/jesseduffield/lazygit) (optional, for LazyVim git integration)

## Bootstrap

On first launch, LazyVim will:

1. Clone `lazy.nvim` automatically
2. Install all plugins listed in `lazy-lock.json`
3. Prompt to install LSP servers via `:Mason`

No manual setup required — just open `nvim`.
