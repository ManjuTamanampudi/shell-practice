#!/bin/bash
set -e
trap echo ' "there is error in $LINENO, Command : $BASH_COMMAND"' ERR
logs_folder=/var/logs/shell-practice
logs_file=/var/logs/shell-practice/$0.log

y="\e[32m"
n="\e[0m"

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
    if [ $? -ne 0 ]; then
       dnf install $package -y &>> $logs_file
       validate $? "$package installed"
       echo -e "$y $package $n not installed ... installing now"
    else
      echo -e "$y $package already $y installed"
    fi
done
