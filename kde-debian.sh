#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Lista de paquetes
PACKAGES=(
  # Apps
  ark
  dolphin
  gwenview
  kde-spectacle
  kmenuedit
  konsole
  okular
  qml-module-org-kde-newstuff
  systemsettings

  # Services
  bluedevil
  khotkeys
  kscreen
  kwalletmanager
  plasma-nm
  plasma-pa
  powerdevil
  polkit-kde-agent-1
  upower

  # DE
  kwin-x11
  kwin-wayland
  plasma-desktop
  plasma-workspace
  sddm
  xorg

  # Theming
  breeze-gtk-theme
  kde-config-gtk-style
  kde-config-gtk-style-previwe
  sddm-theme-breeze

  # Libs and Plugins
  libqtspell-qt5-0
  qtvirtualkeyboard-plugin
  plasma-browser-integration
  plasma-runners-addons
  plasma-wallpapers-addons
  plasma-widgets-addons

  # Ark tooling
  unzip
)

# Instalar los paquetes
sudo apt install -y -q --no-install-recommends "${PACKAGES[@]}"

sudo apt install -y firefox-esr

#sudo systemctl enable gdm
#sudo systemctl set-default graphical.target

# Fin del script
echo "Instalación de KDE"
