--Query 1:To select all columns in the table
SELECT * FROM TRANSACTIONS;

--Query2: To disply only the transaction ID,Date,Customer ID
SELECT transaction_id,date,customer_id
FROM transactions;

--Query 3: To select distinct product categories in the dataset
SELECT DISTINCT product_category
FROM transactions;

--Query 4: To select distinct genders in the dataset
SELECT DISTINCT gender
FROM transactions;

--Query 5: To select all transactions where age>40
SELECT * FROM transactions
Where AGE>40;

--Query 6: To select all transactions where Price Per Unit is between 100 and 500:
SELECT * FROM transactions
Where PRICE_PER_UNIT Between '100' and '500';

--Query 7: to display transactions where product category is 'beauty' or 'electronics'
SELECT * FROM TRANSACTIONS
Where PRODUCT_CATEGORY=('Beauty' OR 'ELECTRONICS');

--Query 8: To display all transactions where the product category is NOT clothing.
SELECT * FROM TRANSACTIONS
Where product_category NOT IN('Clothing');

--Query 9: to display where quanity is greater than or equal to 3
SELECT*FROM TRANSACTIONS
WHERE QUANTITY>=3;

--Query 10: count of total number of transactions
SELECT COUNT(transaction_id) AS total_number_of_transactions
FROM TRANSACTIONS;

--Query 11: to find the average age of customers
SELECT avg(age) AS avg_age
FROM TRANSACTIONS;

--Query 12: total quantity of products sold
SELECT sum(quantity) AS total_quantity_sold
FROM TRANSACTIONS;

--Query 13: maximum total amount spent in a single transaction
SELECT max(total_amount) AS max_total_amount
FROM TRANSACTIONS;

--Query 14: minimum price in the dataset
SELECT min(price_per_unit) AS min_price_per_unit
FROM TRANSACTIONS;

--Query 15: number of transactions per product category
SELECT product_category,
       count(transaction_id) AS Transaction_count
FROM TRANSACTIONS
GROUP BY product_category;

--Query 16: total revenue (total amount) per gender
SELECT sum(total_amount) AS total_revenue,gender
FROM TRANSACTIONS
GROUP BY gender;

--Query 17: average price per unit per category
SELECT avg(price_per_unit) AS avg_price,product_category
FROM TRANSACTIONS
GROUP BY product_category;

--Query 18:total revenue per category where total revenue>10000
SELECT sum(total_amount) AS total_revenue, product_category
FROM TRANSACTIONS
GROUP BY product_category
HAVING total_revenue>10000;

--Query 19: average quantity per product category where avg_quantity>2
SELECT product_category, avg(quantity) AS avg_quantity
FROM TRANSACTIONS
GROUP BY product_category
HAVING avg_quantity>2;

--Query 20: flag total amount spent 
SELECT transaction_id,total_amount,
CASE
    When total_amount >1000 then 'High'
    ELSE 'Low'
END AS Spending_Level
FROM TRANSACTIONS;

--Query 21: age group column
SELECT customer_id, age,
CASE 
    When age<30 then 'Youth'
    When age between '30' and '59' then 'Adult'
    When age>=60 then 'Senior'
END AS Age_Group
FROM TRANSACTIONS;
