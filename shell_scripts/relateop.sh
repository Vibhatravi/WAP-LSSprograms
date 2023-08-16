read -p "Provide one number:" h
echo -e "Please provide another number: \c"
read -r g
echo "0 if true 1 if false"
test $h -lt $g;echo "first number is less than second:$?";
test $h -le $g;echo "first number is less than or equal to second:$?";
test $h -gt $g;echo "first number is greater than second:$?";
test $h -ge $g;echo "first number is greater than or equal to second:$?";
test $h -eq $g;echo "first number is equal second:$?";
test $h -ne $g;echo "first number is not equal to second:$?";
