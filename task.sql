-- 1. Create the webappuser and grant basic CRUD permissions
CREATE USER 'webappuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';

GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'localhost';

-- 2. Create the deploymentuser and grant full administrative privileges
CREATE USER 'deploymentuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';

GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'localhost';

-- 3. Apply the changes immediately
FLUSH PRIVILEGES;
