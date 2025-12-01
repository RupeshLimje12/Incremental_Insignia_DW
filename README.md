# 📦 Incremental_Insignia_DW – Data Warehouse Project

## 📌 Project Overview

**Incremental_Insignia_DW** is a fully-designed Data Warehouse solution developed for **Insignia Corporation** to manage enterprise-level business data. The main objective of this project is to build a scalable, efficient, and incremental Data Warehouse with proper ETL workflows, SCD implementation, data quality framework, and business-oriented data modeling.

---

## 🎯 Project Goals

* Build a Data Warehouse from staging layer.
* Implement **incremental load** logic for daily/periodic data refresh.
* Maintain data lineage and audit for accuracy & tracking.
* Handle late arriving facts and historical tracking.
* Implement **Slowly Changing Dimensions (SCD Type-1, Type-2, Type-3)**.
* Provide clean, consistent, analytics-ready data for reporting.

---

## 🧱 Architecture Overview

This project is designed using Typical DW Layers:

1. **Source / Excel Files**

   * Insignia_Staging.xlsx
   * Insignia_Incremental.xlsx

2. **Staging Layer**

   * Raw data loading
   * Data profiling
   * Data quality checks

3. **Data Warehouse Layer**

   * Dimension Tables
   * Fact Tables
   * SCD and incremental logic applied

4. **Presentation Layer**

   * Analytics and reporting-ready structures

---

## 🧩 Key Functional Features

### ✔ Incremental Load

Only new/updated data is added to DW using timestamp & business rules.

### ✔ Late Arriving Facts

Logic implemented to match facts with existing or future dimensions.

### ✔ SCD Implementation

* **SCD Type-1 (Overwrite)**
* **SCD Type-2 (History Tracking)**
* **SCD Type-3 (Partial History)**

### ✔ Data Quality Framework

* Duplicate checks
* Null validation
* Change detection
* Reconciliation checks

### ✔ Lineage & Traceability

Every value in DW can be traced from source → staging → DW.

---

## 📑 Data Modelling

This warehouse uses:

* **Star Schema**
* Dimension & Fact Table Structure
* Business Keys + Surrogate Keys
* Time Dimension

### Sample Entity Objects:

* DimCustomer
* DimProduct
* DimDate
* FactSales

---

## ⚙ Technologies Used

| Layer      | Tools/Tech                |
| ---------- | ------------------------- |
| ETL        | SQL Server / SSIS / T-SQL |
| Database   | SQL Server                |
| Storage    | Excel Staging Files       |
| Modelling  | Dimensional Modelling     |
| Deployment | SQL Server                |

---

## 🧪 ETL Workflow

### 📥 Input Files:

* `Insignia_Staging.xlsx`
* `Insignia_Incremental.xlsx`

### 🔁 Steps:

1. Load into **Staging tables**
2. Validate & Clean
3. Compare with DW tables
4. Apply Incremental Logic
5. Apply SCD
6. Load Fact Tables

---

## 📊 Incremental Logic Summary

| Scenario            | Action                    |
| ------------------- | ------------------------- |
| New record          | Insert                    |
| Updated record      | SCD logic apply           |
| No change           | Skip                      |
| Late arriving facts | Link using surrogate keys |

---

## 🧮 SCD Rules Applied

### SCD-1:

Updates value directly.

### SCD-2:

Creates new row with:

* New Surrogate Key
* Effective Dates
* IsCurrent flag

### SCD-3:

Maintains previous + current values.

---

## 📌 Reconciliation Logic

After ETL run:

* Row count checks
* Surrogate key mapping
* Fact-Dimension relationships validation

---

## 📂 Folder Structure

```
Incremental_Insignia_DW/
│
├── Source_Files/
│   ├── Insignia_Staging.xlsx
│   └── Insignia_Incremental.xlsx
│
├── SQL Scripts/
│   ├── Staging_Load.sql
│   ├── SCD.sql
│   ├── FactLoad.sql
│   └── Incremental_Logic.sql
│
└── Documentation/
    └── Architecture & ETL Flow
```

---

## 👥 Team Information

Project Developed by:

**Rupesh Limje** – Data Warehouse Developer
Celebal Technologies Intern

---

## 🧾 Key Business Outcomes

* Reliable and consistent historical data
* Eliminates duplicate & stale records
* Improves reporting and analytics
* Reduces loading time using incremental ETL
* Easier business decision-making

---

## 🛡 Disclaimer

This project is only for academic and professional demonstration purposes.
Data and files are sample-generated.

---

## 📬 Contact

**Email:** rupeshlimje124@gmail.com
