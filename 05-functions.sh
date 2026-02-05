#!/bin/bash

if [ $(id -u) -ne 0 ]; then
echo "please login to sudo user"
exit 1
fi

validate(){
    if [ $1 -gt 0 ]; then
    echo "Failed $2 "
    exit 1
    else
    echo "Success $2"
    fi

}
install nginx -y
$validate $? "nginx installed"
echo "nginx installed ..."

install mysql -y
$validate $? "mysql installed"
echo "mysql installed ..."

install node -y
$validate $? "node installed"
echo "node installed ..."