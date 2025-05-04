#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Lista de paquetes incluidos en gnome-core excepto gnome-software
PACKAGES=(
    adwaita-icon-theme
    eog
    evince
    fonts-cantarell
    gdm3
    gkbd-capplet
    glib-networking
    gnome-backgrounds
    gnome-bluetooth-sendto
    gnome-characters
    gnome-control-center
    gnome-keyring
    gnome-logs
    gnome-menus
    gnome-session
    gnome-settings-daemon
    gnome-shell
    gnome-shell-extensions
    gnome-system-monitor
    gnome-terminal
    gnome-console
    gnome-text-editor
    gnome-themes-extra
    gnome-user-share
    gsettings-desktop-schemas
    gstreamer1.0-plugins-base
    gstreamer1.0-plugins-good
    gvfs-backends
    gvfs-fuse
    libglib2.0-bin
    libpam-gnome-keyring
    libproxy1-plugin-gsettings
    libproxy1-plugin-webkit
    librsvg2-common
    nautilus
    pipewire-audio
    sound-theme-freedesktop
    totem
    xdg-desktop-portal-gnome
    gnome-browser-connector
    desktop-base
)

# Instalar los paquetes
sudo apt install -y "${PACKAGES[@]}"

sudo systemctl enable gdm
sudo systemctl set-default graphical.target

# Fin del script
echo "Instalación de GNOME core completa sin gnome-software."
