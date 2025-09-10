DROP USER IF EXISTS 'webappuser'@'localhost';
CREATE USER 'webappuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'localhost';

DROP USER IF EXISTS 'deploymentuser'@'localhost';
CREATE USER 'deploymentuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'localhost';

FLUSH PRIVILEGES;
