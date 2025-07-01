use ecommerce;
-- Subquer in SELECT:
SELECT name, 
(SELECT COUNT(*) FROM orders o WHERE o.user_id=u.user_id)
AS total_orders FROM users u;

-- Subquery in WHERE with IN:
SELECT * FROM products
WHERE category_id IN (
    SELECT category_id FROM categories WHERE name = 'Fashion'
);

-- Subquery in WHERE with EXISTS:
SELECT * FROM users u
WHERE EXISTS (
    SELECT 1 FROM orders o WHERE o.user_id = u.user_id
);

-- SUbquery in FROM:
SELECT user_id, AVG(amount) AS avg_payment
FROM (
    SELECT o.user_id, p.amount
    FROM payments p
    JOIN orders o ON p.order_id = o.order_id
) AS user_payments
GROUP BY user_id;

-- Correlated Subquery in WHERE:
SELECT o.order_id, o.user_id
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE p.amount > (
    SELECT AVG(p2.amount)
    FROM orders o2
    JOIN payments p2 ON o2.order_id = p2.order_id
    WHERE o2.user_id = o.user_id
);




