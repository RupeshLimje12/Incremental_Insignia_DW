-- Staging Copy Table
CREATE TABLE dbo.Insignia_staging_copy AS
SELECT * INTO dbo.Insignia_staging_copy FROM dbo.Insignia_staging WHERE 1=0;

-- Insignia_incremental is assumed to be available
-- Later, insert into staging_copy from incremental during ETL