#!/bin/bash

packages=(alsa-utils xmonad xmonad-contrib xmobar stalonetray gnome-terminal xorg xorg-xsetroot git openssh)

for package in ${packages[*]}:
do
    sudo pacman -S --noconfirm $package
done
    
