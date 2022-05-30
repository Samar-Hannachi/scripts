#! /bin/sh
echo "Enter a number parameter a :"
read a
re='^[0-9]+$'
while ! [ $a =~ $re ] 
do
  echo "Not a number. Enter a number parameter a :"
  read a
done
read b
while ! [ $b =~ $re ]
do
  echo "Not a number. Enter a number parameter b :"
  read b
done 
if [ $a -gt $b ] 
then 
  echo "True"
else
  echo "False"
fi
difference=`expr $a - $b` 
echo "The difference between a and b is :" $difference 






