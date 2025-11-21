--query to display overview of data
SELECT * FROM `retail-478918.sales.shoppingtrends` LIMIT 1000;

--Query to select all transactions in year 2023

SELECT * FROM `retail-478918.sales.shoppingtrends`
WHERE EXTRACT (YEAR FROM DATE) = 2023;

--Query to retrieve data where total amount>avg_total_amount
SELECT AVG(total_amount) AS avg_total_amount
FROM `retail-478918.sales.shoppingtrends`;

--455.999999999999

SELECT * 
FROM `retail-478918.sales.shoppingtrends`
WHERE total_amount>455.999999999999;

--query to determine total revenue
SELECT SUM(total_amount) AS total_revenue
FROM `retail-478918.sales.shoppingtrends`;

--query to select distinct product category
SELECT DISTINCT 'product_category'
FROM `retail-478918.sales.shoppingtrends`;

--query to calculate quantity sold per category
SELECT DISTINCT 'product_category', COUNT('transaction_id') AS total_units_sold
FROM `retail-478918.sales.shoppingtrends`
GROUP BY product_category
ORDER BY total_units_sold DESC;

--query to create age buckets
SELECT 'customer_id','age',
CASE
    WHEN age < 30 THEN 'Youth'
    WHEN age BETWEEN 30 AND 59 THEN 'Adult'
    WHEN age > 60 THEN 'Senior'
END AS age_group
FROM `retail-478918.sales.shoppingtrends`
GROUP BY customer_id, age;

--query to determine number of transactions with high value transactions
SELECT 'gender', COUNT('customer_id') AS number_of_units,'total_amount',
CASE 
WHEN total_amount > 500 THEN 'high_value_transactions'
END AS transaction_type
FROM `retail-478918.sales.shoppingtrends`
GROUP BY gender,total_amount
ORDER BY number_of_units DESC;

--query to select product category where total revenue exceeds 5000
SELECT DISTINCT 'product_category',SUM(total_amount) AS total_revenue
FROM `retail-478918.sales.shoppingtrends`
HAVING total_revenue>5000;

--query to categorize price per unit
SELECT 'transaction_id','price_per_unit',
CASE WHEN price_per_unit<50 THEN 'Cheap'
     WHEN price_per_unit BETWEEN 50 AND 200 THEN 'Moderate'
     WHEN price_per_unit > 200 THEN 'Expensive'
END AS Unit_Cost_Category
FROM `retail-478918.sales.shoppingtrends`
GROUP BY transaction_id,price_per_unit,unit_cost_category;

--query to display all transactions where customers aged>40
SELECT 'transaction_id', 'age','total_amount',
CASE WHEN total_amount>1000 THEN 'High'
ELSE 'Low'
END AS Spending_Level
FROM `retail-478918.sales.shoppingtrends`
WHERE age>40;
