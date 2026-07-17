-- write your code for database user creation here
DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, SELECT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'%';