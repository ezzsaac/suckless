#!/bin/sh

choices="Screens\nKeyboard\nbtop\nnmtui\nbluetui"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
	Screens) bash /home/eesaac/dmenuScripts/monitorChoice.sh;;
	Keyboard) bash /home/eesaac/dmenuScripts/keyboard.sh;;
	btop) bash /home/eesaac/Scripts/btopLaunch.sh ;;
	nmtui) bash /home/eesaac/Scripts/nmtuiLaunch.sh ;;
	bluetui) bash /home/eesaac/Scripts/bluetuiLaunch.sh ;;
esac
