                                              Gravity-Books-ETL-Project
# DB Tables description: 

- book: a list of all books available in the store. \
- book_author: stores the authors for each book, which is a many-to-many relationship. \
- author: a list of all authors.
- book_language: a list of possible languages of books. \
- publisher: a list of publishers for books. \
- customer: a list of the customers of the Gravity Bookstore. \
- customer_address: a list of addresses for customers, as a customer can have more than one address, and an address has more than one customer. \
- address_status: a list of statuses for an address, because addresses can be current or old. \
- address: a list of addresses in the system. \
- country: a list of countries that addresses are in. \
- cust_order: a list of orders placed by customers. \
- order_line: a list of books that are a part of each order. \
- shipping_method: the possible shipping methods for an order. \
- order_history: the history of an order, such as ordered, cancelled, delivered. \
- order_status: the possible statuses of an order. \
![Gravity Books DB Diagram](https://github.com/user-attachments/assets/ac984e82-2bf6-4e02-bbef-c4b1f5b8f07d)

--------------------------------------------------------------------------------------------------------------------------
# DWH Diagram:

![Gravity Books DWH Digram](https://github.com/user-attachments/assets/9bb86f28-9cbb-404a-91cb-389e8d0fa62c)

### There are Queries which show the SQL and SSIS Packages running in Files (SQL Queries & SSIS Queries)
### There is A Mapping Sheet which indicates the structure between Source And Destination


# DWH Inights Description:
•  Total Sales: 84.23K \
•  Delivered: 2995 orders have been successfully delivered. \
•  Pending Delivery: 6800 orders are awaiting delivery. \
•  Delivery in Progress: 3459 orders are currently in the delivery process. \
•  Cancelled: 300 orders were cancelled. \
•  Received: 7544 items have been received by customers. \
•  Returned: 194 items have been returned. \
•	 Total Sales by Year: A line graph displaying monthly sales data for the year. \
o	 Sales show fluctuations, with a peak in August (13.9K) and lower sales in January (12.6K). \
•	 Delivery by Shipping Method: A pie chart showing the distribution of delivery methods: \
o	 Express: 47.38% \
o	 Standard: 39.8% \
o	 International: 12.32% \

  
![Screenshot 2024-09-11 113512](https://github.com/user-attachments/assets/f5b5e85a-f0cb-4ba8-9959-89de6bfcb448)



•	Count of Books: 11.13K total books in the system. \
•	Languages: 27 different languages available. \
•	Publishers: 2251 different publishers. \
•	Authors: 9235 different authors are represented. \
Count of Books per Language: \
o	English leads with 8911 books, followed by US English (1409), Spanish (218), British English (214), and French (144)
Sum of Price by Title: A bar chart showing prices by book titles, where popular titles like The Odyssey, Salem’s Lot, and Anna Karenina are priced around 149-121 units. \
Count of Books by Publisher: A bar chart showing books distributed by publishers \
o	Vintage leads with 318 books, followed by Penguin Books (261), Penguin Classics (184), and other major publishers like Mariner Books (150) and HarperCollins (111). \



![Screenshot 2024-09-11 113556](https://github.com/user-attachments/assets/45fbc96d-4a1e-447d-8610-cf208ceab3bc)


Customers: A total of 2000 customers. \
•  Customers per Shipping Method: A bar chart showing customer distribution by shipping method: \
•	Express: 3.5K customers. \
•	Standard: 3.0K customers. \
•	International: 1.0K customers. \
•	Priority: 0.1K customers. \
•  Customers per Country: A bar chart showing customer distribution by country: \
•	 China has the largest customer base (321), followed by Indonesia (217), Russia (122), Brazil (71), and smaller distributions across other countries like Philippines, Poland, and USA. \
•  Sum of Cost by Shipping Method: A bar chart showing costs by shipping method: \
• International: 25 units. \
•	Express: 12 units. \
•	Priority: 9 units. \
•	Standard: 6 units. \
• Orders per Customer: A bar chart and line graph showing orders per customer. The graph indicates steady customer orders across various individuals, peaking at 393 order.



![Screenshot 2024-09-11 113640](https://github.com/user-attachments/assets/873b46f9-c6a0-49a4-b992-baaad50376d4)
