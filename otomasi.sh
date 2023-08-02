#!/bin/bash


#akses vps menggunakan ssh

#setting timezone asia/jakarta
sudo timedatectl set-timezone Asia/Jakarta
sleep 2

#update & upgrade
sudo apt-get update && apt-get upgrade
sleep 2


#install git
sudo apt install git
sleep 2

#install curl
sudo apt install curl
sleep 2
sudo apt-cache search libcurl | grep python
sleep 2
sudo apt install python3-pycurl
sleep 2
sudo apt-cache search libcurl
sleep 2

#install python3-pip
sudo apt install -y python3-pip
sleep 2
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sleep 2

#install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sleep 2
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sleep 2
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sleep 2
sudo apt install docker-ce -y
sleep 2

#command deployment
cd /var/www/laravel-starter-rakha
sleep 2
php artisan serve --host=0.0.0.0






