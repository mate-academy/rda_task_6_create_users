CREATE USER 'deploymentuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'localhost';
FLUSH PRIVILEGES;
