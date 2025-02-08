show databases;
use sakila;
show tables;
desc actor;

-- syntax create database databasename 
create database cybrom;
show databases;
use cybrom;

# syntax  create table tablename(colname1 datatype,colname2 datatype,colname4 datatype);
create table student(sid int,sname varchar(20),age tinyint,fees decimal(10,2),d_o_b date,mobile varchar(20));
 
desc student;

#rename table oldtablename to newtablename;
rename table student to stu;
desc stu;
select * from stu;

drop table stu;
drop database cybrom;

create database office;
use office;
create table emp(eid int,ename varchar(20),age tinyint,d_o_j timestamp,salary decimal(16,2),mobile varchar(20));

desc emp;
select * from employee;
alter table emp modify d_o_j date;
rename table emp to employetable;


rename table employetable to employee;

alter table employee add column city varchar(20);
alter table employee drop column city;
alter table employee rename column mobile to phone;
alter table employee rename column mobile to phone;

-- alter
-- rename column
-- alter table tablemane rename column
-- columnoldname to columnewname 

alter table employee rename column mobile to phone;
select * from employee;
desc  employee;

alter table employee rename column phone to pnumber;
alter table employee rename column pnumber to mobile;
desc employee;



alter table employee modify column ename varchar(50);

desc employee;

update employee set ename="cybrom"
where eid=1;

set sql_safe_updates=0;


-- 


-- insert into tablename (col1,col2,col3...coln);
insert into employee(eid,ename,age,d_o_j,salary,mobile)
values
(1,"ayush",21,"2025-01-21",500000,"+9175998292");
select * from employee;


-- multiple record insertion

insert into employee(eid,ename,age,d_o_j,mobile)
values
(2,"abc",22,"2022-02-22","+912y9848"),
(3,"bcs",23,"2022-09-22","+918963984");

select * from employee;
 
 modify employee add 
 
use office;
desc employee; 
select * from employee;
insert into employee
set eid=104,ename="zyx",age=32,d_o_j="2022-03-3",salary=65000,mobile="+917658768";


update employee set salary=799900
where eid=2;
update employee set salary=90000
where eid=3;
select * from employee;
start transaction;

delete from employee where eid=104;

  rollback;
delete from employee where eid=104;
 truncate table employee;
 drop table employee;
 drop database office;
 use bank;
