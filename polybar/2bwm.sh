#!/usr/bin/env bash

nd=$( xdotool get_num_desktops )
ws=$( xdotool get_desktop )

CURRENT="$(polybar -d 'workspace-label-current' base)"
OCCUPIED="$(polybar -d 'workspace-label-occupied' base)"
UNOCCUPIED="$(polybar -d 'workspace-label-unoccupied' base)"

fg1="$(polybar -d 'workspace-current-foreground' base)"
fg2="$(polybar -d 'workspace-occupied-foreground' base)"
fg3="$(polybar -d 'workspace-unoccupied-foreground' base)"

draw() {
	for i in {0..9}; do
        windows=$( xdotool search -desktop $i --name "" | wc -l )

		if [[ $i -eq $ws ]]
		then
			echo -ne "%{F$fg1} $CURRENT "
		else
			if [[ $windows > 0 ]]
			then
				echo -ne "%{F$fg2} $OCCUPIED "
			else
				echo -ne "%{F$fg3} $UNOCCUPIED "
			fi
		fi
	done
}

draw
