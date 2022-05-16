--PLÄNE.. STATISTIKEN

set statistics io, time on
--Dauer in ms   CPU in ms, Anzahl der Seiten

select shipcountry, city, sum(unitprice*quantity)
from ku
group by shipcountry, city

--logische Lesevorgänge: 53240
--CPU-Zeit = 530 ms, verstrichene Zeit = 93 ms.


select shipcountry, city, sum(unitprice*quantity)
from ku
group by shipcountry, city  option (maxdop 6)



---Ab 5 SQL Dollar wird parallelisiert  mit MAXDOP Wert

--5 SQL ist richtg wenig: 25 besser.. ist nur auf dem Server einstellbar
--wird der Wert überschritten, dann gilt der wert des Server, oder der DB  oder des OPTION MAXDOP In der Abfrage

--Scoped Database 


--, CPU-Zeit = 313 ms, verstrichene Zeit = 322 ms.

--je weniger CPU Kerne, desto geringer der CPU AUfwand..
--evtl bei weniger Kernen gleich schnell oder sogar weniger..

--Fazit: weniger Kerne, weniger CPU Aufand , gleich schnell und Kern sind frei...



