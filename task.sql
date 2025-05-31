-- write your code for database user creation here

create user 'webappuser'@'%' identified by 'P@ssw0rd';
create user 'deploymentuser'@'%' identified by 'P@ssw0rd';

grant insert, select, update, delete on ShopDB.* to 'webappuser'@'%';
grant all on ShopDB.* to 'deploymentuser'@'%';