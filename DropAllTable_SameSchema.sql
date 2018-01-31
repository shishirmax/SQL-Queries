SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'zerorez'

DECLARE @SqlStatement NVARCHAR(MAX)
SELECT @SqlStatement = 
    COALESCE(@SqlStatement, N'') + N'DROP TABLE [vdbs].' + QUOTENAME(TABLE_NAME) + N';' + CHAR(13)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'vdbs' and TABLE_TYPE = 'BASE TABLE'

PRINT @SqlStatement

--Truncate Statement
DECLARE @SqlStatementT NVARCHAR(MAX)
SELECT @SqlStatementT = 
    COALESCE(@SqlStatementT, N'') + N'TRUNCATE TABLE [ZeroRez].' + QUOTENAME(TABLE_NAME) + N';' + CHAR(13)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'ZeroRez' and TABLE_TYPE = 'BASE TABLE'

PRINT @SqlStatementT


SELECT * FROM INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_SCHEMA = 'ZeroRez' AND ROUTINE_TYPE = 'PROCEDURE'

DECLARE @SqlStatementp NVARCHAR(MAX)
SELECT @SqlStatementp = 
    COALESCE(@SqlStatementp, N'') + N'DROP PROCEDURE  [ZeroRez].' + QUOTENAME(ROUTINE_NAME) + N';' + CHAR(13)
FROM INFORMATION_SCHEMA.ROUTINES
WHERE ROUTINE_SCHEMA = 'ZeroRez' AND ROUTINE_TYPE = 'PROCEDURE'

PRINT @SqlStatementp

