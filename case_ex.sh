read -p "enter marks:" a
  
#Pass the variable in string
case "$a" in
     #case 1
   expr $a -gt 35 -a $a -lt 75) echo "second class" ;;
    #case 2
    "engineering") echo "subjects: mechanical,computer science,civil,AI" ;;
    #case 3
    "bcom") echo "subjects: accountancy,management,kannada,english" ;;
esac
