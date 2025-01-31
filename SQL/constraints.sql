#check constraints
#alter table tablename add constraints check(colname);
alter table customers add constraint check(age>=18);
desc customers;


create database collage;
use collage;
create table stu(sid int primary key,sname varchar(30) not null,rollno int unique,age tinyint,check (age >=18) );
select * from stu;
desc stu;
alter table stu add column subject varchar(10);

create table subjects(sid int  primary key,  sname varchar(20) not null,allowed varchar(20) default "yes");

create table class(cid int primary key,section varchar(12), subid int ,foreign key(subid) references subjects(sid));

rename table stu to student;
rename table student to stu;
show databases;
desc stu;