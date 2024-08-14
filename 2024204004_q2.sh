#!/bin/bash
sum=0
while read line; do
    IFS="," line1=($line)
     (( sum+=line1[-1] ))
done <power_levels.txt
echo "$sum"
