-- write your code for database user creation here
CREATE USER 'webappuser' @'%' IDENTIFIED BY 'P@ssw0rd';

-- Надаємо користувачеві webappuser права на виконання CRUD-операцій
GRANT SELECT, INSERT , UPDATE, DELETE ON ShopDB.* TO 'webappuser' @'%';

-- Створюємо користувача для деплою
CREATE USER 'deploymentuser' @'%' IDENTIFIED BY 'P@ssw0rd';

-- Надаємо користувачеві deploymentuser повні права на базу даних
GRANT ALL PRIVILEGES ON ShopDB.* TO 'deploymentuser' @'%';