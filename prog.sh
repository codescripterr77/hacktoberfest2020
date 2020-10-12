#!/bin/bash

read -p "Enter the source path: "  spath
read -p "Enter the target path: "  tpath

# Using ls -p tells ls to append a slash to entries which are a directory, 
# and using grep -v / tells grep to return only lines not containing a slash.
files=$(ls -p $spath | grep -v /)

#splits into separate variables separated by newline
readarray -t y <<<"$files"

for i in "${y[@]}"; do
    for j in "${y[@]}"; do
            if [ $i != $j ]; then
                #duplicate file found
                if cmp --silent $i $j;then
                    #move one of the files to destination
                    mv $j $tpath
                    echo "$i --- $j yes"
                fi
            fi
    done
done
