-- Створення користувачів та налаштування прав для ShopDB
CREATE USER 'webappuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
CREATE USER 'deploymentuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';

-- Надання прав CRUD (SELECT, INSERT, UPDATE, DELETE) для webappuser
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'localhost';

-- Надання всіх прав для deploymentuser
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'localhost';

-- Оновлення прав
FLUSH PRIVILEGES;
