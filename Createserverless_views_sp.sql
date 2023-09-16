USE gold_db
Go

CREATE OR ALTER PROCEDURE CreateSQLServerlessView_gold
    @ViewName NVARCHAR(100)
AS
BEGIN
    DECLARE @statement VARCHAR(MAX)

    SET @statement = N'CREATE OR ALTER VIEW ' + @ViewName + ' AS
    SELECT *
    FROM OPENROWSET(
        BULK ''https://datamigrationssmsstorage.dfs.core.windows.net/gold/SalesLT/' + @ViewName + '/'',
        FORMAT = ''DELTA''
    ) AS [result]'

    EXEC (@statement)
END
Go

