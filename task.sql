-- write your code for database user creation here

CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON `ShopDB`.* TO `webappuser`@`%`;

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'%';
