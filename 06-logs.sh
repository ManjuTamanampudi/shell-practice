#!/bin/bash

logs_folder=/var/logs/shell-practice
logs_file=/var/logs/shell-practice/$0.sh


if [ $(id -u) -ne 0 ]; then
echo "please login to sudo user"
exit 1
fi
sudo mkdir -p $logs_folder

validate(){
    if [ $1 -ne 0 ]; then
    echo "Failed $2 "
    exit 1
    else
    echo "Success $2"
    fi

}
dnf install nginx -y &>> $logs_file
validate $? "nginx installed"
echo "nginx installed ..."

dnf install mysql -y &>> $logs_file
validate $? "mysql installed"
echo "mysql installed ..."

dnf install nodejs -y &>> $logs_file
validate $? "node installed"
echo "node installed ..."
