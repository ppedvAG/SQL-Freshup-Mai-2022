use TemporalTables
GO

insert into Contacts 
(Lastname,Firstname,Birthday, Phone, email) 
select 'Kent', 'Clark','3.4.2010', '089-3303003', 'clarkk@krypton.universe' 

insert into Contacts 
(Lastname,Firstname,Birthday, Phone, email) 
select 'Wayne', 'Bruce','3.4.2012', '08677-3303003', 'brucew@gotham.city' 

--Und nun die ?nderungen, die zu einer Versionierung der Datens?tze f?hrt 
WAITFOR DELAY '00:00:02'
update contacts set email = 'wer@earth.de' where cid = 1 
update contacts set Phone = 'w3434' where cid = 1 
update contacts set Lastname = 'Wayne' where cid = 1 

WAITFOR DELAY '00:00:02'

select getdate() as Zeit into #Zeit

WAITFOR DELAY '00:00:02'


update contacts set email = 'asas@earth.de' where cid = 1 
update contacts set Phone = 'w34sasaa34' where cid = 2 
update contacts set Lastname = 'Smith' where cid = 1 


select * from #zeit --2021-11-15 14:38:52.120

--Result
select * from contacts 

select * from [dbo].[Contactshistory]

select * , 
		(Select  
			convert(varchar(50),min(Startdatum)) 
			+ '<-->' + 
			convert(varchar(50), Max(Enddatum)) 
		from ContactsHistory )
	from ContactsHistory


--2020-04-14 18:50:43.1110912<-->2020-04-14 18:57:53.3801501

--nach Version suchen
'2021-03-19 14:19:23.6939704'
select * from contactshistory --2021-11-15 14:38:52.120
where 
    Startdatum >= '15.11.2021 13:38:33.100'  
    and 
    Enddatum <= '15.11.2021 13:38:53.100' 

--Noch besser
select * from contacts 
    FOR SYSTEM_TIME AS OF '17.05.2022 16:25:45' 
    where cid =1 

--Neue Spalten
Alter Table contacts
	add spx int


update contacts set Firstname= 'Chris', spx=3 where cid = 1

	--nope
delete from Contactshistory where StartDatum <= '2016-08-05 12:45:43.2711351'


