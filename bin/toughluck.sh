#!/bin/bash

if [[ $# -ge 1 ]]; then
	year=$1
else
	read -p "Enter the year: " year 
fi

echo "Processing the year $year... "; echo

for month in {1..12}; do
	if [[ $(date -d "$year-$month-13" +%a) == $(date -d "last friday" +%a) ]]; then
		date -d "$year-$month-13"
	fi
done

echo "These are your unlucky days! "

