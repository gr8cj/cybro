use db1;
show tables;
drop table emp;
drop table ofc;
-- Create a table "Department" with the following columns: Dept_id as the Primary Key and Auto Incremented Dept_name should not accept NULL values Location should have a default value of ‘New York’

create table depatrment (dept_id  int   auto_increment primary key ,dept_name  varchar(20) not null,location varchar(20) default "New York");
rename table depatrment to department;
-- Create a table "Employees" where:
-- •	Emp_id is the Primary Key and Auto Incremented
-- •	Emp_name should not be NULL
-- •	Salary should be greater than 30,000
-- •	Dept_id is a foreign key referencing the Dept_id column in the "Department" table

create table employees (emp_id int primary key auto_increment
,emp_name varchar(20) not null ,
salary decimal(10,2)
 check(salary>30000), 
 dept_id int ,
 foreign key (dept_id ) references department(dept_id));
 
 
 -- Insert three records into the "Employees" table.
 insert into employees (emp_name,salary)
 values("ayz",50000),
 ("byc",40000),("cdf",60000);

-- Write an SQL statement to update the Salary of an employee to 50,000 where Emp_id = 3.
update employees set salary = 50000 where emp_id=3;
-- Write an SQL statement to delete all employees who have a salary less than 25,000
select * from employees where salary <25000;

-- Write an SQL query to increase the salary by 10% for all employees whose Dept_id = 2.
update employees set salary= salary+(salary/10);
SET SQL_SAFE_UPDATES = 0;
select * from employees;


-- Write an SQL query to change the default value of ‘Location’ in the "Department" table to ‘California’.-- 


alter table department modify location varchar(20) default "california";


-- Write a query to add a Unique constraint on the Email column of the "Employees" table.


alter table employees add column email varchar(20) unique;

-- Write an SQL query to drop the NOT NULL constraint from the Emp_name column of the "Employees" table.


alter table employees modify emp_name varchar(20) ;
desc employees;

-- Write an SQL query to fetch all records from the "Employees" table where Salary is between 40,000 and 60,000.

select * from employees where salary between 40000 and 60000;

-- Q11 Write an SQL query to fetch all employees who are in ‘Sales’ department.


select * from employees inner join department using(dept_id) where dept_name = "sales"; 

-- Write a query to list the top 5 highest-paid employees.
select * from employees 
order by salary desc
limit 5;


-- Write a query to find employees whose name starts with ‘A’ and ends with ‘n’


select * from employees where emp_name like "a%" and emp_name like "%n"; 
select* from department;

-- Write a query to retrieve the count of employees in each department.


select dept_name, count(*) from employees inner join department using(dept_id)
group by dept_name;
select * from employees;


-- Write an SQL query to fetch only the distinct job titles from the "Employees" table.


select distinct job_role from employees;


-- Create a table "Projects" with the following:
-- •	Project_id as Primary Key
-- •	Project_name should not accept NULL values
-- •	Emp_id is a foreign key referencing the "Employees" table

create table projects (project_id  int primary key,project_name varchar(20) not null,emp_id int ,foreign key (emp_id) references employees(emp_id));  

-- Write an SQL query to retrieve all employees along with their department names.
select * from employees inner join department using(dept_id);

-- Write an SQL query to fetch employees who are not assigned any project.
select emp_name from employees left join projects p using (emp_id) 
where p.emp_id is null;

-- Write a query to retrieve the employee name along with their manager’s name from the "Employees" table. Assume Manager_id is a column in the table that references Emp_id.
select e.emp_id ,m.emp_id from employees e inner join employees m  using(emp_id);