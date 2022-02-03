CREATE DATABASE inceptiondb;
CREATE USER 'dvs'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON inceptiondb.* TO 'dvs'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';