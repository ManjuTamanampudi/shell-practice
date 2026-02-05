#!/bin/bash

number=$1


if[$number -gt 20]; then
echo "hi"
elif[$number -et 20]; then
echo "hello"
else
echo "bye"
fi