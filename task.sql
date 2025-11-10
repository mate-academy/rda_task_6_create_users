USE ShopDB;

-- 1️⃣ Create the web application user
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Grant basic CRUD privileges on all tables in ShopDB
GRANT SELECT, INSERT, UPDATE, DELETE
ON ShopDB.*
TO 'webappuser'@'%';

-- 2️⃣ Create the deployment user
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Grant full privileges (all actions) on the ShopDB database
GRANT ALL PRIVILEGES
ON ShopDB.*
TO 'deploymentuser'@'%';

-- Apply the privilege changes
FLUSH PRIVILEGES;