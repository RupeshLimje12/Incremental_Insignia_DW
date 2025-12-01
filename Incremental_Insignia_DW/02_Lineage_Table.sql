-- Lineage Table
CREATE TABLE dbo.ETL_Lineage (
    Lineage_Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    Source_System VARCHAR(100),
    Load_Stat_Datetime DATETIME,
    Load_EndDatetime DATETIME,
    Rows_at_Source INT,
    Rows_at_destination_Fact INT,
    Load_Status BIT
);