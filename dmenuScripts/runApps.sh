#!/bin/sh

choices="Chromium\nTelegram\nThunar\nGNUradio\nKeePass\nJupyterLab"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
	Chromium) chromium ;;
	Telegram) Telegram ;;
	Thunar) thunar ;;
	KeePass) keepass ;;
	JupyterLab) alacritty -e jupyter lab ;;
	GNUradio) alacritty -e gnuradio-companion
esac
