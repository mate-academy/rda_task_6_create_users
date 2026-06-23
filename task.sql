CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.* TO 'webappuser'@'%';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';
