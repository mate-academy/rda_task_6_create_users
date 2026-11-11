
# First we need to login to mysql server as root with 'sudo mysql -u root'

CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.* TO 'webappuser'@'%';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'%';

