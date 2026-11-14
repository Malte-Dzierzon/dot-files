# Setup — agent install

Instructions for an AI agent setting up a fresh openSUSE Tumbleweed PC or laptop (no server) from this repo. Human path: [README.md](README.md).

## Contents

1. [Scope](#scope)
2. [Audit first](#audit-first)
3. [Safety rules](#safety-rules)
4. [Restore order](#restore-order)
5. [Config mapping](#config-mapping)
6. [Login method](#login-method)
7. [Verify](#verify)

## Scope

- Target: openSUSE Tumbleweed on a PC or laptop (no server), Wayland, single user. Stack: Umbriel + Noctalia, fish + Starship, ghostty.
- App truth: root README [Desktop stack](../README.md#desktop-stack) and [App-Liste](../README.md#configuration). No other app list overrides it.
- This repo is a config archive, not an OS installer. No new package manager, no auto-installer.

## Audit first

Before changing anything:

1. Read the root [README.md](../README.md), this folder, and `Config/ghostty/README.md` + `Config/kittytune/README.md`.
2. Inspect the live machine per app — config and runtime live in different places: `~/.config/<app>`, `~/.pi/`, `~/.config/omp` (config) vs `~/.omp/` (runtime), `~/.local/bin`, `~/.local/state/noctalia/`, `umbriel msg outputs`.
3. Trace claims to implementation. Never invent flags, defaults, keys, paths, or package names. If an app's config path is unknown, install it, run it once, and observe where it writes before copying anything.

## Safety rules

- Back up per app before replacing anything. Never bulk-overwrite `~/.config`, `~/`, or a live system — most apps mix config and runtime in the same parent directory.
- Ask before: installing packages, enabling services, writing udev rules, login changes, overwriting any user file, anything touching auth/credentials.
- Secrets stay local and are never reconstructed into git: `gh hosts.yml`, `opencode service.json`, logo PNGs, login/cache dirs (`KittyTune`, `mpd` state).
- Hardware-bound values are re-checked, never copied blindly: monitor names/modes (`Config/umbriel/monitors.toml`), username/home paths, locale (`de-DE`).

## Restore order

Base + AMD/Vulkan + PipeWire → Umbriel + Noctalia → desktop/gtk/qt/mime → shell/dev → agents → tablet/udev + headset → gaming/creative.

Install per app via its documented source: native `zypper`, Flatpak, or official upstream installer. Fast-moving tools (opencode, omp, pi) only via their official install path, never distro packages. Umbriel/Noctalia/Walker land in `~/.local/bin` (see `rebuild-*` in `Config/fish/conf.d/xealom-commands.fish`).

## Config mapping

`Config/` is sorted by app, not a mirror of `~/.config/`. Install the app first, run it once, then place each file where that app expects it. Never assume `Config/<name>` → `~/.config/<name>`.

Verified exceptions (don't guess these):

| Repo path | Target |
|---|---|
| `Config/starship/starship.toml` | `~/.config/starship.toml` (file, not folder) |
| `Config/pi/*` | `~/.pi/` + `~/.pi/agent/` (pi lives under home) |
| `Config/mimeapps.list` | `~/.config/mimeapps.list` (file, not folder) |
| `Config/default-app/default-app` | `~/.local/bin/default-app` (+ `chmod +x`) |
| `Config/default-app/roles.toml` | `~/.config/default-app/roles.toml` (or `$DEFAULT_APP_CONF`) |
| `Config/kittytune/kittytune` | `~/.local/bin/kittytune` (+ `chmod +x`) |
| `Config/kittytune/kittytune.desktop` | `~/.local/share/applications/kittytune.desktop` |

Unverified per machine: Flatpak / reverse-DNS apps (readest, mangayomi, prismlauncher, artcraft-launcher, equibop). Resolve the live path after install (`~/.config/<reverse-dns>/`, `~/.local/share/…`, `~/Documents/…`) and copy only matching files. Runtime state (`~/.omp/`, `~/.pi/agent/sessions`, `KittyTune` login/cache, `mpd` state, `service.json`, `hosts.yml`) is never copied from the repo.

Details live exactly once: ghostty fonts/shaders in `Config/ghostty/README.md`, kittytune wrapper + desktop file in `Config/kittytune/README.md`, roles in `Config/default-app/roles.toml`. Link there, don't duplicate.

`default-app` is still required, not a NixOS leftover: `bindings.toml` (~12 keys), `scratchpad.toml`, and `env.toml` (`DEFAULT_APP_CONF`) all call `default-app <role>`. Removing it means hardcoding ghostty/zen/nautilus into every keybind.

## Login method

No greeter, no GDM, no greetd. Login is tty1 autologin: `Config/fish/conf.d/tty1-umbriel.fish` execs `~/.local/bin/start-umbriel` on tty1 when no graphical session runs. Do not install, enable, or configure any login manager.

## Verify

After each config change, run the matching check and report only verified results:

```bash
umbriel --check
ghostty +validate-config
default-app --list
nvim --headless +q
```

Also confirm: `monitors.toml` matches `umbriel msg outputs`, Noctalia template `ghostty` is applied (`noctalia msg templates-apply`), and `roles.toml` agrees with `mimeapps.list` (zen/zed/nautilus/zathura).

## See also

- [Manual install](README.md)
- [Root README](../README.md)
