#!/bin/sh

choices="HorizDual\nVertDual\nHorizLDual\nLaptop\nMonitor"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
	VertDual) xrandr --output eDP-1 --below HDMI-2 --auto --noprimary --output HDMI-2 --auto --primary ;;
	HorizDual) xrandr --output HDMI-2 --auto --primary --output eDP-1 --left-of HDMI-2 --auto --noprimary;;
	HorizLDual) xrandr --output eDP-1 --right-of HDMI-2 --auto --noprimary --output HDMI-2 --auto --primary ;;
	Laptop) xrandr --output eDP-1 --auto --output HDMI-2 --off ;;
	Monitor) xrandr --output eDP-1 --off --output HDMI-2 --auto ;;
esac
