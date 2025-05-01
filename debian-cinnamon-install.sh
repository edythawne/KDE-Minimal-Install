#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Lista de paquetes incluidos en gnome-core excepto gnome-software
PACKAGES=(
    cinnamon
    desktop-base
    slick-greeter
    lightdm
)

# Instalar los paquetes
sudo apt install -y "${PACKAGES[@]}"

sudo systemctl enable gdm
sudo systemctl set-default graphical.target

# Fin del script
echo "Instalación de Budgie Desktop"
