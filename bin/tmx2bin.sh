#!/bin/bash

if [[ $# -lt 2 ]]; then
	echo "You must specify the input and the output file!"
	exit -1
fi

width=`xmlstarlet sel -t -v "/map/@width" $1`
height=`xmlstarlet sel -t -v "/map/@height" $1`
data=`xmlstarlet sel -t -v "/map/layer/data" $1 | cut -f 1- -d "," --output-delimiter " "`
counter=0

printf "\x$(printf %x $(( $width % 256 )))" > $2
printf "\x$(printf %x $(( $width / 256 )))" >> $2
printf "\x$(printf %x $(( $height % 256 )))" >> $2
printf "\x$(printf %x $(( $height / 256 )))" >> $2

for id in $data; do
	printf "\x$(printf %x $(( $id % 256 )))" >> $2
	printf "\x$(printf %x $(( $id / 256 )))" >> $2
	counter=$(( $counter + 1 ))
done

printf "%i words of the %ix%i map written. Done.\n" $counter $width $height
exit 0

