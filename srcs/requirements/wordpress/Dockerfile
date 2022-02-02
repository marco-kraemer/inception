FROM debian:buster

RUN apt-get update

RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client
COPY ./www.conf /etc/php/7.3/fpm/pool.d

ADD https://br.wordpress.org/latest-pt_BR.tar.gz /var/www/
RUN cd /var/www && tar -xzvf latest-pt_BR.tar.gz
RUN rm -f /var/www/latest-pt_BR.tar.gz
RUN rm -f /var/www/wordpress/wp-config-sample.php
COPY ./wp-config.php ./var/www/wordpress/

RUN mkdir ./run/php/
CMD ./usr/sbin/php-fpm7.3 -F