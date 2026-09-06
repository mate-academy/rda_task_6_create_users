CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@sswOrd';
GRANT CREATE, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%' ;

FLUSH PRIVILEGES;