SELECT  customer_address.customer_id,
        customer_address.address_id,
		customer_address.status_id,
		address_status.address_status
FROM    customer_address LEFT OUTER JOIN
        address_status ON customer_address.status_id = address_status.status_id