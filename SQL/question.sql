create database db2;
use db2;
create table ofc(oid int primary key,oname varchar(20) unique,age tinyint,ofcode int unique,state varchar(20) not null, check (age>=18));
alter table ofc rename column ofcode to ofc;
alter table ofc drop key ofc ;