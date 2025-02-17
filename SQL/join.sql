-- wasq to fetch  products who have not sold  1

select productname,p.productcode from products p
left join orderdetails od 
on p.productcode=od.productcode
where od.productcode is null;
