Null Functions
--Question 1:
SELECT employee_id, name, salary
FROM employees
WHERE salary ISNOTNULL;

--Question 2:
SELECT employee_id, name, departments
FROM employees
WHERE department ISNOTNULL;

--Question 3:
SELECT order-id, customer_id
FROM orders
WHERE customer_id ISNULL;

--Question 4:
SELECT order_id, customer_id,delivery_date
FROM orders
WHERE delivery_date ISNOTNULL;

--Question 5:
SEKECT student_id, name,grade
FROM students
WHERE grade ISNOTNULL;

--Question 6:
SELECT COUNT(grade) AS not_graded
FROM students
WHERE grade ISNULL;

--Question 7:
SELECT product_id,name,price,(price+discount) AS final_price
FROM products
WHERE discount ISNOTNULL;

--Question 8:
SELECT COUNT(email) AS missing_email_count
FROM customers
WHERE email ISNULL;

--Question 9:
SELECT customer_id,name,email
FROM customersWHERE email ISNOTNULL;

--Question 10:
SELECT payment_id,method,status
FROM payments
WHERE method ISNOTNULL;

--Question 11:
SELECT item_id,name,quantity AS quantity_checked
FROM inventory
WHERE quantity_checked ISNOTNULL;

--Question 12:
SELECT COALESCE (emp_id,bonus,commission)
FROM employees_extra;

--Question 13:
SELECT COUNT(room) AS no_room_count
FROM classes
WHRE room ISNULL;

--Question 14:
SELECT student_id, date, attendance_status
FROM attendance
WHERE attendance ISNOTNULL;

--Question 15:
SELECT account_id,account_type,balance
FROM bank_accounts
WHERE account_type AND balance ISNOTNULL;

--Question 16:

SELECT project_id,table,start_date
FROM projects
WHERE start_date ISNOTNULL;

--Question 17:

SELECT reviews_id, project_id, comment,rating
FROM revenue
WHERE comment AND rating ISNOTNULL;

--Question 18:
SELECT COALESCE (supplier_id,name,phone,alt_phone)
FROM suppliers;

--Question 19:
SELECT user_id,theme-set,language_set,timezone_set
FROM user_settings
WHERE theme,language AND timezone ISNOTNULL;

--Question 20:
SELECT record_id,machine_id,issue_log,technician_name
FROM maintenance
WHERE issue AND technician ISNOTNULL;

