#!/bin/bash

apt-get install Nginx
mkdir /etc/nginx/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt

wget https://github.com/Pigeon777/example1/raw/master/nginx.conf
wget https://github.com/Pigeon777/example1/raw/master/example.conf
cp -f nginx.conf /etc/nginx/nginx.conf 
cp -f example.conf /etc/nginx/sites-available/example.conf
ln -f -s /etc/nginx/sites-available/example.conf /etc/nginx/sites-enabled/example.conf

service nginx reload