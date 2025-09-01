-- write your code for database user creation here
create user if not exists 'webappuser'@'%' identified by 'P@ssw0rd';
grant select, update, delete, insert on ShopDB.* to 'webappuser'@'%';
create user if not exists 'deploymentuser'@'%' identified by 'P@ssw0rd';
grant all privileges on ShopDB.* to 'deploymentuser'@'%';