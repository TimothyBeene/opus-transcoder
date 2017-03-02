#!/bin/bash
while getopts b: name
do
    case $name in
    b)    bitrate="$OPTARG";;
    esac
done
for d in */; do 
    d=${d/"/"/};
    if [[ $d != *-opus ]]; then 
        echo ${d}-opus;
        `mkdir "$d-opus"`; 
        cd $d
        for file in *.mp3; do 
            newfile=${file/.mp3/.opus}
            if [ ! -f "../$d-opus/$newfile" ] && [ ! -f "../$d-opus/$newfile.tmp" ] ; then
                echo "transcoding $newfile"
                avconv -loglevel quiet -i "$file" -f wav pipe:1 | opusenc --quiet --vbr --bitrate $bitrate - "../$d-opus/$newfile.tmp"; 
                echo "renaming $newfile"
                mv "../$d-opus/$newfile.tmp" "../$d-opus/$newfile"
            fi
        done
        cd ..
    fi
done