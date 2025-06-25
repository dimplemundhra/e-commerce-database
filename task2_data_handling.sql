use ecommerce;
INSERT INTO users(user_id,name,email,password,address) 
VALUES
('Maya Kanwar','maya@gmail.com','maya12','Bhairab dutta lane'),
('Noor Aiysha','noor@gmail.com','noor28',NULL);

INSERT INTO categories (name) VALUES ('Fashion'),('Groceries');

INSERT INTO products (name, description, price, stock_quantity, category_id)
VALUES 
('E-Scooty', 'Honda E-sCOOTY', 50099.99, 30, 1),
('T-Shirt', 'Cotton T-shirt', 199.99, 50, 2);

SET SQL_SAFE_UPDATES = 0;

-- Update user address
UPDATE users
SET address = 'Mumbai'
WHERE name = 'Maya' ;

-- Update product price
UPDATE products
SET price = 220.99
WHERE name = 'Cotton T-Shirt';

-- Delete from user with missing e-mails
DELETE FROM users
WHERE email IS NULL;

-- Insert with default stock (assumes default 0 if not specified)
INSERT INTO products (name, description, price, category_id)
VALUES ('Laptop Bag', 'Waterproof laptop bag', 29.99, 2);

-- Insert with NULL explicitly
INSERT INTO users (name, email, password, address)
VALUES ('Gungun', 'gungun4@gmail.com', 'guest123', NULL);


