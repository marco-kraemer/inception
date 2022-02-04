FROM debian:buster

RUN apt-get update

RUN apt-get install mariadb-server -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./database.sql /

RUN service mysql start && mysql < database.sql
RUN rm -f database.sql

CMD /usr/bin/mysqld_safe