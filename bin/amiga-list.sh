#!/bin/bash

readonly games_directory=~/amiga/games

declare games=$(ls -1 --sort=name "$games_directory/$1"* 2>/dev/null)

if [[ $? -ne 0 ]]; then
	exit 1
else
	echo "$games"
	exit 0
fi

