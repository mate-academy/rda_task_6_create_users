CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw@rd'
GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.* TO 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw@rd'
GRANT ALL PRIVILEGES ON ShopDB.* TO 'webappuser'@'%';

