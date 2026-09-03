-- write your code for database user creation here
CREATE USER 'webappuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';

CREATE USER 'deploymentuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ShopDB.*
TO 'webappuser'@'localhost';

GRANT ALL PRIVILEGES
ON ShopDB.*
TO 'deploymentuser'@'localhost';

