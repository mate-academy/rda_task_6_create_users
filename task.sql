CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT DELETE, UPDATE, INSERT, SELECT ON ShopDB.* TO 'webappuser'@'%';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';