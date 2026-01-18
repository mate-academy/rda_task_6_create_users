-- write your code for database user creation here

-- Create webappuser with CRUD permissions (SELECT, INSERT, UPDATE, DELETE)
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- Create deploymentuser with all permissions on ShopDB
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- Apply changes
FLUSH PRIVILEGES;