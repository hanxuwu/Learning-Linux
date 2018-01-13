#!/bin/bash
xrandr --addmode Virtual1 3840*2160_60.00 &&
xrandr -s 18 &&
xrandr --output Virtual1 --scale 0.5x0.5 &&
gsettings set org.gnome.desktop.interface scaling-factor 2 &&
xrandr --output Virtual1 --scale 1x1
