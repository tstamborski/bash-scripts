#!/bin/bash

game=$(amiga-list.sh $1 | head -n 1)

if [[ -f $game ]]; then
	fs-uae --fullscreen --floppy-drive-0="$game" --joystick-port-1=keyboard
	exit $?
else
	echo -e "Sorry, there is no such game!\a"
	exit 1
fi

