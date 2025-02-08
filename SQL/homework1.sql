alter table orders drop primary key;
alter table orders modify oid int;
desc orders;

alter table orders drop foreign key  orders_ibfk_2;
alter table orders drop key pid;

alter table products drop primary key;
alter table products modify pid int;
desc users;
alter table products modify pname int;

alter table users drop primary key;
alter table users modify uid int;
alter table users modify uname varchar(50);
alter table users modify mobile varchar(30);

alter table 
