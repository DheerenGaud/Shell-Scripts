#!/bin/bash/

str="Hello My Name Is Dheeren"

echo $str
echo "Length of str : ${#str}"

# upperecase & Lovercase 
echo "Uppercase : ${str^^}"
echo "Lovercase : ${str,,}"

# Update String 
str=${str/Dheeren/Ganesh}
echo "Changed String : $str"
