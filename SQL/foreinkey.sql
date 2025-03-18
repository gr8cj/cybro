create database lotus;
use lotus;
create table products(pid int primary key,pname varchar(40) not null ,price decimal(10,2));
create table users(uid int primary key,uname varchar(30) not null,mobile varchar(20) unique);
create table orders(
oid int primary key,userid int,pid int,foreign key(userid) references users(uid));
desc orders;
desc users;


alter table orders add foreign key(pid) references products(pid);
desc orders;

-- remove foregin kkey
-- #alter table tablename drop foreign key foreignkeyname;
-- #alter table  tablename drop key keyname;

alter table orders drop foreign key orders_ibfk_3;
alter table orders drop key userid;
desc orders;

-- alter table orders adddddd foreign key(userid) references users(uid);dsdjhgjjletcode
dgfd
hfgfff



df
fds
dfsd