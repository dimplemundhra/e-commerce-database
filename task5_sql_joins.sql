use ecommerce;
-- Inner join: shows only users who have placed at least one order
SELECT u.user_id,u.name, o.order_id, o.order_date
FROM users u
INNER JOIN orders o ON u.user_id= o.user_id;

-- Left Join: shows all users.If a user has no order, order_id wll be NULL
SELECT u.user_id, u.name, o.order_id, o.order_date
FROM users u
LEFT JOIN orders o ON u.user_id=o.user_id;

-- Right Join: Shows all orders.If the user who placed the order doen't exists, user_id will be NULL
SELECT u.user_id, u.name, o.order_id, o.order_date
FROM users u
RIGHT JOIN orders o ON u.user_id = o.user_id;

-- Full Join: Simulates a FULL OUTER JOIN — includes all users and all orders, matched or unmatched.
SELECT u.user_id, u.name, o.order_id, o.order_date
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id

UNION

SELECT u.user_id, u.name, o.order_id, o.order_date
FROM users u
RIGHT JOIN orders o ON u.user_id = o.user_id;

-- Inner Join: Combines order and payment info
SELECT o.order_id, o.order_date, p.payment_method, p.amount
FROM orders o
INNER JOIN payments p ON o.order_id = p.order_id;
