#! /bin/sh
echo "Enter a filename :"
read filename
while [ -f $filename ]
do
  echo "File does exist, try another name !"
  read filename 
done
echo >> $filename









