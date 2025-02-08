-- crete db name db1
-- crete table employ
-- colname emplno. ename officcode job title
-- crete table offics officcode city state country 
-- renam etable offics to office 
-- rename employees to emp
-- empcol emp no to emp num
-- dro pall teh constraints from the table 



create database db1;
use db1;
create table offices (officecode int primary key,city varchar(20) not null,state varchar(20),country varchar(20) default "india");

create table employees (employeenum int primary key,ename varchar(20) not null,officecode int ,jobTitle varchar(20) not null,foreign key (officecode) references offices(officecode));

-- create table emp (employeenum int ,ename varchar(20),officecode int ,jobTitle varchar(20);
-- create table offices (officecode int ,city varchar(20),state varchar(20),country varchar(20) default "india");




alter table office drop primary key,;
alter table office modify officecode int,
modify city varchar(20),
modify country varchar(20);






alter table emp drop primary key;

alter table emp modify ename varchar(20), modify jobtitle varchar(20);
alter table emp drop foreign key emp_ibfk_1;
alter table emp drop key officecode;






















alter table emp rename column employeenum to en;























desc offices;
desc employees;

insert into offices
values (officecode,city,state,country),
(101,"bhopal","MP","India"),
(102,"gurgaon","up","India"),
(103,"indore","mp","India");

insert into employees
values(employeenum,ename,officecode,jobtitle),
(1,"akshey",101,"manager"),
(2,"cj",102,"ceo"),
(3,"raj",101,"seo");

rename table offices to office;
rename table employees to emp;

-- alter table emp drop primary key 
desc office;
alter table emp modify en int;

drop table emp;
drop table office;
drop database db1;