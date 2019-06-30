-----Add row to flyway-schema-version------------

IF NOT EXISTS(SELECT 1 FROM flyway_schema_history)
INSERT INTO flyway_schema_history(installed_rank,version,description,type,script,checksum,installed_by,
installed_on,execution_time,success)
VALUES((SELECT ISNULL( MAX(installed_rank),0) + 1 installed_rank FROM flyway_schema_history), '1007.0000.0000', '19 06 24-23 40 18 Yuval2 [sql].[k] master', 'SQL','F1007_0000_0000__19_06_24-23_40_18_Yuval2_[sql].[k]_master.sql', NULL, (SELECT USER), (SELECT GETDATE()), 0,1 )
------------------------------------------------------------
drop table Table_1