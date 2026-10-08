#!/bin/sh

# Disable EEE on enp11s0

if [ "$1" = "enp11s0" ]; then
	ethtool --set-eee $1 eee off \
		|| logger "Error $? trying to disable EEE on $1"
fi

exit 0
