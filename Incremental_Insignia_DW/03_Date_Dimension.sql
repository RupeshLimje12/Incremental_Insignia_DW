-- Date Dimension Table
CREATE TABLE dbo.DimDate (
    DateKey INT PRIMARY KEY,
    Date DATE,
    Day_Number INT,
    Month_Name VARCHAR(20),
    Short_Month CHAR(3),
    Calendar_Month_Number INT,
    Calendar_Year INT,
    Fiscal_Month_Number INT,
    Fiscal_Year INT,
    Week_Number INT
);
-- Date data load logic to be handled via ETL tool or loop (not added in this script)