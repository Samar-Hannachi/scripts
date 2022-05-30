#! /bin/sh
now=$(date +%F)
{ shuf -i 1-50 -n 5 ;shuf -i 1-10 -n 1 ;} > $now.txt 
{ shuf -i 1-50 -n 5 ;shuf -i 1-10 -n 1 ;} > player.txt
grep -Fxf $now.txt player.txt > matches.txt 
len=$(wc -l < matches.txt)
echo "The number of matches you obtained is :" $len
