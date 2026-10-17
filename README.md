<div align="center">

# dotfiles

**openSUSE Tumbleweed · Umbriel + Noctalia · Wayland**

![](https://img.shields.io/github/last-commit/Malte-Dzierzon/dotfile-opensuse?style=flat-square&color=16242d&labelColor=070e15)
![](https://img.shields.io/badge/openSUSE-Tumbleweed-732031?style=flat-square&logo=opensuse&logoColor=ffffff&labelColor=070e15)
![](https://img.shields.io/badge/Wayland-Umbriel%20compositor-16a3da?style=flat-square&logo=wayland&logoColor=ffffff&labelColor=070e15)
![](https://img.shields.io/badge/Noctalia-shell-0e0e43?style=flat-square&logoColor=ffffff&labelColor=070e15)
[![](https://img.shields.io/badge/ghostty-1.3.1-3b4250?style=flat-square&labelColor=070e15)](https://github.com/ghostty-org/ghostty)
[![](https://img.shields.io/badge/fish-4.8-89a4be?style=flat-square&logo=fish&logoColor=ffffff&labelColor=070e15)](https://fishshell.com)
[![](https://img.shields.io/badge/zed-1.24-0e0e43?style=flat-square&labelColor=070e15)](https://zed.dev)

</div>

<div align="center">

<img src="assets/screenshots/desktop.png" alt="Desktop screenshot" width="1200">

</div>

## Desktop stack

| Layer | Software |
|---|---|
| Distro | openSUSE Tumbleweed |
| Compositor | [Umbriel](https://github.com/noctalia-dev/umbriel) (Wayland) |
| Shell | [Noctalia](https://github.com/noctalia-dev/noctalia) + Greeter |
| Terminal | ghostty (primary), foot (fallback) |
| Shell prompt | fish + [Starship](https://starship.rs) |
| Editor | Zed, Neovim (LazyVim) |
| Browser | Zen |
| Files | Nautilus |
| App launcher | Walker |
| Fonts | JetBrains Mono Nerd Font, Maple Mono |

## Configuration

Configs live directly under `.config/`, mirroring their real locations in `~/`.
Browse the structure or clone and copy selectively.

<details>
<summary><b>Desktop</b></summary>

- `.config/umbriel/` — compositor config, keybindings, display settings, autostart, shaders
- `.config/noctalia/` — shell, themes, plugins, templates
- `.config/walker/` — app launcher configuration
- `.config/gtk-3.0/` & `gtk-4.0/` — GTK settings and themes
- `.config/qt5ct/` & `qt6ct/` — Qt color schemes
- `.config/mpd/` & `rmpc/` — music daemon and TUI
- `.config/kew/` — terminal music player
- `.config/swaylock/` — screen locker

</details>

<details>
<summary><b>Shell</b></summary>

- `.config/fish/` — config and shell functions
- `.config/starship.toml` — prompt configuration
- `.config/ghostty/` — terminal config, shaders, theme
- `.config/foot/` — fallback terminal config
- `.config/kitty/` & `alacritty/` — additional terminals
- `.config/atuin/` — shell history
- `.config/tmux/` — terminal multiplexer
- `.config/btop/` — system monitor
- `.config/cava/` — audio visualizer
- `.config/fastfetch/` — system info

</details>

<details>
<summary><b>Development</b></summary>

- `.config/nvim/` — Neovim with LazyVim
- `.config/zed/` — Zed editor
- `.config/yazi/` — file manager

</details>

<details>
<summary><b>AI agents</b></summary>

- `.config/omp/` — OpenCode plugin manager
- `.config/opencode/` — OpenCode configuration
- `.local/share/pi/agent/` — Pi coding agent

</details>

<details>
<summary><b>Gaming & creative</b></summary>

- `.config/OpenTabletDriver/` — tablet driver settings
- `.local/share/PrismLauncher/` — Prism Minecraft launcher
- `.config/blender/` — 3D viewport preferences
- `.config/inkscape/` — vector editor preferences
- `.config/godot/` — editor settings
- `.config/krita/` — digital painting settings

</details>

<details>
<summary><b>Local scripts</b></summary>

- `.local/bin/default-app` — role-based application launcher (terminal, editor, browser, etc.)
- `.local/bin/clipboard-sync` — mirrors PRIMARY selection to CLIPBOARD

</details>

## Wallpapers

<div align="center">

<a href="assets/wallpapers/01-summer-cloud.png"><img src="assets/wallpapers/thumbnails/01-summer-cloud.webp" width="220" alt="01-summer-cloud"></a>
<a href="assets/wallpapers/02-whale-abyss.jpg"><img src="assets/wallpapers/thumbnails/02-whale-abyss.webp" width="220" alt="02-whale-abyss"></a>
<a href="assets/wallpapers/05-bedroom-anime.png"><img src="assets/wallpapers/thumbnails/05-bedroom-anime.webp" width="220" alt="05-bedroom-anime"></a>
<a href="assets/wallpapers/07-stardust-peaks.png"><img src="assets/wallpapers/thumbnails/07-stardust-peaks.jpg" width="220" alt="07-stardust-peaks"></a>
<a href="assets/wallpapers/11-storm-mage.png"><img src="assets/wallpapers/thumbnails/11-storm-mage.webp" width="220" alt="11-storm-mage"></a>
<a href="assets/wallpapers/13-amber-gaze.png"><img src="assets/wallpapers/thumbnails/13-amber-gaze.webp" width="220" alt="13-amber-gaze"></a>

</div>

View all wallpapers in [`assets/wallpapers/`](assets/wallpapers/).

---

No installation scripts. These are plain configuration files synced to match a live openSUSE Tumbleweed setup.
