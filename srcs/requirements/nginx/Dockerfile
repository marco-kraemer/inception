FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get -y install nginx

COPY ./nginx.conf ./tmp/nginx.php

#WORKDIR /var/www/html/

#RUN openssl req -x509 -nodes -days 365 -subj "/C=BR/ST=sp/L=sp/O=42/OU=42sp/CN=maraurel" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;
