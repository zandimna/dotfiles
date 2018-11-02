xrdb ~/.Xresources
redshift &
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Scroll Method Enabled" {0 1 0}
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1

export PATH="$PATH:/home/zandimna/.gem/ruby/2.5.0/bin:/home/zandimna/.bin"
export QT_QPA_PLATFORMTHEME=kvantum
export GTK2_RC_FILES=/home/zandimna/.gtkrc-2.0
feh --bg-scale ~/Pictures/wallpaper.*
exec i3
