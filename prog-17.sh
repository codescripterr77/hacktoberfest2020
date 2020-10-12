#!/bin/bash

echo -n "Enter the filename :"
read file

echo -n "Enter the word to remove :"
read word

if [ -f "$file" ]; then
    echo -e "cat\ndog\nbear\nhello\nelephant\nhello\ntiger\nhello\nhorse" >> $file

    grep -v $word $file > tmp_file.txt
    mv tmp_file.txt $file

    echo
    echo "File is modified" 
else 
    echo "The file does not exists."
fi