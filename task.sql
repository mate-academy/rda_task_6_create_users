CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* to 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT ALL ON ShopDB.* to 'deploymentuser'@'%';