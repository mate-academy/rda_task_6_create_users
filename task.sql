-- Create webappuser: basic CRUD only (no DDL / table creation)
CREATE USER 'webappuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'localhost';

-- Create deploymentuser: full access, including creating new tables
CREATE USER 'deploymentuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'localhost';

FLUSH PRIVILEGES;
