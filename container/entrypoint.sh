#!/bin/bash

# Starten des D-Bus-Daemons
mkdir -p /var/run/dbus
dbus-daemon --system

# Starten von VNC und noVNC
vncserver :1 -geometry 1024x768 -depth 24 -rfbauth ~/.vnc/passwd
/opt/novnc/utils/launch.sh --vnc localhost:5901

# Starten der ProtonMail Bridge
protonmail-bridge --cli --no-daemon
