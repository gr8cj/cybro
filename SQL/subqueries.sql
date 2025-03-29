use new1;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    manager_id INT
);
INSERT INTO Employees (emp_id, first_name, last_name, department_id, salary, manager_id) VALUES
(1, 'Michael', 'Anderson', 1, 5000, NULL),
(2, 'Sophia', 'Williams', 2, 6000, 1),
(3, 'David', 'Martinez', 1, 4500, 1),
(4, 'Olivia', 'Garcia', 3, 7000, 2),
(5, 'James', 'Rodriguez', 2, 5500, 1);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

 
create database subquery;
use subquery;
 

select * from employees;

select * from departments;
select first_name, last_name,salary from employees where
salary >= (select avg(salary) from employees );

 -- 2 List departments with employees earning more than 6000.
select department_name ,first_name,salary from departments inner join employees using(department_id)
where department_id = (select department_id from employees where salary >6000) ;

-- 3Find employees working in the same department as 'Jane rodriguez'.
 
 select * from departments;
 select * from employees;
 
 select first_name,department_id from employees inner join departments using (department_id) where
 department_id=(select  department_id from employees where first_name ="James");
 
 -- 3 Retrieve the name of employees who don’t have a manager.
select * from employees;
select * from employees where manager_id is null;
select * from departments;
-- 5 Find departments with no employees.
select department_id from employees  where department_id not in (select department_id from departments );

--                                                                                                        6 Get employees whose salary is higher than their manager's salary.
 
select e.emp_id , m.manager_id from employees e inner join employees m  using (salary) where e.salary < m.salary;
 select e.emp_id , m.manager_id from employees e inner join employees m  using (salary) where salary > (select salary from employee where salary >;
 --                                                                                                       7 List the highest-paid employee in each department.
select max(salary),(select first_name from employees ) from employees inner join departments using(department_id) group by department_id;
 select max(salary),department_id from employees group by department_id;
 select max(salary) from employees;
 
 -- 8 Display employees working in HR or IT using a subquery.
 select first_name from employees where department_id in (select department_id from departments where department_name in ("hr","it"));
 
 -- 9List employees with the same salary as ‘david martinez’.
select first_name from employees where salary in ( select salary from employees where first_name="david" and last_name="martinez");

-- 10  Find the second-highest salary in the Employees table.
select concat(first_name," " , last_name) as name ,salary from employees order by salary  desc
limit 1 offset 1;

-- 11 ist employees who are managers.


select concat(first_name," " , last_name) as name  from employees where manager_id in(select manager_id from employees);


-- 12 Display the department with the highest average salary.


select department_name from departments inner join employees using(department_id) where salary in (select max(salary) from employees);

-- 13  Get employees who work under 'michael anderson'.


select concat(first_name," " , last_name) as name from employees where manager_id in (select emp_id from employees where first_name ="michael" and last_name="anderson");

-- 14 Retrieve employee details whose salary is above the company average


select * from employees where salary > (select avg(salary) from employees);
-- 15 Find the department with the most employees.

select count(*) as emp_count,department_id from employees  group by department_id order by  emp_count desc
limit 1;

-- 16 List employees whose salary is below the average of all employees.


select * from employees  where salary < (select avg(salary) from employees);

-- 17 Find employees in the same department as their manager.
select * from employees;

select concat(first_name," " , last_name) as name from employees where manager_id in (select emp_id from employees  );
select department_id , group_concat(emp_id)  from employees  group by department_id;
-- 18 get employee names who are in the IT department but not managed by 'michael  anderson'.

select * from employees where manager_id not in (select emp_id from employees where first_name="michael");

-- 19 Find employees who have the same manager as 'sophia  williams'.


select * from employees where manager_id in ( select emp_id from employees where first_name="sophia");


-- 20   Retrieve employees whose salary is above the salary of any employee in HR


select  first_name,salary from employees where  salary >(select max(salary) from employees where department_id = 1);