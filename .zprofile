export GTK2_RC_FILES=$HOME/.gtkrc-2.0
#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
#fi
#
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty4 ]] && [[ -z $XDG_SESSION_TYPE ]]; then
#  XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
#fi
