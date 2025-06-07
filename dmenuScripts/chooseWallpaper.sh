#!/bin/sh

choices="Galery\nRandomCloud\nRandomForest\nRandomMountain"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
	RandomCloud) feh --bg-fill --randomize /home/eesaac/Wallpapers/clouds ;;
	RandomForest) feh --bg-fill --randomize /home/eesaac/Wallpapers/forest ;;
	RandomMountain) feh --bg-fill --randomize /home/eesaac/Wallpapers/mountains ;;
	Galery) bash /home/eesaac/dmenuScripts/gallery.sh ;;
esac
