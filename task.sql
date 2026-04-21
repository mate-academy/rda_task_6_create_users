create user IF NOT EXISTS 'webappuser'@'%' identified by 'P@ssw0rd';
create user IF NOT EXISTS 'deploymentuser'@'%' identified by 'P@ssw0rd';
grant all on ShopDB.* to 'deploymentuser'@'%';
grant select, insert, update, delete on ShopDB.* to 'webappuser'@'%';