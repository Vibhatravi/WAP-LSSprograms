#!/bin/sh
hello () {
echo "hello $1 $2"
hii
return 2
}
hii () {
echo "hii $var2"
return 4
}
hello zara ali
r=$?*
echo "$r"
