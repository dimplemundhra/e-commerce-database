use ecommerce;
DELIMITER //

CREATE PROCEDURE GetOrdersByUser(IN uid INT)
BEGIN
    SELECT o.order_id, o.order_date, p.amount
    FROM orders o
    JOIN payments p ON o.order_id = p.order_id
    WHERE o.user_id = uid;
END //

DELIMITER ;

CALL GetOrdersByUser(1);

DELIMITER //

CREATE FUNCTION GetTotalPayment(orderId INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(amount) INTO total
    FROM payments
    WHERE order_id = orderId;
    RETURN total;
END //

DELIMITER ;

SELECT GetTotalPayment(1) AS TotalAmount;

DELIMITER //

CREATE PROCEDURE UpdateOrderStatus(IN oid INT, IN newStatus VARCHAR(20))
BEGIN
    IF EXISTS (SELECT 1 FROM orders WHERE order_id = oid) THEN
        UPDATE orders
        SET status = newStatus
        WHERE order_id = oid;
    ELSE
        SELECT 'Order not found' AS message;
    END IF;
END //

DELIMITER ;

CALL UpdateOrderStatus(2, 'shipped');







