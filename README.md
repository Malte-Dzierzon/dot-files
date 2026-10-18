<div align="center">

# dotfiles

**openSUSE Tumbleweed · Umbriel + Noctalia · Wayland**

![](https://img.shields.io/github/last-commit/Malte-Dzierzon/dotfile-opensuse?style=flat-square&color=16242d&labelColor=070e15)
![](https://img.shields.io/badge/openSUSE-Tumbleweed-732031?style=flat-square&logo=opensuse&logoColor=ffffff&labelColor=070e15)
![](https://img.shields.io/badge/Wayland-Umbriel%20compositor-16a3da?style=flat-square&logo=wayland&logoColor=ffffff&labelColor=070e15)
![](https://img.shields.io/badge/Noctalia-shell-0e0e43?style=flat-square&logoColor=ffffff&labelColor=070e15)
[![](https://img.shields.io/badge/ghostty-1.3.1-3b4250?style=flat-square&labelColor=070e15)](https://github.com/ghostty-org/ghostty)

</div>

<div align="center">

<img src="assets/screenshots/desktop.png" alt="Desktop screenshot" width="1200">
<img src="assets/screenshots/desktop-gui.png" alt="Desktop-gui screenshot" width="1200">
</div>

## Desktop stack

| Layer | Software |
|---|---|
| Distro | openSUSE Tumbleweed |
| Compositor | [Umbriel](https://github.com/noctalia-dev/umbriel) (Wayland) |
| Shell | [Noctalia](https://github.com/noctalia-dev/noctalia) + Greeter |
| Terminal | ghostty |
| Shell prompt | fish + [Starship](https://starship.rs) |
| Editor | Zed, Neovim (LazyVim) |
| Browser | Zen |
| File manager | Nautilus, Yazi |
| Fonts | JetBrains Mono Nerd Font, Maple Mono |

## Configuration

Application configs sit directly in the repository root, mirroring `~/.config/`.
Browse the structure or clone and copy selectively.

<details>
<summary><b>Desktop</b></summary>

- `umbriel/` — compositor config, keybindings, display settings, autostart, shaders
- `noctalia/` — shell, themes, plugins, templates
- `walker/` — app launcher configuration
- `gtk-3.0/` & `gtk-4.0/` — GTK settings and themes
- `qt5ct/` & `qt6ct/` — Qt color schemes
- `swaylock/` — screen locker

</details>

<details>
<summary><b>Shell</b></summary>

- `fish/` — config and shell functions
- `starship/` — prompt configuration
- `ghostty/` — terminal config, shaders, theme
- `atuin/` — shell history
- `tmux/` — terminal multiplexer

</details>

<details>
<summary><b>Development</b></summary>

- `nvim/` — Neovim with LazyVim
- `zed/` — Zed editor
- `yazi/` — file manager
- `opencode/` — OpenCode configuration
- `omp/` — OpenCode plugin manager
- `pi/` — Pi coding agent
</details>

## Wallpapers

<div align="center">

<a href="assets/wallpapers/01-summer-cloud.png"><img src="assets/wallpapers/thumbnails/01-summer-cloud.webp" width="220" alt="01-summer-cloud"></a>
<a href="assets/wallpapers/02-whale-abyss.jpg"><img src="assets/wallpapers/thumbnails/02-whale-abyss.webp" width="220" alt="02-whale-abyss"></a>
<a href="assets/wallpapers/08-rain-study.jpg"><img src="assets/wallpapers/thumbnails/08-rain-study.webp" width="220" alt="08-rain-study"></a>
<a href="assets/wallpapers/04-mountain-mirror.jpg"><img src="assets/wallpapers/thumbnails/04-mountain-mirror.webp" width="220" alt="04-mountain-mirror"></a>
<a href="assets/wallpapers/10-neon-haven.jpg"><img src="assets/wallpapers/thumbnails/10-neon-haven.webp" width="220" alt="10-neon-haven"></a>
<a href="assets/wallpapers/16-frosthold.jpg"><img src="assets/wallpapers/thumbnails/16-frosthold.webp" width="220" alt="16-frosthold"></a>

</div>

View all wallpapers in [`assets/wallpapers/`](assets/wallpapers/).


<br>
    
<img src="assets/screenshots/SuseLogo.png" alt="openSUSE-Logo" width="1200">
