USE ShopDB;

-- створення користувача для вебзастосунку
CREATE USER IF NOT EXISTS 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- CRUD-права (тільки базові операції)
GRANT SELECT, INSERT, UPDATE, DELETE ON `ShopDB`.* TO 'webappuser'@'%';

-- створення користувача для deployment
CREATE USER IF NOT EXISTS 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Повні права на базу
GRANT ALL PRIVILEGES ON `ShopDB`.* TO 'deploymentuser'@'%';

-- оновити кеш привілеїв
FLUSH PRIVILEGES;
