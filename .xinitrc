xrdb ~/.Xresources
redshift &

xinput set-prop "SynPS/2 Synaptics TouchPad" 284 {0 1 0}
xinput set-prop "SynPS/2 Synaptics TouchPad" 281 1
feh --bg-scale ~/Pictures/wallpaper.*
exec i3
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
