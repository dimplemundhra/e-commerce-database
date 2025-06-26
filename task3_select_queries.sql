use ecommerce;

-- view all users
SELECT * FROM users;

-- View only user names and email 
SELECT name,email FROM users;

-- Find products priced above 100 
SELECT * FROM products WHERE price > 200;

-- Find users from Kolkata
SELECT * FROM users WHERE address ='Kolkata';

-- Products under  specific fields
SELECT * FROM products WHERE category_id= 1 AND price < 100;

-- Find users whose name starts with 'M'
SELECT * FROM users WHERE name LIKE 'M%';

-- Products priced between 600 and 800
SELECT * FROM products WHERE price BETWEEN 600 AND 800;

-- List Products by price High to low
SELECT * FROM products ORDER BY price DESC;

-- List users Alphabetically 
SELECT * FROM users ORDER BY name ASC;

-- Show top 3 most expensive products
SELECT * FROM products ORDER BY price DESC LIMIT 3;

-- Show first 3 users
SELECT * FROM users LIMIT 3;