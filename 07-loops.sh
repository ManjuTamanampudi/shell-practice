#!/bin/bash

logs_folder=/var/logs/shell-practice
logs_file=/var/logs/shell-practice/$0.log


if [ $(id -u) -ne 0 ]; then
echo "please login to sudo user"
exit 1
fi
sudo mkdir -p $logs_folder

validate(){
    if [ $1 -ne 0 ]; then
    echo "Failed $2 "  | tee -a $logs_file
    exit 1
    else
    echo "Success $2 " | tee -a $logs_file
    fi

}
for package in $@
do
dnf list installed $package &>> $logs_file
if [ $? -ne 0 ] then
dnf install $package -y &>> $logs_file
validate $? "$package installed"
echo "$package not installed ... installing now"
else
echo "$package already installed"
done
