# Setup — manual install

Fresh openSUSE Tumbleweed PC or laptop (no server), by hand. For an AI agent, see [AGENT.md](AGENT.md).

## Contents

1. [Prerequisites](#prerequisites)
2. [Clone](#clone)
3. [Install apps](#install-apps)
4. [Apply configs](#apply-configs)
5. [Per-machine steps](#per-machine-steps)
6. [Keybinds](#keybinds)
7. [First boot](#first-boot)
8. [Verify](#verify)

## Quick links

[Clone](#clone) | [Apps](#install-apps) | [Configs](#apply-configs) | [Per-machine](#per-machine-steps) | [Keybinds](#keybinds) | [Boot](#first-boot) | [Verify](#verify)

## Prerequisites

- openSUSE Tumbleweed on a PC or laptop, Wayland, one user account.
- No display manager — login happens via tty1 autologin (see [First boot](#first-boot)).
- App sources live in the root README: [Desktop stack](../README.md#desktop-stack) and [App-Liste](../README.md#configuration).

## Clone

```bash
git clone https://github.com/Malte-Dzierzon/dotfile-opensuse.git dotfiles
cd dotfiles
```

## Install apps

Install from the [App-Liste](../README.md#configuration), per app:

| Source | Use for |
|---|---|
| `zypper` | distro packages (fish, starship, ghostty, nautilus, …) |
| Flatpak | desktop apps where applicable |
| Upstream repo | Umbriel, Noctalia, Walker — built to `~/.local/bin` |

For Umbriel/Noctalia rebuilds, the repo already documents the build path in `Config/fish/conf.d/xealom-commands.fish` (`rebuild-umbriel`, `rebuild-noctalia`). Upstream docs: [Umbriel](https://github.com/noctalia-dev/umbriel), [Noctalia](https://github.com/noctalia-dev/noctalia).

## Apply configs

`Config/` is sorted by app — it is not a 1:1 mirror of `~/.config/`. Install the app first, run it once, then place each file where that app expects it. Most land in `~/.config/<app>`, the rest don't:

```bash
cp -r Config/fish ~/.config/fish
cp -r Config/umbriel ~/.config/umbriel
cp -r Config/noctalia ~/.config/noctalia
```

| Repo path | Target | Why different |
|---|---|---|
| `Config/starship/starship.toml` | `~/.config/starship.toml` | file directly, not a folder |
| `Config/pi/*` | `~/.pi/` + `~/.pi/agent/` | pi keeps config under home, not `~/.config` |
| `Config/mimeapps.list` | `~/.config/mimeapps.list` | file directly, not a folder |
| `Config/default-app/default-app` | `~/.local/bin/default-app` (+ `chmod +x`) | executable, not a config |
| `Config/default-app/roles.toml` | `~/.config/default-app/roles.toml` | or point `$DEFAULT_APP_CONF` at it |
| `Config/kittytune/kittytune` | `~/.local/bin/kittytune` (+ `chmod +x`) | see [kittytune notes](../Config/kittytune/README.md) |
| `Config/kittytune/kittytune.desktop` | `~/.local/share/applications/` | then `update-desktop-database` |
| Ghostty theme + shaders | `~/.config/ghostty/` | see [ghostty notes](../Config/ghostty/README.md) |

Flatpak / reverse-DNS apps (readest, mangayomi, prismlauncher, artcraft-launcher, equibop): install first, check where the app writes its config (`~/.config/<reverse-dns>/`, `~/.local/share/…`, `~/Documents/…`), then copy only the matching files. Never guess — a wrong path is silently ignored.

## Per-machine steps

- `Config/umbriel/monitors.toml` — enable only the block matching this machine. Find names with `umbriel msg outputs`.
- `Config/ghostty/README.md` — shader path, fonts, Noctalia template, `ghostty +validate-config`.
- `Config/default-app/roles.toml` — check the six roles (`terminal editor browser file pdf notes`); change with `default-app --set <role> <binary>`. Still required: `bindings.toml` and `scratchpad.toml` call `default-app <role>`, never a hardcoded binary.
- `Config/mimeapps.list` → `~/.config/mimeapps.list` — file/URL associations (zen, zed, nautilus, zathura). Separate from `roles.toml` on purpose: roles drive keybinds, mimeapps drives `xdg-open`.
- Secrets stay local, never commit: `gh` (`hosts.yml`), `opencode` (`service.json`), logo PNGs, login/cache dirs.
- Music daemon is a user service, not in autostart: `systemctl --user enable --now mpd` (rmpc needs it on `127.0.0.1:6600`).

## Keybinds

Learn them on the machine, not from memory: `Mod+F1` opens the cheatsheet, full list lives in `Config/umbriel/bindings.toml`. App keys go through `default-app <role>`, so a role change applies everywhere at once.

## First boot

No greeter, no GDM. `Config/fish/conf.d/tty1-umbriel.fish` execs `~/.local/bin/start-umbriel` on tty1 when no graphical session runs. Log in on tty1 and Umbriel starts; Noctalia and Walker autostart via `Config/umbriel/autostart.toml`.

## Verify

```bash
umbriel --check
ghostty +validate-config
default-app --list
```

Then open Umbriel, Walker, and one terminal + browser round-trip.

## See also

- [AGENT.md](AGENT.md) — agent install path
- [Ghostty notes](../Config/ghostty/README.md)
- [KittyTune notes](../Config/kittytune/README.md)
- [Root README](../README.md)
