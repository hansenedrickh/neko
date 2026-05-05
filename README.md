# 🐱 Neko Dotfiles

This repository manages the dotfiles and configurations for **Kitty**, **Zsh**, and **Neovim**. By keeping these files under source control, you can easily sync your environment across multiple machines, track changes, and easily roll back if something breaks.

## 🗂️ Structure

The repository is structured to be used seamlessly with [GNU Stow](https://www.gnu.org/software/stow/), a symlink farm manager.

```
.
├── kitty/
│   └── .config/
│       └── kitty/
│           └── kitty.conf
├── nvim/
│   └── .config/
│       └── nvim/
│           └── init.lua
├── zsh/
│   └── .zshrc
└── README.md
```

## 🚀 Getting Started

### 1. Requirements

Ensure you have the target software installed on your machine, along with Git and GNU Stow.

```bash
# macOS
brew install stow git kitty zsh neovim

# Ubuntu / Debian
sudo apt install stow git kitty zsh neovim
```

### 2. Moving Your Existing Configs

If you already have existing configurations, you need to move them into this repository first. *Note: if you don't have them yet, you can create new files directly in this repository.*

**Kitty:**
```bash
# Move existing
mv ~/.config/kitty/kitty.conf kitty/.config/kitty/
```

**Zsh:**
```bash
# Move existing
mv ~/.zshrc zsh/
```

**Neovim:**
```bash
# Move existing
mv ~/.config/nvim/init.lua nvim/.config/nvim/
```

### 3. Deploying with Stow

Stow will automatically create symbolic links from your home directory to the files in this repository. Ensure you are in the root of this dotfiles directory when running these commands.

```bash
# Stow all configurations
stow kitty
stow zsh
stow nvim
```

> **Note:** Stow uses the current directory's parent (in this case `~`, assuming you clone this to `~/neko` or similar) as the target directory. If it complains about existing files, you may need to delete or back up the original files in your home directory before running `stow`.

### 4. Tracking Changes

Whenever you modify your configurations in `~/.config/kitty`, `~/.zshrc`, or `~/.config/nvim`, you're actually editing the symlinked files in this repository.

To save your changes:

```bash
git add .
git commit -m "Update configurations"
git push
```

## 🧑‍💻 Contributing / Setup on a New Machine

1. Clone this repository to your home directory:
   ```bash
   git clone <repository_url> ~/neko
   ```
2. Enter the directory:
   ```bash
   cd ~/neko
   ```
3. Run stow for your desired modules:
   ```bash
   stow kitty zsh nvim
   ```
4. Restart your terminal or source your shell config to apply changes!
