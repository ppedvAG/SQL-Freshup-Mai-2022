--es werden Seiten und Bl�cke der OrigDB an den Snapshot vor �nderung �bertragen
--Snapshot ist lesbar

-- Create the database snapshot
CREATE DATABASE SN_TESTDB ON
( NAME =testdb , --logihsche Name der OrgDB DAtendatei
FILENAME = 'D:\_SQLDBDATA\sn_testdb.mdf' )
AS SNAPSHOT OF TESTDB
GO



--restore von SNAPSHOT
--alle von den DBs runter


restore database testdb from database_Snapshot = 'SN_TESTDB'