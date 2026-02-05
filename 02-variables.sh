#!/bin/bash
#DATE1=$(date +%s)

#echo "Hey manju today date is  :" $DATE1
#echo "enter day:" 
#read DAY
#echo "Hey manju today day is  :" $DAY
#sleep 10 

#DATE2=$(date +%s)
#echo "date is  :" $



echo "all args : " $@
echo "no args : " $#
echo "pwd : " $PWD
echo "user : " $USER
echo "home : " $Home
echo "pid : " $$
sleep 10 &
echo "backgroundpid : $!"


