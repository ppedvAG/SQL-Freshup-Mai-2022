--COLUMNSTORE

--kopie der KU
select * into ku3 from ku

select top 3 * from ku
-WHERE , AGGREGAT

Umsatz Ang Nr 3 London

select city , sum(unitprice*quantity)  from ku
where employeeid = 3 and city = 'London'
group by city


select city , sum(unitprice*quantity)  from ku3
where employeeid = 3 and city = 'London'
group by city


set statistics io, time on

 53000  CPU  250ms  Dauer 50ms
https://codeshare.io/dwxoBK

nach IX... 50 Seiten  bzw 0 / 1 ms



select city , sum(unitprice*quantity)  from ku
where  customerid = 'ALFKI'-- employeeid = 3 and city = 'London'
group by city

select city , sum(unitprice*quantity)  from ku3
where  customerid = 'ALFKI'-- employeeid = 3 and city = 'London'
group by city

--KU3 = 1,44 MB  JA STIMMT
--diese 1,44 MB kommen in RAM
--Woher: ..kompresssion .. 40 bis60%
--nach Archivkompression 380kb