--List all records where Size is missing and the purchase_amount is greater than 50
SELECT customer_id,size,purchase_amount,item_purchased
FROM shoping_trends
WHERE size IS NULL AND purchase_amount>50;

--List the total number of purchases grouped by Season
SELECT season,COUNT(customer_id) AS total_number_of_purchases
FROM shoping_trends
GROUP BY Season
ORDER BY total_number_of_purchases DESC;

--Count how many customers used each Payment Method, treating NULLs as Not Provided
SELECT payment_method,COUNT(customer_id) AS total_number_of_customers
FROM shoping_trends
GROUP BY payment_method
ORDER BY total_number_of_customers DESC;

--List of customers  where promo_used is null and review ratings<3
SELECT customer_id, promo_code_used, review_rating,item_purchased
FROM shoping_trends
WHERE promo_code_used IS NULL AND review_rating<3.0;

--Group customers by shipping type and return avg_purchase_amount
SELECT round(avg(purchase_amount),2) AS avg_purchase_amount,
       shipping_type
FROM shoping_trends
GROUP BY shipping_type;

--List total purchases and group them by location where total purchases>5
SELECT COUNT(customer_id) AS total_purchases,location
FROM shoping_trends
GROUP BY location
HAVING total_purchases>5;

--Categorize customers by the amount they spend
SELECT customer_id,purchase_amount,
CASE 
    When purchase_amount>80 then 'High'
    When purchase_amount between 50 and 80 then 'Medium'
    ELSE 'Otherwise'
END AS Spender_Category
FROM shoping_trends;

SELECT customer_id,color,previous_purchases
FROM shoping_trends
WHERE  previous_purchases IS NULL AND color IS NOT NULL;

--Group  customers by frequency of purchase and return total amount spent
SELECT frequency_of_purchases,
       SUM(purchase_amount) AS total_purchase_amount
FROM shoping_trends
GROUP BY frequency_of_purchases;

--Group purchases by category and return total purchases
SELECT category, COUNT(category) AS total_purchases
FROM shoping_trends
WHERE category IS NOT NULL
GROUP BY category;

--Group purchases by location and return total purchase amount
SELECT location, SUM(purchase_amount) AS total_purchase_amount
FROM shoping_trends
GROUP BY location
LIMIT 5;

--Group customers by gender and size  and return total number of colors,including null entries
SELECT gender,size, COUNT(color)
FROM shoping_trends
WHERE color IS NOT NULL
GROUP BY gender,size;

--identify items purchased and return shipping type count,including null entries
SELECT DISTINCT item_purchased,shipping_type,
       COUNT(shipping_type)
FROM shoping_trends
WHERE shipping_type IS NOT NULL
GROUP BY item_purchased, shipping_type;

--total number of customers with missing review rating, grouped by payment method
SELECT payment_method,Count(customer_id) AS customers_no_review_rating    
FROM   shoping_trends
WHERE review_rating IS NULL
GROUP BY payment_method;

-- group customers by category and return avg_review_rating
SELECT category, 
    round(avg(review_rating),2) AS avg_review_rating
FROM shoping_trends
GROUP BY category
HAVING avg_review_rating>3.5;

--list two rows with missing color and return the average age for the rows.
SELECT DISTINCT color,
       round(avg(age),2) AS avg_age
FROM shoping_trends
WHERE color IS NOT NULL
GROUP BY color
LIMIT 2;       

--Categorize Shipping Type By Delivery Speed and return customer count for each category
SELECT shipping_type, Count(customer_id) AS customer_count,
 CASE 
    When shipping_type = 'Express' OR shipping_type = 'Next Day Air' THEN 'Fast'
    When shipping_type = 'Standard' THEN 'Slow'
    ELSE 'Other'
END AS Delivery_Speed
FROM shoping_trends
GROUP BY shipping_type;

--list of customers who used the promo code and purchase amount IS NULL
SELECT customer_id, purchase_amount, promo_code_used
FROM shoping_trends
WHERE promo_code_used='Yes' AND purchase_amount IS NULL;

--Group by Location and show the maximum Previous Purchases
SELECT location, MAX(previous_purchases) AS max_previous_purchases
FROM shoping_trends
WHERE review_rating>4.0
GROUP BY location;

--List records where shipping_type is missing and purchase_amount is between 30 and 70
SELECT customer_id, shipping_type,purchase_amount,item_purchased
FROM shoping_trends
WHERE shipping_type IS NULL AND purchase_amount BETWEEN 30 AND 70;
