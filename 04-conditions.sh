#!/bin/bash

number=$1


if [ $number -gt 20 ]; then
echo "hi"
elif [ $number -eq 20 ]; then
echo "hello"
else
echo "bye"
fi