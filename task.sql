-- 1. Створюємо базу даних, якщо потрібно
DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

-- 2. Створюємо таблицю (для тесту)
CREATE TABLE Countries (
    ID INT PRIMARY KEY,
    Name VARCHAR(255)
);

-- 3. Створюємо користувача для веб-додатку
CREATE USER IF NOT EXISTS 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Даємо йому базові CRUD права
GRANT SELECT, INSERT, UPDATE, DELETE ON ShopDB.* TO 'webappuser'@'%';

-- 4. Створюємо користувача для деплойменту
CREATE USER IF NOT EXISTS 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Даємо всі привілеї
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser'@'%';

-- 5. Оновлюємо привілеї
FLUSH PRIVILEGES;
-- write your code for database user creation here