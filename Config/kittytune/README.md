# KittyTune (SoundCloud-Player)

## Dateien hier

- `kittytune` — Starter-Wrapper, fixt einen Java/XWayland-Bug: Ohne
  `_JAVA_AWT_WM_NONREPARENTING=1` ignoriert die App Resizes des Tiling-Compositors
  und die Oberfläche friert auf 1440×900 ein (schwarze Fläche, weiße Kante).
- `kittytune.desktop` — Desktop-File, zeigt auf den Wrapper (braucht
  `~/.local/bin` im PATH).

## Installieren (pro Rechner)

```bash
cp Config/kittytune/kittytune ~/.local/bin/kittytune
chmod +x ~/.local/bin/kittytune
cp Config/kittytune/kittytune.desktop ~/.local/share/applications/kittytune.desktop
update-desktop-database ~/.local/share/applications
```

App-Paket selbst (RPM von den
[Releases](https://github.com/alan7383/KittyTuneDesktop/releases)) sowie
Login/Cache (`~/.config/KittyTune/`, `~/.cache/KittyTuneCache/`) bleiben lokal
und werden nicht versioniert.
