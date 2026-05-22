-- Create users
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Grant CRUD permissions to web application user
GRANT SELECT, INSERT, UPDATE, DELETE
ON ShopDB.*
TO 'webappuser'@'%';

-- Grant full permissions to deployment user
GRANT ALL PRIVILEGES
ON ShopDB.*
TO 'deploymentuser'@'%';

-- Apply privilege changes
FLUSH PRIVILEGES;