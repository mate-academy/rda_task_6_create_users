CREATE USER 'webapp'@'%' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';
GRANT INSERT, UPDATE, DELETE, SELECT ON `database`.* TO 'webapp'@'192.168.1.103';
GRANT ALL ON `database`.* TO 'deploymentuser'@'192.168.1.103';

