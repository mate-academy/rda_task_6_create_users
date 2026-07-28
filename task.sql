create database ShopDB;
use ShopDB;

Create user 'webappuser'@'%' identified BY 'P@ssw0rd'; 
Create user 'deploymentuser'@'%' identified BY 'P@ssw0rd';

GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%'; 