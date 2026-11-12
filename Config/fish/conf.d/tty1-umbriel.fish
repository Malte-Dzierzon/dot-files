# tty1-Autologin: direkt in Umbriel booten, ohne Login-Manager (greetd ist deaktiviert).
# Greift nur auf tty1 und nur wenn noch keine grafische Session laeuft.
if status is-login; and test (tty) = /dev/tty1; and test -z "$WAYLAND_DISPLAY$DISPLAY"
    exec /home/xealom/.local/bin/start-umbriel
end
