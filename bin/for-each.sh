#!/bin/bash

if [[ $# -lt 1 ]]; then
	echo -e "You must specify the command to use on each subdirectory!\a"
	exit -1
fi

if [[ $# -lt 2 ]]; then
	base_directory=.
else
	base_directory=$2
fi

for file in $(find $base_directory -mindepth 1 -maxdepth 1 -not -path '*/[@.]*'); do
	$1 $file
	if [[ $? -ne 0 ]]; then
		echo "Error occured! Exit."
		exit -1
	fi
done

exit 0

