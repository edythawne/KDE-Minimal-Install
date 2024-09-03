#!/bin/bash

pulseaudio --version
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio

sudo apt install wireplumber 
systemctl --user --now enable wireplumber.service

sudo apt install bluez  libspa-0.2-bluetooth
sudo apt install bluez  libspa-0.2-bluetooth pipewire-pulse pipewire-audio-client-libraries
systemctl --user restart pipewire pipewire-pulse wireplumber
