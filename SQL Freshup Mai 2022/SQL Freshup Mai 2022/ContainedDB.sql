--Security---

--NT   SQL Logins

----LOGIN (master)--------> Usermapping (Benutzerzuordnung) DB (USER)

---Contained Database



master : Logins
msdb:  Jobs Zeitpläne
model: Vorlage

EXEC sys.sp_configure N'contained database authentication', N'1'
GO
RECONFIGURE WITH OVERRIDE
GO
USE [master]
GO
ALTER DATABASE [ContDB] SET CONTAINMENT = PARTIAL WITH NO_WAIT
GO


--Nachteile: 
--Replikation geht nicht mehr, CDC CDT, keine Zugriff auf anderen DBs aus der COnTDB heraus
USE [ContDB]
GO
CREATE USER [Peter] WITH PASSWORD=N'ppedv2019!'
GO
