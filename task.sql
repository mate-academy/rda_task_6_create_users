CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ShopDB.*
TO 'webappuser'@'%';

GRANT ALL PRIVILEGES
ON ShopDB.*
TO 'deploymentuser'@'%';

FLUSH PRIVILEGES;