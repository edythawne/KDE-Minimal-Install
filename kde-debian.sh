#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Lista de paquetes
PACKAGES=(
    # Apps
    ark
    unzip
    dolphin
    gwenview
    okular
    qml-module-org-kde-newstuff
    systemsettings

    # Services
    upower
    bluedevil
    powerdevil
    polkit-kde-agent-1

    # DE
    khotkeys
    kscreen
    kdialog
    kwalletmanager
    kwin-x11
    kwin-wayland
    kinfocenter
    kde-spectacle
    kdegraphics-thumbnailers
    kmenuedit
    konsole
    desktop-base
    plasma-nm
    plasma-pa
    plasma-browser-integration
    plasma-runners-addons
    plasma-wallpaper
    plasma-wallpapers-addons
    plasma-widgets-addons
    plasma-desktop
    plasma-workspace
    plasma-systemmonitor
    plasma-workspace-wallpapers
    sddm
    xorg
    libpam-kwallet5

    # Theming
    breeze
    breeze-gtk-theme
    kde-config-gtk-style
    kde-config-gtk-style-preview
    sddm-theme-breeze

    # Libs and Plugins
    qtvirtualkeyboard-plugin
    xdg-desktop-portal-kde
    vulkan-tools
    mesa-utils
    clinfo

    # Ark tooling
    xorg
    pipewire
)

# Instalar los paquetes
sudo apt install -y -q --no-install-recommends "${PACKAGES[@]}"
sudo apt install -y firefox-esr

# Fin del script
echo "Instalación de KDE"
