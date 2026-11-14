# tty1 autologin: boot straight into Umbriel, no display manager.
# Only applies on tty1 and only when no graphical session is running.
if status is-login; and test (tty) = /dev/tty1; and test -z "$WAYLAND_DISPLAY$DISPLAY"
    exec /home/xealom/.local/bin/start-umbriel
end
