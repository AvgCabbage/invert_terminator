#!/bin/bash

#Get MD5 of each file. Removes file name to just store the MD5 value
CONF=$(md5sum ~/.config/terminator/config | sed -e 's/\ .\/home\/alex\/.config\/terminator\/config.*//');
LIGHT=$(md5sum ~/.config/terminator/config.light | sed -e 's/\ .\/home\/alex\/.config\/terminator\/config.*//');
DARK=$(md5sum ~/.config/terminator/config.dark | sed -e 's/\ .\/home\/alex\/.config\/terminator\/config.*//');

	echo \"$CONF\" config
	echo \"$LIGHT\" config.light
	echo \"$DARK\" config.dark
	echo

	if [ "$CONF" == "$LIGHT" ] ; then
	   cp /home/alex/.config/terminator/config.dark /home/alex/.config/terminator/config
	   echo "Dark profile"
	else
	   cp /home/alex/.config/terminator/config.light /home/alex/.config/terminator/config
	   echo "Light profile"
	fi

terminator &

exit 0
