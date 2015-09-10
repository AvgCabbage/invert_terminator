#!/bin/bash

#Script used to change terminator colors.

CONFIG=~/.config/terminator/config

DARK_FG="\"#ffffff\""
DARK_BG="\"#333333\""

LIGHT_FG="\"#000000\""
LIGHT_BG="\"#ffffff\""

CURRENT=$(grep -e "foreground_color\ =\ " $CONFIG)


if [[ $CURRENT == "    foreground_color = $LIGHT_FG" ]]; then
	sed -i.bak "s/foreground_color\ =\ $LIGHT_FG/foreground_color\ =\ $DARK_FG/g" $CONFIG
	sed -i.bak "s/background_color\ =\ $LIGHT_BG/background_color\ =\ $DARK_BG/g" $CONFIG
else
	if [[ $CURRENT == "    foreground_color = $DARK_FG" ]]; then
		sed -i.bak "s/foreground_color\ =\ $DARK_FG/foreground_color\ =\ $LIGHT_FG/g" $CONFIG
		sed -i.bak "s/background_color\ =\ $DARK_BG/background_color\ =\ $LIGHT_BG/g" $CONFIG
	fi
fi


terminator &

exit 0