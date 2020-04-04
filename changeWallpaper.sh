#!/bin/bash

#####################################################################################
# A simple shell script to change background picture of gnome using unsplash photos.#
# Author: Vitor Matta                                                               #
# Email: vitormm@gmail.com                                                          #
#####################################################################################

wget https://source.unsplash.com/random/1920x1080/?wallpaper -O /tmp/wallpaper_temp.jpeg
mv /tmp/wallpaper_temp.jpeg /tmp/wallpaper.jpeg
gsettings set org.gnome.desktop.background picture-uri "file:///tmp/wallpaper.jpeg"
