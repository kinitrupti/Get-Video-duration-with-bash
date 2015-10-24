#!/bin/bash
FILE=$1 #there is one argument file
while read line; do #loop to read line one by one
     ffmpeg -i $line 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,// >> s1.txt #ffmpeg code, output of which is redirected to s1.txt
done < $FILE #end of file loop

