-- Fact Sales Table
CREATE TABLE dbo.FactSales (
    Sales_Key INT IDENTITY(1,1) PRIMARY KEY,
    Employee_Key INT,
    Customer_Key INT,
    Product_Key INT,
    Geography_Key INT,
    DateKey INT,
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    Lineage_Id BIGINT
    -- No FK constraints due to permission restrictions
);