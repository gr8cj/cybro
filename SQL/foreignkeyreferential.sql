

create database croma;
use croma;

create table users(uid int primary key,
uname varchar(20),mobile varchar(20));

create table orders(oid int primary key,
userid int,pid int,foreign key(userid) references users(uid));

insert into users(uid,uname,mobile)
values(1,"xyz","+918367464"),
(2,"def","+9173646643"),
(3,"pqr","+9183877364"),
(4,"abc","+91836746467"),
(5,"prf","+9148467463");

select * from users;

insert into orders(oid,userid,pid)
valuesnbvbnbvnb
(101,1,202),
(102,2,201),(103,1,203),(104,3,201),(105,2,202);

insert into orders(oid,userid,pid)
values(106,10,201);

select * from users;
select * from orders;

delete from users where uid=5;

delete from users where uid=1;

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;

desc orders;

alter table orders add foreign key (userid) 
references users(uid) on delete set null;

alter table orders drop foreign key orders_ibfk_5;
alter table orders drop key userid;

alter table orders add foreign key (userid) 
references users(uid) on delete cascade;

select * from users;
select * from orders;
delete from users where uid=3;

# update 
update users set uid=10
where uid=2;

update users set uid=12
where uid=4;

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;

alter table orders add foreign key (userid) references users(uid)
on update cascade on delete cascade;

drop database croma;

select * from users;
select * from orders;

start transaction;
delete from orders where userid=2;
rollback;

update orders set userid=20
where userid=2;

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;
desc orders;

alter table orders add foreign key(userid) references
users(uid) on update cascade;



create table employees
(eid int primary key auto_increment,ename varchar(20),
salary decimal(10,2));

insert into employees(ename,salary)
values("abc",50000),
("def",60000);

select * from employees;

insert into employees 
(ename,salary) values ("pit",876467),("okl",650000);

alter table employees auto_increment 100;

delete from employees where eid=101;


set @num=0;
update employees set eid=@num:=@num+1;

set sql_safe_updates=0;
select * from employees;
ytuytuyjhgjhgjhgjh
alter table employees drop primary key ,mkjdjfjdkfjskfdjsodify eid int;

desc employees;



yoooooooooooofv,jhkjhvxhjhjjjjgjgjggfhhgffghfghgfhg