#!/bin/bash

#####################################################################################
# A simple shell script to change background picture of gnome using unsplash photos.#
# Author: Vitor Matta                                                               #
# Email: vitormm@gmail.com                                                          #
#####################################################################################

photoGalleries=("nasa" "textures-patterns" "wallpapers" "nature" "architecture" "animals" "travel")
randomIndex=$(awk -v min=0 -v max=6 -v seed="$(od -An -N4 -tu4 /dev/urandom)" 'BEGIN{srand(seed+0); print int(min+rand()*(max-min+1))}')
randomGallery=${photoGalleries[randomIndex]}

wget https://source.unsplash.com/random/1920x1080/?${randomGallery} -O /tmp/wallpaper_temp.jpeg
mv /tmp/wallpaper_temp.jpeg /tmp/wallpaper.jpeg
gsettings set org.gnome.desktop.background picture-uri "file:///tmp/wallpaper.jpeg"
