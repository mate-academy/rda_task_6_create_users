CREATE USER IF NOT EXISTS 'webappuser'@'%'
IDENTIFIED BY 'P@ssw0rd';

ALTER USER 'webappuser'@'%'
IDENTIFIED BY 'P@ssw0rd';

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'webappuser'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ShopDB.*
TO 'webappuser'@'%';

CREATE USER IF NOT EXISTS 'deploymentuser'@'%'
IDENTIFIED BY 'P@ssw0rd';

ALTER USER 'deploymentuser'@'%'
IDENTIFIED BY 'P@ssw0rd';

REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'deploymentuser'@'%';

GRANT ALL PRIVILEGES
ON ShopDB.*
TO 'deploymentuser'@'%';
