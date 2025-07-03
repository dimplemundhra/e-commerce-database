use ecommerce;

-- Create view for order summaries
CREATE VIEW order_summary_view AS
SELECT
	o.order_id,
    u.name AS customer_name,
    p.amount,
    p.status AS payment_status
FROM orders o
JOIN users u ON o.user_id=u.user_id
JOIN payments p ON o.order_id=p.order_id;


-- View to show onlyDelivered orders
CREATE VIEW delivered_orders_view AS 
SELECT * FROM orders
WHERE order_date = '2025-06-23';

-- View to Hide Sensitive User Info
CREATE VIEW user_public_view AS
SELECT user_id,name,email
FROM users;

-- View to list Products by Category Name
CREATE VIEW products_with_category AS
SELECT 
    p.product_id,
    p.name AS product_name,
    c.name AS category_name,
    p.price
FROM products p
JOIN categories c ON p.category_id = c.category_id;

-- Querring the view
SELECT * FROM order_summary_view WHERE payment_status = 'completed';















