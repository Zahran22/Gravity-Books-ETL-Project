SELECT 
    cust_order.order_date,
    cust_order.order_id, 
    customer.customer_id, 
    MAX(order_history.history_id) AS history_id, 
    MAX(order_history.status_id) AS status_id, 
    MAX(order_status.status_value) AS status_value,
    MAX(CASE WHEN order_history.status_id = 1 THEN CAST(order_history.status_date AS DATE) END) AS 'Order Received',
    MAX(CASE WHEN order_history.status_id = 2 THEN CAST(order_history.status_date AS DATE) END) AS 'Pending Delivery',
    MAX(CASE WHEN order_history.status_id = 3 THEN CAST(order_history.status_date AS DATE) END) AS 'Delivery In Progress',
    MAX(CASE WHEN order_history.status_id = 4 THEN CAST(order_history.status_date AS DATE) END) AS 'Delivered',
    MAX(CASE WHEN order_history.status_id = 5 THEN CAST(order_history.status_date AS DATE) END) AS 'Cancelled',
    MAX(CASE WHEN order_history.status_id = 6 THEN CAST(order_history.status_date AS DATE) END) AS 'Returned',
    shipping_method.method_id, 
    shipping_method.cost
FROM 
    cust_order
INNER JOIN 
    customer ON cust_order.customer_id = customer.customer_id 
INNER JOIN 
    shipping_method ON cust_order.shipping_method_id = shipping_method.method_id 
INNER JOIN 
    order_history ON cust_order.order_id = order_history.order_id
INNER JOIN 
    order_status ON order_history.status_id = order_status.status_id
GROUP BY 
    cust_order.order_date,
    cust_order.order_id, 
    customer.customer_id, 
    shipping_method.method_id, 
    shipping_method.cost;