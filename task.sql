-- write your code for database user creation here
-- ​​CREATE USER 'testuser'@'%' IDENTIFIED BY 'P@ssw0rd';
-- GRANT ALL ON database.table TO 'username'@'host';
-- GRANT INSERT, UPDATE, DELETE, SELECT ON company.* TO 'testuser'@'%'; 
-- webappuser (password: P@ssw0rd
-- deploymentuser (password: P@ssw0rd

create user 'webappuser'@'%' identified by 'P@ssw0rd';
grant all on ShopDB.* to 'webappuser'@'%';

create user 'deploymentuser'@'%' identified by 'P@ssw0rd';
grant create on ShopDB.* to 'webappuser'@'%';