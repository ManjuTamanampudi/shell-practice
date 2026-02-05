#!/bin/bash

number=$1


if [ $number -gt 20 ]; then
echo "hi"
elif [ $number -eq 20 ]; then
echo "hello"
else
echo "bye"
fi
sleepp 10
echo $?

echo "print 0 if its sudo user : " id -u