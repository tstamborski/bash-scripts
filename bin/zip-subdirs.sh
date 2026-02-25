#!/bin/bash

if [[ $# -lt 1 ]]; then
	base_directory=.
else
	base_directory=$1
fi

cd $base_directory
for file in $(ls -1); do
	if [[ -d $file ]]; then
		zip -r $file.zip $file
	fi
done

exit 0

