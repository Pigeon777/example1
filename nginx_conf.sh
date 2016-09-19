#!/bin/bash

apt-get install Nginx

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt

wget https://github.com/Pigeon777/example1/raw/master/nginx.conf /var/tmp/
wget https://github.com/Pigeon777/example1/raw/master/example-site.conf /var/tmp/
cp -f /var/tmp/nginx.conf /etc/nginx/nginx.conf 
cp -f /var/tmp/example-site.conf /etc/nginx/sites-available/example-site.conf