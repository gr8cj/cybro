#check constraints
#alter table tablename add constraints check(colname);
alter table customers add constraint check(age>=18);
desc customers;