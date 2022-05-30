#! /bin/sh
echo "What is the filename ?"
read filename
while [ -f $filename ]
do
  echo "File does exist, try another name !" 
  read filename
done
echo "What is the number of lines ?"
read n
for i in `seq 1 $n` 
do
  number=$RANDOM
  echo "$number\n" >> $filename 
done 











