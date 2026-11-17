# Noctalia Shell

Shell-Einstellungen + eigene Templates/Palette. Zwei Ziele, nicht eins.

## Ziele

| Repo-Pfad | Live-Ziel | Was |
|---|---|---|
| `settings.toml` | `~/.local/state/noctalia/settings.toml` | Echte Shell-Settings (Bar, Dock, Theme, Templates, Wallpaper, Widgets, Plugins). |
| `templates/` `palettes/` `plugins.json` `equibop-discord.toml` | `~/.config/noctalia/` | Eigene User-Templates, Haven-Palette, Plugin-Quellen. |

`settings.toml` liegt bewusst hier im Repo, obwohl Noctalia es unter
`XDG_STATE_HOME` (`~/.local/state/noctalia/`) erwartet — Noctalia trennt
Config (`~/.config/noctalia/`) und State (Settings). Runtime-State
(`notification_history.json`, `screen_time.json`, `usage_counts.json`,
`clipboard/`, `mpvpaper/`, `notification_history_assets/`, `plugin-cache/`)
wird nie versioniert.

## Install

```bash
# 1. Eigene Templates/Palette (Config-Seite)
cp -r Config/noctalia/templates Config/noctalia/palettes Config/noctalia/plugins.json Config/noctalia/equibop-discord.toml ~/.config/noctalia/

# 2. Shell-Settings (State-Seite) — vorher Backup!
cp ~/.local/state/noctalia/settings.toml ~/.local/state/noctalia/settings.toml.bak
cp Config/noctalia/settings.toml ~/.local/state/noctalia/settings.toml
```

Danach Noctalia neu laden (Settings werden live übernommen, notfalls
`noctalia msg templates-apply` für die Templates).

## Hinweise

- Hotspot-Passwort (`[plugin_settings."cleboost/hotspot"]`) bleibt lokal
  und steht hier absichtlich leer. Live nachtragen, nie committen.
- Pfade mit `/home/xealom/` (Avatar, Wallpaper, `power-action`-Commands)
  nach dem Kopieren pro Maschine prüfen.
- `equibop-discord.toml` ist ein Fragment für
  `[theme.templates.user.discord_equibop_flatpak]` — nur nötig für die
  Equibop-Flatpak-Variante. Der `discord`-Eintrag in
  `theme.templates.community_ids` (in `settings.toml`) ist der Upstream-Cache
  unter `$XDG_STATE_HOME/noctalia/community-templates/`, kein Ersatz dafür.
- Check: `diff Config/noctalia/settings.toml ~/.local/state/noctalia/settings.toml`
  (bis auf `password` leer) und `diff -r Config/noctalia/templates ~/.config/noctalia/templates`.
