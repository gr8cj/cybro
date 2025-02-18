-- wasq to fetch  products who have not sold  1

select productname,p.productcode from products p
left join orderdetails od 
on p.productcode=od.productcode
where od.productcode is null;


-- Question-2 Find the colors of boats reserved by  Lubber?


select color from boats b
inner join Reserves r on b.bid=r.bid
inner join sailors s on r.sid=s.sid
where sname="lubber";