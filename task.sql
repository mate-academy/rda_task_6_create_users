USE ShopDB;

CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT UPDATE, DELETE, SELECT, INSERT ON ShopDB.* TO 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

FLUSH PRIVILEGES;