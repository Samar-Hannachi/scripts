#! /bin/sh
echo "YOur username is $USER"
now=$(date +%F) 
echo "The current date is $now"
time=$(date +%T)
echo "The current time is $time" 
echo "The current working directory is $PWD"
count=$(ls | wc -l) 
echo "The number of files within this directory $count"
largest=$(ls -S | head -1)
echo "The largest file in this directory is $largest" 
