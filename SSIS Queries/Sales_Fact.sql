SELECT   b.book_id, ol.line_id,
         co.order_date,
		 c.customer_id,
		 ol.price
FROM     book AS b INNER JOIN
                         order_line AS ol ON b.book_id = ol.book_id INNER JOIN
                         cust_order AS co ON ol.order_id = co.order_id INNER JOIN
                         customer AS c ON co.customer_id = c.customer_id