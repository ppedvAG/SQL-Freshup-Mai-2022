--Latch.. Sperre bei gleichzeitigne Zugriffen auf Blöcke und Seiten
--Single Thread

--Welche ... greifen immer wieder auf die selbe Seite zu...?


Kunden ---> "Messdaten"  (IDs.. )

--1 2 3 4 ... 10000   meist sind auf diesen ID CL IX weil OK per Oberfläche

--CL IX = Tabelle in immer sortierter Form

insert into customers (customerid, companyname) values ('ppedv', 'Fa. ppedv')

select  * from customers

--PK macht autom. CL IX--> ID sortiert
--daher können in diesem Fall nie paral.. mehrre gleichzeitig wegschreiben

--GUID
select newid().. klappt aber doof... 

--Latchlose..in Memory Tabellen