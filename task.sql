CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT UPDATE, DELETE, SELECT, INSERT ON ShopDB.* TO 'webappuser'@'%';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'%';
