#!/bin/bash

days="$(date -d "last monday" +%A) $(date -d "last tuesday" +%A) $(date -d "last wednesday" +%A) $(date -d "last thursday" +%A) $(date -d "last friday" +%A) $(date -d "last saturday" +%A) $(date -d "last sunday" +%A)"

PS3="Guess what is the current day of week: "
select day in $days; do
	if [[ $day == $(date +%A) ]]; then
		echo "You are absolutely right!"
		break;
	else
		echo -e "Sorry but you are wrong!\a"
	fi
done

