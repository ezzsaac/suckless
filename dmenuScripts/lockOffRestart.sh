#!/bin/sh

choices="Lock\nReboot\nShutdown\nExit"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
	Lock) xsecurelock ;;
	Reboot) bash /home/eesaac/dmenuScripts/prompt.sh "Reboot?" "reboot"  ;;
	Shutdown) bash /home/eesaac/dmenuScripts/prompt.sh "Shutdown?" "poweroff" ;;
	Exit) bash /home/eesaac/dmenuScripts/prompt.sh "Exit dwm?" "killall dwm"
esac
