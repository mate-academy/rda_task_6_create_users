-- write your code for database user creation here
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.* to 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT ALL ON ShopDB.* to 'deploymentuser'@'%';
