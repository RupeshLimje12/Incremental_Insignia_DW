-- Employee Dimension with SCD Type 2
CREATE TABLE dbo.DimEmployee (
    Employee_Key INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Title VARCHAR(100),
    Department VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    IsCurrent BIT,
    Lineage_Id BIGINT
);

-- Customer Dimension with SCD Type 2
CREATE TABLE dbo.DimCustomer (
    Customer_Key INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200),
    StartDate DATE,
    EndDate DATE,
    IsCurrent BIT,
    Lineage_Id BIGINT
);

-- Geography Dimension with SCD Type 3 on Population
CREATE TABLE dbo.DimGeography (
    Geography_Key INT IDENTITY(1,1) PRIMARY KEY,
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    CurrentPopulation INT,
    PreviousPopulation INT,
    Lineage_Id BIGINT
);

-- Product Dimension (SCD Type 1)
CREATE TABLE dbo.DimProduct (
    Product_Key INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Lineage_Id BIGINT
);