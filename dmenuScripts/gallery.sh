#!bin/sh

wallpaper=$(ls ~/Wallpapers/Galery | dmenu -bw 2 -i -c -l 30)

[ $wallpaper -z ] || feh --bg-fill /home/eesaac/Wallpapers/Galery/$wallpaper
