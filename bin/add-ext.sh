#!/bin/bash

if [[ $# -lt 2 ]]; then
	echo -e "Usage: add-ext extension file\a"
	exit -1
fi

extension=$1
file=$2
len=$(( ${#extension} + 1 ))

if [[ "${file: -$len}" != ".$extension" ]]; then
	mv $file $file.$extension
else
	echo "File $file already has extension $extension."
fi

