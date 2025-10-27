------------------------------------------------------------------------------------------------------------
--Query 1: List all orders along with the customer name and product name.
SELECT c.customername,o.orderid,o.orderdate,o.quantity,p.productname
FROM customers AS c
INNER JOIN orders AS o
ON c.customerid=o.customerid
INNER JOIN products AS p
ON o.productid=p.productid;
-------------------------------------------------------------------------------------------------------------
--Query 2: list of customers who ordered more at least one order
SELECT*FROM customers
INNER JOIN orders
ON customers.customerid=orders.customerid
WHERE quantity>=1;
-------------------------------------------------------------------------------------------------------------
--Query 3: List all customers and any orders they might have placed. Include customers who have not placed any orders.
SELECT *FROM customers
LEFT JOIN orders
ON customers.customerid=orders.customerid;
-------------------------------
--Query 4: list all products and how many times each one was ordered:
SELECT ORDERS.PRODUCTID,productname,count(orderid) AS total_orders
FROM orders
LEFT JOIN  products
ON orders.PRODUCTID=products.productid
GROUP BY ORDERS.PRODUCTID,PRODUCTNAME
ORDER BY total_orders DESC;
-------------------------------------------------------------------------------------------------------------
--Query 5: Find all orders along with product details, including any products that might not have been ordered.
SELECT PRODUCTS.PRODUCTID, ORDERID, ORDERDATE, PRODUCTNAME,PRICE,QUANTITY
FROM ORDERS
RIGHT JOIN PRODUCTS
ON  ORDERS.PRODUCTID=PRODUCTS.PRODUCTID
ORDER BY QUANTITY ASC;
-------------------------------------------------------------------------------------------------------------
--Query 6: to find which customers have made orders, and include customers even if they have never placed an order.
SELECT customers.customerid,customername, country, orderid,orders.customerid,productid,quantity,orderdate
FROM customers
RIGHT JOIN orders
ON customers.customerid=orders.customerid
ORDER BY QUANTITY ASC;
-------------------------------------------------------------------------------------------------------------
--Query 7: to list all customers and orders, showing NULLs where customers have not ordered or where orders have no customer info.
SELECT customers.customerid,customername, country, orderid,orders.customerid,productid,quantity,orderdate
FROM customers
FULL OUTER JOIN orders
ON customers.customerid=orders.customerid
WHERE customers.customerid AND orders.customerid AND orderid IS NOT NULL;
-------------------------------------------------------------------------------------------------------------
--Query 8: List all products and orders, showing NULLs where products were never ordered or orders are missing product info
SELECT products.productid,productname,price,orderid,customerid,orders.productid,quantity,orderdate
FROM products
FULL OUTER JOIN orders
ON products.productid=orders.productid
WHERE orders.productid AND orderid IS NOT NULL;
-------------------------------------------------------------------------------------------------------------
