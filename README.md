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

<a href="assets/screenshots/desktop.png"><img src="assets/screenshots/thumbnails/desktop.webp" alt="Desktop screenshot" width="1200"></a>

<a href="assets/screenshots/desktop-gui.png"><img src="assets/screenshots/thumbnails/desktop-gui.webp" alt="Desktop GUI screenshot" width="1200"></a>

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

Application configs live in `Config/`, mirroring `~/.config/`.
Browse the structure or clone and copy selectively.

<details>
<summary><b>Desktop</b></summary>

- `umbriel/` — compositor config, keybindings, display settings, autostart, shaders
- `noctalia/` — shell, themes, plugins, templates
- `walker/` — app launcher configuration
- `gtk-3.0/` & `gtk-4.0/` — GTK settings and themes
- `qt5ct/` & `qt6ct/` — Qt color schemes
- `swaylock/` — screen locker
- `default-app/` — role dispatcher (`roles.toml` + `default-app` script: script → `~/.local/bin/`, roles → `~/.config/default-app/`)

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
- `zed/` —  IDE
- `yazi/` — file manager
- `opencode/` — OpenCode agent harness
- `omp/` — Oh my Pi agent harness
- `pi/` — Pi coding agent harness

</details>

<details>
<summary><b>Wallpapers</b></summary>

<div align="center">

<a href="assets/wallpapers/01-summer-cloud.png"><img src="assets/wallpapers/thumbnails/01-summer-cloud.webp" width="220" alt="01-summer-cloud"></a>
<a href="assets/wallpapers/02-whale-abyss.jpg"><img src="assets/wallpapers/thumbnails/02-whale-abyss.webp" width="220" alt="02-whale-abyss"></a>
<a href="assets/wallpapers/04-mountain-mirror.jpg"><img src="assets/wallpapers/thumbnails/04-mountain-mirror.webp" width="220" alt="04-mountain-mirror"></a>
<a href="assets/wallpapers/05-bedroom-anime.png"><img src="assets/wallpapers/thumbnails/05-bedroom-anime.webp" width="220" alt="05-bedroom-anime"></a>
<a href="assets/wallpapers/06-cave-light.jpg"><img src="assets/wallpapers/thumbnails/06-cave-light.webp" width="220" alt="06-cave-light"></a>
<a href="assets/wallpapers/07-stardust-peaks.png"><img src="assets/wallpapers/thumbnails/07-stardust-peaks.jpg" width="220" alt="07-stardust-peaks"></a>
<a href="assets/wallpapers/08-rain-study.jpg"><img src="assets/wallpapers/thumbnails/08-rain-study.webp" width="220" alt="08-rain-study"></a>
<a href="assets/wallpapers/09-sunflower-girl.jpg"><img src="assets/wallpapers/thumbnails/09-sunflower-girl.webp" width="220" alt="09-sunflower-girl"></a>
<a href="assets/wallpapers/10-neon-haven.jpg"><img src="assets/wallpapers/thumbnails/10-neon-haven.webp" width="220" alt="10-neon-haven"></a>
<a href="assets/wallpapers/11-storm-mage.png"><img src="assets/wallpapers/thumbnails/11-storm-mage.webp" width="220" alt="11-storm-mage"></a>
<a href="assets/wallpapers/12-sky-leviathans.jpg"><img src="assets/wallpapers/thumbnails/12-sky-leviathans.webp" width="220" alt="12-sky-leviathans"></a>
<a href="assets/wallpapers/13-amber-gaze.png"><img src="assets/wallpapers/thumbnails/13-amber-gaze.webp" width="220" alt="13-amber-gaze"></a>
<a href="assets/wallpapers/14-tavern-treat.jpg"><img src="assets/wallpapers/thumbnails/14-tavern-treat.webp" width="220" alt="14-tavern-treat"></a>
<a href="assets/wallpapers/15-meadow-path.jpg"><img src="assets/wallpapers/thumbnails/15-meadow-path.webp" width="220" alt="15-meadow-path"></a>
<a href="assets/wallpapers/16-frosthold.jpg"><img src="assets/wallpapers/thumbnails/16-frosthold.webp" width="220" alt="16-frosthold"></a>

</div>

View all wallpapers in [`assets/wallpapers/`](assets/wallpapers/).

</details>

<br>


