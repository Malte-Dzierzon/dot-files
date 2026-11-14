# KittyTune

SoundCloud player. The wrapper fixes two Linux integration bugs; the app itself stays local.

## Files here

| File | What |
|---|---|
| `kittytune` | Launcher wrapper → `/opt/kitty-tune/bin/KittyTune`. Sets `_JAVA_AWT_WM_NONREPARENTING=1` (Java/XWayland resize freeze) and runs in its own systemd scope so Resources / Mission Center list it as an app. |
| `kittytune.desktop` | Desktop entry pointing at the wrapper. Needs `~/.local/bin` on `PATH`. |

## Install

```bash
cp Config/kittytune/kittytune ~/.local/bin/kittytune
chmod +x ~/.local/bin/kittytune
cp Config/kittytune/kittytune.desktop ~/.local/share/applications/kittytune.desktop
update-desktop-database ~/.local/share/applications
```

Not versioned, stays local: the app package (RPM from [releases](https://github.com/alan7383/KittyTuneDesktop/releases)), login and cache (`~/.config/KittyTune/`, `~/.cache/KittyTuneCache/`).
