---auf Server  Filestream auf Vollzugriff aktivieren
--in SQL KOnfigurationsmamanager Filetream aktivieren (SQL Dienst)
--Auf DB Nicht transaktionesgebunden Zugriff auf Voll und Verzeichnisname angeben
--Auf DB Filegroup für Filestreaming anlegen
--AUF DB "Datei" = Pfad der Ddateigruppe zuweisen

--Tabelle anlegen

--Verwendung \\server\SQLINSTANZ\DB\TABELLE per Explorer


CREATE TABLE Akten AS FILETABLE
  WITH
  (
    FILETABLE_DIRECTORY = 'personalakten'
  )
GO


select * from akten