-- write your code for database user creation here

-- Create Users
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED by 'P@ssw0rd';

-- Grant Permissions
GRANT INSERT, UPDATE, DELETE, SELECT ON ShopDB.* TO 'webappuser'@'%';
GRANT ALL ON ShopDB.* TO 'deploymentuser'@'%';