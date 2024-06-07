#!/bin/sh

# quit running waybar instances
killall waybar

# Loading the configuration based on the username
if [[ $USER = "tobias" ]] 
then 
	waybar -c ~/.config/waybar/config.jsonc & -s ~/.config/waybar/style.css
else
	waybar &
fi
