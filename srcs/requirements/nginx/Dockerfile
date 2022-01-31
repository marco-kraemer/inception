FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install nginx -y
RUN apt-get -y install openssl -y

RUN openssl req -x509 -nodes -days 365 -subj "/C=BR/OU=42sp/CN=maraurel" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

COPY ./nginx.conf /etc/nginx/sites-available/default

WORKDIR /var/www/html/

COPY ./init.sh ./

CMD bash init.sh