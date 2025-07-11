# Dotfiles

> Personal configuration files for a minimal, keyboard-driven Linux setup based around i3, Neovim, Kitty, Rofi, and SDDM.  
> Built and maintained on **Fedora Linux**.

## 📁 Repository Structure

```
.
├── i3/             # i3 window manager configuration and scripts
│   ├── config
│   ├── config.d/   # Modular i3 configuration
│   ├── i3status.conf
│   ├── scripts/    # Helper scripts for audio, display, power, etc.
│   └── themes/     # i3-related theme assets
├── kitty/          # Kitty terminal emulator configuration
├── nvim/           # Neovim Lua-based configuration
├── rofi/           # Rofi application launcher theming
├── sddm/           # SDDM login manager theme and config
├── zsh/            # Zsh shell configuration, including .zshrc
└── README.md
```

## 🧠 Highlights

### 🪟 i3
- Modular configs in `i3/config.d/` for:
  - Autostart, keybindings, workspace behavior, bar, themes, and screen layout.
- Helper scripts in `i3/scripts/` for:
  - Audio control (`mute_toggle`, `volume_up`, `volume_down`)
  - Display profiles (`home_setup`, `portable_setup`)
  - Power menu and utilities
- Theme support via wallpapers and bar settings.

### 🔧 Neovim (`nvim/`)
- Fully Lua-configured setup with:
  - Plugin management
  - LSP integration
  - Tree-sitter, Telescope, Lualine, Toggleterm, Markdown Preview, and more
- Config structured in `core/` and `plugin_config/`.

### 🖥️ Kitty (`kitty/`)
- Configurable theme and layout in `kitty.conf`
- Theme files separated under `themes/`.

### 🎨 Rofi (`rofi/`)
- Custom Rofi theme via `config.rasi` for consistent appearance with i3.

### 🔐 SDDM (`sddm/`)
- Custom theme using QML and SVG assets
- Modern look and feel with customized login panel and wallpaper.

### 💻 Zsh (`zsh/`)
- `.zshrc` configuration for a powerful and customizable shell environment
- Aliases, prompt settings, plugin integration (e.g., zsh-autosuggestions, syntax highlighting)
- Environment variables and PATH management

## 🚀 Getting Started

### Symlinking (recommended)

Use GNU Stow or your preferred method to symlink these dotfiles into your home directory:

```bash
stow i3 kitty nvim rofi sddm
```

### Dependencies (Fedora)

Make sure the following packages are installed:

```bash
sudo dnf install i3 i3status rofi kitty neovim stow sddm
```

> Enable SDDM if you're using it as your display manager:
```bash
sudo systemctl enable sddm.service --force
```

## 📌 Notes

- Built and tested on **Fedora Linux**, but configs should be portable with minimal tweaks.
- These dotfiles are tailored to **my workflow**, but feel free to fork, tweak, and use them as inspiration.

## 📜 License

MIT — feel free to use, modify, or share with attribution.
