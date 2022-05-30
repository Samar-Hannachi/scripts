#! /bin/sh
myArray=()
echo "You are prompted to enter at least 5 numbers !" 
for i in `seq 1 5`
do
 read number
 myArray+=($number)
done
echo ${myArray[@]} 
echo "Do you want to enter another integer ?"
read answer
count=6
while : 
do
  answer=${answer^^} 
  if [ "$answer" == "YES" ] && [ $count -le 10 ] 
  then
    read nb 
    myArray+=($nb) 
    echo ${myArray[@]} 
    ((count++))
    echo "Do you want to enter another integer ?" 
    read answer 
 else
    break
  fi
done
tot=0
prod=1
avg=0
for i in "${myArray[@]}"
do 
  ((tot+=i))
  ((prod*=i))
done
smallest=${myArray[0]}
biggest=${myArray[0]}
for i in "${myArray[@]}"
do
  element_i=$i
  if [ $smallest -gt $element_i ]
  then
    echo $element_i 
    $smallest=$element_i 
  fi
  if [ $biggest -le $element_i ]
  then 
    $biggest=element_i
  fi
done
echo "The values you enteres are :" ${myArray[@]} 
echo "The average if integers is :" $tot
echo "The product of the integers is :" $prod
echo "The average of the integers is :" $((tot / "${#myArray[@]}")) 
echo "The smallest element you entered is :" $smallest
echo "The biggest element you entered is :" $biggest 




