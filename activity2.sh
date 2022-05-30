#! /bin/sh


now=$(date +%F)
echo $now
for f in /home/samar/ud/*.txt 
do
  mv -v "$f$" "${f%.*}_now.${f##*.}
done
