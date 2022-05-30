#! /bin/sh
echo Enter your password :
read varname
length=${#varname}
if (( $length -lt 8 )) 
then
  echo "Try a password with at least eight caracters"
elif ! (( $varname =~  [0-9] )) && (( $varname =~ [a-zA-Z] )) 
then
  echo "Tha password should contain numbers and letters" 
elif ! (( "$varname" =~ [[:upper:]] )) && (( "$varname" =~ [[:lower:]] ))
then
  echo "The password should contain at least one uppercase and one lowercase" 
else
  echo "The password is strong"
fi
  






