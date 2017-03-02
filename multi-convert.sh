#!/bin/bash
while getopts p:b: name
do
    case $name in
    p)    parallel="$OPTARG";;
    b)    bitrate="$OPTARG";;
    esac
done
for ((i=0;i<$parallel;i++)); do 
    nohup ./convert.sh -b $bitrate &
    echo "$i"
done
