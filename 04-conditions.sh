#!/bin/bash

number=$1


if [ $number -gt 20 ]; then
echo "hi"
elif [ $number -eq 20 ]; then
echo "hello"
else
echo "bye"
exit 1
fi
sleep 10
echo $?

echo "will print 0 if its sudo user  greterthan 0 if not root user: " $(id -u)