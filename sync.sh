#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "$0")" && pwd)"

echo "Syncing configs from home directory to $REPO ..."

# Kitty
cp "$HOME/.config/kitty/kitty.conf"         "$REPO/kitty/kitty.conf"
cp "$HOME/.config/kitty/catppuccin-mocha.conf" "$REPO/kitty/catppuccin-mocha.conf"

# Neovim
cp "$HOME/.config/nvim/init.lua"            "$REPO/nvim/init.lua"
cp "$HOME/.config/nvim/lazy-lock.json"      "$REPO/nvim/lazy-lock.json"
cp "$HOME/.config/nvim/lazyvim.json"        "$REPO/nvim/lazyvim.json"
cp "$HOME/.config/nvim/stylua.toml"         "$REPO/nvim/stylua.toml"
cp "$HOME/.config/nvim/.neoconf.json"       "$REPO/nvim/.neoconf.json"
cp "$HOME/.config/nvim/.gitignore"          "$REPO/nvim/.gitignore"
cp "$HOME/.config/nvim/LICENSE"             "$REPO/nvim/LICENSE"
cp -R "$HOME/.config/nvim/lua"              "$REPO/nvim/lua"
cp -R "$HOME/.config/nvim/scripts"          "$REPO/nvim/scripts"

# Zsh
cp "$HOME/.zshrc"                           "$REPO/zsh/.zshrc"

echo "Done — all configs synced to repo."
