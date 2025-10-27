--Query to Join students and grades to display only students who have grades.
select student_id, student_name, grade,
from students
inner join grades
on students.student_id=grades.student_id;

--Query to Display all employees and the departments they belong to. Include employees with no department.
select emp_id, emp_name, dept_name
from employees
left join departments
on employees_emp_id=departments.emp_id;

--Query to Display a complete list of products and their quantities sold. Include products with no sales and sales for unknown products.
select product_id, product_name, quantity
from products
full outer join sales
on products.product_id=sales.product_id;

--Query to Display all orders and indicate whether the customer is “New” or “Returning”.
select order_id, customer_id, amount, customer_name
from order
full outer join customers
on orders.customer_id=customers.customers_id
case
  when customer_id is not null then 'returning customer'
  else 'new customer'
end AS customer type;

--Query to Show total sales per region and include regions with no sales.
select region_id, region_name, SUM(amount) AS total_sales_per_region
from regions
left join sales
on regions.region_id=sales.region_id
group by region_id, region_names;

--Query to Classify students based on attendance.
select student_id, name, days present
case 
    when days present between 14 and 20 then 'excellent'
    when days present between 5 and 13 then 'needs improvement'
    when days<=5 then 'poor attendance'
else 'no record'
from students
left join attendance
end AS students.student_id=attendance.student_id;

--Query to Show number of tasks per project. Only include projects that have tasks.
select project_id, name, COUNT(task_id) AS task_count
from projects
inner join tasks
on projects.project_id=tasks.project_id
group by project_id, name, tasks_count;

--Query to Classify customers based on whether they returned anything and filter by high order total.
select cust_id, order_total, return_total
case 
    when customer_return is not null then 'returned'
    else 'no return'
end AS return_status
from orders
full outer join returns
on orders.cust_id=returns.cust_id
where order_total>100;

--Query to Count how many times each user logged in.
select user_id, name
COUNT(login_dates) AS login_count
group by user_id, name
order by login_count DESC;

--Query to Show all teachers and the subjects they teach. If no subject, label appropriately.
select teacher_id, teacher_name, subject_name
case 
    when subject_id=1 then 'math'
    when subject_id=2 then 'science'
    when subject_id=3 then 'history'
else 'no subject assigned'
end AS subject_name
from teachers
left join subjects
on teachers.teacher_id=subjects.teacher_id
order by teacher_name ASC;






