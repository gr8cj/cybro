use dummy;
-- select * from offices;
-- show tables;
-- desc offices;
-- desc customers;
   select 1+1;
select concat("ayush"," " ,"jha");
select now();
-- select from
-- syntax
-- select column_list from tablename; 
select * from customers;


-- wasq to fecth costomersname coustomernumber city, state country
-- from customers table;
select customername,customernumber,city,state,country,1,"meeeee" from customers;
select * from orderdetails;
select ordernumber,productcode,(quantityordered*priceeach) as ordervalue from orderdetails;
select * from employees;

select employeenumber ,concat(firstname," ",lastname) as employeename,jobtitle from employees;

-- wsq to fetch ordernumber 
select ordernumber,orderdate,status from orders;

-- sorting of data 
-- order by clause
-- select calumnname from tablename;
-- order by columnname1 {ase|desc},colname2 {asc|desc}
-- by default assending

select orderdate,ordernumber from orders;
-- wsq to sort the customers by their last name in assending order display concat lastnamr contact first name

select contactlastname,contactfirstname from customers order by contactlastname asc;
select contactlastname,contactfirstname from customers order by contactlastname desc;
select contactlastname,contactfirstname from customers order by contactlastname desc ,contactfirstname desc;