
xrdb --merge ~/.Xresources

pulseaudio --start


xmonad &

# wait for xmonad
wait $!
pkill -HUP dzen2
pkill -HUP -f xmonad-clock
wait
