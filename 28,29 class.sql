-- Create Employees Table
CREATE TABLE Employees3(
    employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	department_id INT
);

--Insert data into employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
      ('Tashkil','Alam', 101),
	  ('Gazala','Khan', 102),
	  ('Gulfam','Ahmad', 103),
	  ('Gulzar','sir', NULL),
	  ('Mohhmad','Juned', 101);

SELECT * FROM Employees3;	  

--Create department table
CREATE TABLE Departments(
    department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

--Insert Data into departments
INSERT INTO Departments(department_id, department_name)
VALUES
    (101, 'Sales'),
	(102, 'Marketing'),
	(103, 'IT'),
	(104, 'HR');

SELECT * FROM Departments;

-- INNER JOIN
SELECT e.employee_id, e.first_name,last_name,
d.department_id, d.department_name
FROM Employees3 e
INNER JOIN
Departments d
ON e.department_id = d.department_id;


--LEFT JOIN
SELECT e.employee_id, e.first_name,last_name,
d.department_id, d.department_name 
FROM Employees3 e
LEFT JOIN Departments d
ON e.department_id = d.department_id;

--RIGHT JOIN
SELECT e.employee_id, e.first_name,last_name,
d.department_id, d.department_name 
FROM Employees3 e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;


--FULL OUTER JOIN
SELECT e.employee_id, e.first_name,last_name,
d.department_id, d.department_name 
FROM Employees3 e
FULL OUTER JOIN Departments d
ON e.department_id = d.department_id;


--CROSS JOIN

SELECT e.first_name, e.last_name, d.department_name
FROM Employees3 e
CROSS JOIN
Departments d;


--SELF JOIN
SELECT e1.first_name AS Employee_name1,
       e2.first_name AS Employee_name2,
	   d.department_name
FROM employees3 e1 JOIN employees3 e2
ON e1.department_id= e2. department_id 
AND e1.employee_id!=e2.employee_id
JOIN departments d
ON
e1.department_id=d.department_id;


DROP TABLE employees3;

