-- -- Видалення бази даних, якщо вона існує
DROP DATABASE IF EXISTS ShopDB;

-- Створення бази даних та вибір її для використання
CREATE DATABASE ShopDB;
USE ShopDB;

-- Таблиця країн
CREATE TABLE Countries (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Таблиця складів
CREATE TABLE Warehouses (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID)
);

-- Таблиця продуктів
CREATE TABLE Products (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Інвентаризація товарів на складах
CREATE TABLE ProductInventory (
    ProductID INT,
    WarehouseID INT,
    Amount INT,
    PRIMARY KEY (ProductID, WarehouseID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID)
);

-- Вставка тестових даних
INSERT INTO Countries (ID, Name) VALUES
    (1, 'Country1'),
    (2, 'Country2');

INSERT INTO Warehouses (ID, Name, Address, CountryID) VALUES
    (1, 'Warehouse-1', 'City-1, Street-1', 1),
    (2, 'Warehouse-2', 'City-2, Street-2', 2);

INSERT INTO Products (ID, Name) VALUES
    (1, 'AwersomeProduct');

INSERT INTO ProductInventory (ProductID, WarehouseID, Amount) VALUES
    (1, 1, 2),
    (1, 2, 5);

-- Збережена процедура для виведення кількості товару на складі
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN input_warehouse_id INT)
BEGIN
    SELECT 
        p.Name AS ProductName,
        pi.Amount AS Quantity
    FROM 
        ProductInventory pi
    JOIN 
        Products p ON pi.ProductID = p.ID
    WHERE 
        pi.WarehouseID = input_warehouse_id;
END //

DELIMITER ;
write your code for database user creation here
-- Створення користувача webappuser
CREATE USER IF NOT EXISTS 'webappuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Надаємо webappuser права на CRUD-операції в ShopDB
GRANT SELECT, INSERT, UPDATE, DELETE
ON ShopDB.*
TO 'webappuser'@'%';

-- Створення користувача deploymentuser
CREATE USER IF NOT EXISTS 'deploymentuser'@'%' IDENTIFIED BY 'P@ssw0rd';

-- Надаємо deploymentuser всі привілеї в ShopDB (для створення таблиць тощо)
GRANT ALL PRIVILEGES
ON ShopDB.*
TO 'deploymentuser'@'%';

-- Примусове оновлення привілеїв
FLUSH PRIVILEGES;
