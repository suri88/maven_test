#!/bin/bash
filename='ss.txt'
#n=1
while read line; do
r=`echo awk '/release/' $line`
echo $r
# reading each line
#echo "Line No. $n : $line"
if test "$r" == "release"
then
    echo "push to artifactory"
    else 
    echo "not match"
    fi
#n=$((n+1))

done < $filename
