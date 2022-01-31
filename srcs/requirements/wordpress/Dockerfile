FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client

COPY ./www.conf /etc/php/7.3/fpm/pool.d

COPY ./config.inc.php phpmyadmin

RUN mkdir ./run/php/

CMD ./usr/sbin/php-fpm7.3 -F