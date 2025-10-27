--List all distinct departments in the students table
select*distinct departments
from students;

--Get the average age of students per department.
select department, age AS avg_age
from students;

--Show departments with more than 1 student.
select department, student_id AS student_count
from students
having student_id>1;

--Get all students whose age is between 21 and 23.
select student_id, name, age, department
from students
where age between 21 and 23;

--List all students in the IT or HR department who are older than 21.
select student_id, anme, age, department
from students
where department IN('IT' or 'HR') AND age>21;

--Show total credits per department, only for departments with more than 5 total credits
select department, credits AS total_credits
from courses
having total_credits>5;

--List all courses that do not have 4 credits.
select course_id, course_name, department, credits
from courses
where credits<4;

--Show the top 3 courses by credits in descending order.
select course_id, course_name, credits
from courses
order by credits DESC;

--Get the maximum, minimum, and average grade across all enrollments.
select max(grade) AS maximum_grade
from enrolments;

select min(grade) AS minimum_grade
from enrolments;

select avg(grade) AS avg_grade
from enrolments;

--Count how many enrollments exist per course.
select COUNT(enrollment) AS enrollment_counts
from enrollment;

--Find total salary and total bonus per department.
select department, sum(salary) AS total_salary, sum(bonus) AS total_bonus
from salaries;

--Show departments where average salary is above 55,000.
select department, avg(salary) AS avg_salary
from salaries
having avg_salary>55000;

--List employees whose salary plus bonus is greater than 60,000.
select employee_id, name, salary, bonus, sum(salary + bonus) AS total_compensation
from salaries
having total_compensation>60000;

--Show total and average budget per department. Only include departments with average budget above 70,000.
select department, sum(budget) AS total_budget, avg(budget) AS avg_budget
from projects
having ave_budget>70000;

--List all projects with budgets between 50,000 and 120,000, excluding the Marketing department.
select project_id, project_name, department, budget
from projects
where budget is between(50000 and 120000) AND department not(marketing);



