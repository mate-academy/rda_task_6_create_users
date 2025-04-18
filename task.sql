
-- Видалення користувачів, якщо вони вже існують
DROP USER IF EXISTS 'webappuser'@'%';
DROP USER IF EXISTS 'deploymentuser'@'%';

-- Створення користувача webappuser з паролем
CREATE USER 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Створення користувача deploymentuser з паролем
CREATE USER 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Надання webappuser CRUD-доступу до ShopDB
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- Надання deploymentuser повного доступу до ShopDB
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- Застосування змін
FLUSH PRIVILEGES;

