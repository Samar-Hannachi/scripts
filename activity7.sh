#! /bin/bash 
quiz=questions.txt
while read -u3 line
do
  question=`echo $line | cut -f1 -d' '` 
  choice1=`echo $line | cut -f2 -d' '`
  choice2=`echo $line | cut -f3 -d' '`
  answer=`echo $line | cut -f4 -d' '`
  
  echo "$question?"
  echo "-$choice1"
  echo "-$choice2"
  read -p "-Your respnse :" your_choice
  if [ "$your_choice" == "$answer" ]
  then
    echo "correct"
  else
    echo "wrong"
  fi 
done 3< $quiz





