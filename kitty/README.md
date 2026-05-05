# Kitty Config

[Kitty](https://sw.kovidgoyal.net/kitty/) terminal configuration with a dark, polished aesthetic.

## Features

- **Theme**: [Catppuccin Mocha](https://github.com/catppuccin/kitty) — warm pastel colors on a pitch-black background
- **Transparency**: 85% opacity with 20px background blur (macOS only)
- **Performance**: Low input/repaint delay, no vsync
- **Layouts**: Splits (horizontal/vertical) and stack layouts

## Font

This config uses **Maple Mono Nerd Font** at 13pt.

### Install Maple Mono NF

**Option A — Homebrew:**
```bash
brew install --cask font-maple-mono-nerd-font
```

**Option B — Manual download:**
1. Download the latest release from [Maple Font releases](https://github.com/subframe7536/maple-font/releases)
2. Look for `MapleMono-NF-<version>.zip`
3. Unzip and double-click each `.ttf` file → Font Book will open and install
4. Alternatively, drag the `.ttf` files to `~/Library/Fonts/`

If you prefer a different Nerd Font, change `font_family` in `kitty.conf`.

## Keybindings

### Window Splits (IDE-style)

| Key | Action |
|---|---|
| `Cmd+D` | Split vertically (right) |
| `Cmd+Shift+D` | Split horizontally (bottom) |
| `Cmd+W` | Close window |

### Navigation

| Key | Action |
|---|---|
| `Cmd+Left` / `Cmd+Right` / `Cmd+Up` / `Cmd+Down` | Move focus to neighboring window |

### Tabs

| Key | Action |
|---|---|
| `Cmd+1`–`Cmd+9` | Jump to tab 1–9 |
| `Cmd+Shift+T` | Interactive tab selector |

### Clipboard

| Key | Action |
|---|---|
| `Cmd+C` | Copy to clipboard |
| `Cmd+V` | Paste from clipboard |

## Dependencies

- [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator
- [Maple Mono Nerd Font](https://github.com/subframe7536/maple-font/releases) (or any Nerd Font)
