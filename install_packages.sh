#!/bin/bash

packages=(alsa-utils xmonad xmonad-contrib xmobar stalonetray gnome-terminal git openssh xorg-luit xorg-server xorg-server-common xorg-server-xwayland xorg-setxkbmap xorg-xauth xorg-xbacklight xorg-xhost xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xrandr xorg-xrdb xorg-xset xorg-xsetroot)

for package in ${packages[*]}:
do
    sudo pacman -S --noconfirm $package
done
    
