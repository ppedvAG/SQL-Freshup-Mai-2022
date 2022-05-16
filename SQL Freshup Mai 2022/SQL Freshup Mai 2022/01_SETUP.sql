--Seit SQL Server 2016 + SP1 
--ist "im Prinzip" jede Edition einen Ent Edition

--HOST: 4 Kerne  16 GB  1 HDD
--für VM: OS - 4 GB --> 12 GB
--Sockets: 1

--           RAM           CPU
--> DC:      512-2048        2
--> SQL1     fix:5500		 4 
--> SQL2     fix:4500        4

----------------------------------------


GESAMTER RAM - mind 2 GB für OS 
REGEL: 10 %
-----------------4 ----------------------------------------16---64
1                               1


0 für MIN
errechneter Wert für MAX


INST1   10
INST2     8
INST3     2
---------------
			20GB + 4 GB
akt  16

-->NUMA --Zuordnung Sockel --> RAM Slots.
--> VM sollte die akt Hardware wiederspiegeln
--> Vorsicht bei Migration


--Schulung\Administrator  ppedv2019!

--> NT Service\MSSQL$FE
--LOKALE Konten --> \\  per Computerkonto
-- nicht bei Cluster
--autom Kennwörter

--wir könnten auch mit DOM User arbeiten
--gedanklicher Hacken DOM\svcSQL

--weil der SQL Server auch bei DOM ServciceKonte 
--lokal immer noch die NT Serv ice verwendet



--Volumewartungstask

--Recht für Dienstkonto autom Vergrößerungen 
--der DB zu übernehmen ohne vorher auszunullen

--einem guten Admin ist das rel egal
--weil der das kontrolliert macht 

/*
TEMPDB

eig HDD 
trenne Log von Daten
Anzahl der Datendateien = Anzahl der Kerne (Max 8)
T1117 gleiches Wachstum für alle Dateien nur bei autom Wachstum
 der T 1117 gilt nur solange bis manuell eingeriffen wird...
 ! tu nie eine Datei von mehreren man vergrößern
T1118 uniform extents früher manuell setzen
		nur eine Tabelle pro Block --> vs. Latch


MAXDOP
Wieviele Kerne verwendet eine Abfrage maximal
1 oder alle (0)
heute 
1 oder max 8

RAM
Reservierung für os bei mind 2 GB
Min = 0 -- der zählt erst , wenn erreicht



*/

MAXDOP 

Wieviele Kerne werden max pro ABfrage verwendet?
sollten max 8  sein



wieviele werden pro ABfrage verwendet?
1 Kern oder alle des MAXDOP


schulung\Administrator
ppedv2019!


select shipcountry, city, sum(unitprice*quantity)
from ku
group by shipcountry, city








