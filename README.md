# 📊 Employee Database Analysis using SQL

## 📌 Project Overview

This project simulates how employee data is managed and analyzed in a real business environment using SQL.
It focuses not just on writing queries, but on solving practical business problems such as salary analysis, employee segmentation, and data-driven insights.

## 💼 Business Questions Solved
- Which department has the highest average salary?
- Who is the highest-paid employee?
- How many employees exist per department?
- Which employees joined after 2021?

## 🏗️ Database Design
- Created an `employees` table with:
  - Primary Key (`employee_id`)
  - NOT NULL constraints
  - CHECK constraints for salary and age validation

---

## ⚙️ Operations Performed

### 🔹 Data Manipulation (DML)
- Inserted employee records
- Updated salary (+10%) for IT department
- Incremented age for all employees
- Deleted employees above age 34

### 🔹 Schema Modifications (DDL)
- Added new column (`email_id`)
- Renamed column (`department` → `dept_name`)
- Changed datatype of `salary`

### 🔹 Data Retrieval & Analysis
- Filtered employees based on joining date
- Sorted employees by salary (descending)
- Selected specific columns for reporting

---

## 📊 Sample Analytical Queries

### Average Salary by Department
```sql
SELECT dept_name, AVG(salary)
FROM employees
GROUP BY dept_name;
