create database new;
use new;
CREATE TABLE SAILORS (
    sid INT PRIMARY KEY,
    sname VARCHAR(50),
    rating INT,
    age DECIMAL(5,1)
);

INSERT INTO SAILORS (sid, sname, rating, age) VALUES
(22, 'Dustin', 7, 45),
(29, 'Brutus', 1, 33),
(31, 'Lubber', 8, 55.5),
(32, 'Andy', 8, 25.5),
(58, 'Rusty', 10, 35),
(64, 'Horatio', 7, 35),
(71, 'Zorba', 10, 16),
(74, 'Horatio', 9, 35),
(85, 'Art', 3, 25.5),
(95, 'Bob', 3, 63.5);

CREATE TABLE RESERVES (
    sid INT,
    bid INT,
    day DATE,
    PRIMARY KEY (sid, bid, day)
);

INSERT INTO RESERVES (sid, bid, day) VALUES
(22, 101, '1998-10-10'),
(22, 102, '1998-10-10'),
(22, 103, '1998-10-08'),
(22, 104, '1998-10-07'),
(31, 102, '1998-11-10'),
(31, 103, '1998-11-06'),
(31, 104, '1998-11-12'),
(64, 101, '1998-09-05'),
(64, 102, '1998-09-08'),
(74, 103, '1998-09-08');



CREATE TABLE BOATS (
    bid INT PRIMARY KEY,
    bname VARCHAR(50),
    color VARCHAR(20)
);

INSERT INTO BOATS (bid, bname, color) VALUES
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');




-- Question -1 Find the names of sailors who have
-- reserved boat 103?
select sname from sailors inner join reserves using(sid) inner join boats using(bid)
where bid=103;


 -- Question-2 Find the colors of boats reserved by
-- Lubber?

select color from sailors inner join reserves using (sid) inner join boats using (bid) where sname="Lubber";
-- Question -3 Find the names of sailors who have reserved a red or a green boat?

select sname from sailors inner join reserves using (sid) inner join boats using (bid) where color="red" or  color="green";

--  4 Find the names of sailors who have reserved at least one boat.
select sid ,count(bid) as counts from sailors inner join reserves using (sid) inner join boats using (bid) group by sid
having counts >1;

--  5 Find the names of sailors who have not reserved any boat.
select sname ,count(bid) as bd from sailors inner join reserves using (sid) inner join boats using (bid) group by (sid)
having bd>1;

-- 6 Find the names of sailors along with the number of boats they have reserved.
select sname ,count(bid) as bd from sailors inner join reserves using (sid) inner join boats using (bid) group by (sid);


--  7 Find the names of sailors who have reserved both a red and a blue boat.
select sid from sailors inner join reserves using (sid) inner join boats using (bid) where color="red" and  color="blue";
--  8  Find the names of sailors who have reserved only red boats.
select sname  from sailors inner join reserves using (sid) inner join boats using (bid) where color="red";

-- 9  Find the sailor(s) who has reserved the maximum number of boats.

select sname ,count(bid) as bd from sailors inner join reserves using (sid) inner join boats using (bid) group by (sid)
order by bd desc 
limit 1 ;
--  10  Find the names of sailors who have reserved all types of boats (red, blue, and green).
select sname ,color from sailors inner join reserves using (sid) inner join boats using (bid) ;
-- 11  Find the names of sailors who have reserved boats on two or more different dates.
select sname, (count(distinct(day))) as d_day from  sailors inner join reserves using (sid) inner join boats using (bid) group by sname
;
-- 12  Find the boat names that have never been reserved.

-- 13   Find the names of sailors who have reserved the same boat more than once on different dates.
select sname, (count(distinct(day))) as d_day from  sailors inner join reserves using (sid) inner join boats using (bid) group by sname
;

-- 14   Find the sailors who have reserved boats before the year 1998.
select distinct sname,year(day) as years from sailors inner join reserves using(sid) where year(day) ="1998";

-- 15 Find the sailors who have reserved a boat on the latest date available in the table.
select sname,max(day) from sailors inner join reserves using(sid) 
group by sname ;
-- 16 Find the number of boats reserved by each sailor, sorted in descending order of the count.
select sname ,count(bid) as count_sid from sailors inner join reserves using(sid) group by sname;
--                                                                                                         17  Find the sailors who have reserved boats on consecutive days.

 --                                                                                                         18  Find the names of sailors who have reserved at least two different boats on the same day.
 select sname from sailors inner join reserves using(sid)
 group by sname having count(day)>1 ;
--                                                                                                          19   Find the sailors whose name starts with ‘A’ and have reserved a boat.
select * from sailors;
select sname from sailors inner join reserves using(sid) where sname like '%A%';
-- 20  Find the colors of boats that have been reserved at least once.
select color,count(color) from boats inner join reserves using(bid) group by color;
--   21   Find the boats that were reserved in October 1998.

select day from reserves where day like "1998-09%";
-- 22  Find the sailors who have reserved boats but do not have a rating greater than 5.
select distinct sname from sailors inner join reserves using(sid) where rating >5;
-- 23  Find the total number of reservations made for each boat.
select bid,bname,count(bname) as counts from boats right join reserves using(bid) group by bid;