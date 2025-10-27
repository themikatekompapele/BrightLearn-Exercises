--SQL query to retrieve all columns from the employees table.
select*
from employees_db;

--SQL query to find all the unique departments in the employees table
select distinct department
from employees_db;

--SQL query to retrieve all employees' first and last names, ordered by salary in descending order
select first_name, last_name, salary
from employees_db
order by salary DESC;

--SQL query to retrieve the top 5 highest-paid employees.
select first_name, last_name, salary
from employees_db
order by salary DESC
limit 5;

--SQL query to find employees who work in the IT department.
select first_name, last_name, department
from employees_db
where department=('IT');

--SQL query to find employees who work in the Finance department AND have a salary greater than 58,000.
select first_name, last_name, department, salary
from employees_db
where department=('finance') AND salary>55000;

--SQL query to find employees who work in the HR department OR the Marketing department.
select first_name, last_name, department
from employees_db
where department=('HR') OR department=('Marketing');

--SQL query to find employees who do not work in the IT department.
select first_name, last_name,department
from employees_db
where department NOT IN('IT');

--SQL query to find employees who are in the HR, IT, or Finance departments.
select first_name, last_name, department
from employees_db
where department IN('HR','IT','FINANCE');

--SQL query to find employees who are in the IT department, have a salary greater than 50,000, and are located in New York.
select first_name, last_name, department, salary, city
from employees_db
where department IN('IT') AND salary>50000 AND city IN('New York');

--SQL query to retrieve the first and last names of employees who work in the Finance or Marketing department,
earn more than 52,000, and order the results by salary in descending order.

select first_name, last_name, department, salary
from employees_db
where department IN('Finance','Marketing') AND salary>52000
order by salary DESC;

--SQL query to find all the unique cities where employees work, excluding those in the IT and HR departments
select distinct city
from employees_db
where department IN('Finance', 'Marketing');

--SQL query to retrieve employees who are NOT in the Finance department, 
 have a salary greater than 50,000, and order the results by hire date in ascending order.

--SQL query to retrieve employees who are NOT in the Finance department, have a salary greater than 50,000, and order the results by hire date in ascending order.
select first_name, last_name, department, salary, hire_date
from employees_db
where department NOT IN('Finance') AND salary>50000
order by hire_date ASC;

--SQL query to find the first 3 employees who work in either Chicago or Los Angeles and belong to the IT or Marketing department
select first_name, last_name, city, department
from employees_db
where city IN('Chicago','Los Angeles') AND department IN('IT','Marketing')
limit 3;




