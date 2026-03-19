-- write your code for database user creation here

-- 1. webappuser: CRUD only (SELECT, INSERT, UPDATE, DELETE) on ShopDB
CREATE USER IF NOT EXISTS 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- 2. deploymentuser: ALL PRIVILEGES on ShopDB (create/alter/drop tables etc.)
CREATE USER IF NOT EXISTS 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

FLUSH PRIVILEGES;
