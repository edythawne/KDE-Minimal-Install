#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

# Instalacion de SSDM
dnf install sddm sddm-breeze sddm-kcm

# Habilitar SDDM
sudo systemctl enable sddm
sudo systemctl set-default graphical.target

# Install KDE Packages
dnf install \
  @"base-x" \
  @"Common NetworkManager Submodules" \
  @"Fonts" \
  @"Hardware Support" \
  bluedevil \
  breeze-gtk \
  breeze-icon-theme \
  cagibi \
  colord-kde \
  cups-pk-helper \
  dolphin \
  glibc-all-langpacks \
  gnome-keyring-pam \
  kcm_systemd \
  kde-gtk-config \
  kde-print-manager \
  kde-settings-pulseaudio \
  kde-style-breeze \
  kdegraphics-thumbnailers \
  kdeplasma-addons \
  kdialog \
  kdnssd \
  kf5-akonadi-server \
  kf5-akonadi-server-mysql \
  kf5-baloo-file \
  kf5-kipi-plugins \
  khotkeys \
  kmenuedit \
  konsole5 \
  kscreen \
  kscreenlocker \
  ksshaskpass \
  kwalletmanager5 \
  kwebkitpart \
  kwin \
  NetworkManager-config-connectivity-fedora \
  pam-kwallet \
  phonon-qt5-backend-gstreamer \
  pinentry-qt \
  plasma-systemmonitor \
  plasma-breeze \
  plasma-desktop \
  plasma-desktop-doc \
  plasma-drkonqi \
  plasma-nm \
  plasma-pa \
  plasma-user-manager \
  plasma-workspace \
  polkit-kde \
  qt5-qtbase-gui \
  qt5-qtdeclarative \
  setroubleshoot \
  sni-qt \
  xorg-x11-drv-libinput \
  firefox \
  firefox-langpacks
