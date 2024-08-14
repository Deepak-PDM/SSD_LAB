#!/bin/bash
sum=0
while read line; do
    IFS='"' line1=($line)
     IFS=" " line2=($line1[1])
     echo "${line2[]}"
     if [[ $line2[1] =~ 'POST' ]]
     then
         echo "$line1[1]"
         fi
done <access.log

