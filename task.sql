-- task.sql

-- Drop users if they already exist (for repeatable testing)
DROP USER IF EXISTS 'webappuser'@'%';
DROP USER IF EXISTS 'deploymentuser'@'%';

-- webappuser: basic CRUD only, no schema changes
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- deploymentuser: full control over ShopDB, including schema changes
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

FLUSH PRIVILEGES;