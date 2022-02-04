CREATE DATABASE inceptiondb;
CREATE USER 'maraurel'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON inceptiondb.* TO 'maraurel'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';