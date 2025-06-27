use ecommerce;
-- Total no. of users
SELECT COUNT(*) AS total_users FROM users;

-- Total no. of products 
SELECT COUNT(*) AS total_products FROM products;

-- Average price of all products
SELECT AVG(price) AS average_price FROM products;

-- Maximum and Minimum product price
SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price FROM products;

-- Total stock quantity of all products
SELECT SUM(stock_quantity) AS total_stock FROM products;

-- Number of orders by order date
SELECT order_date, COUNT(*) AS total_orders FROM orders GROUP BY order_date;

-- Number of products grouped by stock quantity
SELECT stock_quantity,COUNT(*) AS products_with_stock FROM products GROUP BY stock_quantity ORDER BY stock_quantity DESC;

-- First add values to payments
INSERT INTO payments (order_id,payment_date,amount,payment_method,status) VALUES (1,'2025-03-12',500,'G-pay','completed');
INSERT INTO payments (payment_date,amount,payment_method,status) VALUES ('2025-03-15',2000,'COD','pending');

-- Payments above Rs 1000 using HAVING
SELECT payment_method, SUM(amount) AS total_amount FROM payments GROUP BY payment_method HAVING total_amount > 1000;