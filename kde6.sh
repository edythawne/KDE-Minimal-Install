#!/bin/env bash

echo "Installing the needed packages."
dnf install \
  @"base-x" \
  @"Common NetworkManager Submodules" \
  @"Fonts" \
  @"Hardware Support" \
ark \
bluedevil \
breeze-gtk \
breeze-icon-theme \
colord-kde \
dolphin \
glibc-all-langpacks \
gnome-keyring-pam \
intel-media-driver \
libva-utils libvdpau-va-gl \
kde-gtk-config \
kde-partitionmanager \
kde-style-breeze \
kdegraphics-thumbnailers \
kdeplasma-addons \
kdialog \
kdnssd \
kf5-baloo-file \
kf5-kipi-plugins \
kf5-kwayland \
khotkeys \
kmenuedit \
konsole \
kscreen \
kscreenlocker \
ksshaskpass \
kinfocenter \
kwin-wayland kwrite \
libinput \
libwayland-* \
mesa-dri-drivers mesa-va-drivers \
NetworkManager-config-connectivity-fedora \
pam-kwallet \
phonon-qt5-backend-gstreamer \
pinentry-qt \
plasma-breeze \
plasma-desktop \
plasma-desktop-doc \
plasma-nm \
plasma-pa \
plasma-systemmonitor \
plasma-workspace-wallpapers \
plasma-workspace-wayland \
polkit-kde \
qt5-qtbase-gui \
qt5-qtdeclarative \
qt6-qtwayland \
sddm-breeze \
sddm-kcm \
sddm-wayland-plasma \
sni-qt \
vulkan \
wayland-utils \
xorg-x11-server-Xwayland \
xwaylandvideobridge
iwlwifi-mvm-firmware


# enable SDDM
echo "Enabling the graphical login."
sudo systemctl enable --now sddm && \
sudo systemctl set-default graphical.target
