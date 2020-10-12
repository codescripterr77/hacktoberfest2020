#!/bin/bash
FILE="./data.vcf"

while IFS=, read -r FName LName DOB Tel
do
    echo "BEGIN:VCARD"  >> $FILE
    echo "VERSION:3.0" >> $FILE
    echo "N:$LName;$FName;;;" >> $FILE
    echo "FN:$FName $LName" >> $FILE
    echo "TEL;TYPE=HOME:$Tel" >> $FILE
    echo "BDAY:$DOB" >> $FILE
    echo "END:VCARD" >> $FILE
done < data.csv


