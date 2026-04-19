DROP TABLE IF EXISTS employees; 

-- CREATE TABLE 

CREATE TABLE employees ( 
      employee_id SERIAL PRIMARY KEY, 
	  first_name VARCHAR (50) NOT NULL, 
	  last_name VARCHAR (50) NOT NULL, 
	  department VARCHAR (50), 
	  salary DECIMAL(10,2) CHECK (SALARY>0), 
	  joining_date DATE NOT NULL, 
	  age INT CHECK (AGE>=18) ); 
	 
-- Insert data into employees table 

INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) 

VALUES 
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29), 
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32), 
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35), 
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28), 
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26); 

-- Q1: Retrieve all employees’ first_name and their departments. 

SELECT FIRST_NAME, DEPARTMENT 
FROM EMPLOYEES; 

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%. 

UPDATE employees 
SET salary=salary + (salary*0.1 ) 
WHERE department ='IT'; 

SELECT *FROM employees 

-- Q3: Delete all employee older than 34 years. 

DELETE FROM employees 
WHERE age>34; 

-- Q4: Add a new column email to employee table 

ALTER TABLE employees 
ADD email_ID VARCHAR; 

-- Q5: Rename the department column to dept_name 

ALTER TABLE employees 
RENAME department to dept_name; 
SELECT *FROM employees 

-- Q6: Retrive employee name who joined after '1-1-2021' 

SELECT * FROM employees 
WHERE joining_date >'1-1-2021' 

-- Q7: Change datatype of salary column to Integer 

ALTER TABLE employees 
ALTER COLUMN salary TYPE INTEGER; 

-- Q8: List all employees with age and salary in dis order of salary 

SELECT first_name,age,salary 
FROM employees ORDER BY Salary DESC; 

-- Q9: Instert new employee 

INSERT INTO employees (first_name, last_name, dept_name, salary, joining_date, age) 
VALUES ('Raj', 'Singh', 'Marketing', 60000.00, '2023-09-15', 30); 

-- Q10: Update age of the employee +1 to all employees 
UPDATE employees 
SET age=age+1;
