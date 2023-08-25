#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

# Instalacion de SSDM
dnf install gdm

sudo dnf install fedora-workstation-repositories -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-"$(rpm -E %fedora)".noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-"$(rpm -E %fedora)".noarch.rpm -y

# Habilitar SDDM
sudo systemctl enable gdm
sudo systemctl set-default graphical.target

# Install KDE Packages
dnf install \
  @"base-x" \
  @"Common NetworkManager Submodules" \
  @"Fonts" \
  @"Hardware Support" \
  gnome-keyring-pam \
  NetworkManager-config-connectivity-fedora \
  xorg-x11-drv-libinput \
  firefox \
  firefox-langpacks \
  gnome-shell \
  gnome-terminal \
  nautilus \
  gnome-software \
  gnome-disk-utility \
  gnome-text-editor \
  gnome-tweaks \
  xdg-user-dirs \
  xdg-user-dirs-gtk \
  gnome-tweaks \
  gnome-system-monitor \
  gnome-text-editor \
  eog \
  file-roller \
  gnome-session-xsession \
  NetworkManager-wifi \
  xdg-utils \
  xdg-desktop-portal-gnome \
  gvfs* \
  git \
  bash-completion \
  wget \
  unzip
