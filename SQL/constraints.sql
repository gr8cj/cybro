create database bank;
use bank;
create table customers
(cid int primary key,cname varchar(20) not null ,age tinyint,gender varchar(20),mobile varchar(20) unique,city varchar(20) default "bhopal",check (age>=18));
desc customers;

#remove primart key  
#alter table tablename drop primary key;
alter table customers drop primary key;
alter table customers modify cid int;
alter table customers modify cname varchar(40);
alter table customers modify city varchar(33);
desc customers;


#alter table tablename drop constraint constraintname;

alter table customers drop constraint customers_chk_1;

##alter table tablename drop primary key,uniqe ,check;
#modify default nt nal


-- alter table tablename drop  primary key,uniqe ,check uniquekeyname

alter table customers drop key mobile;
alter table customers drop index mobile;

select * from customers;
desc customers;












#add constraints
-- primary key 
-- alter table tablename add primary key (colname)

alter table customers add primary key (cid);
desc customers;

#not null
#alter table tablename modify colmname datatye notnull;'
alter table customers modify cname varchar(50) not null;
desc customers;

#default 
#alter table tablename modify conlname datatype default ;
alter table customers modify city varchar(50) default "bhopal";
desc customers;

#unique
#alter table tablename add unique(colname);
alter table customers add unique(mobile);
desc customers;

#check constraints
#alter table tablename add constraints check(colname);
alter table customers add constraint check(age>=18);
desc customers; 
