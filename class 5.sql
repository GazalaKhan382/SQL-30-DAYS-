CREATE TABLE employee2(
      employee_id INT PRIMARY KEY,
	  name VARCHAR(100) NOT NULL,
	  position VARCHAR(50),
	  department CHAR(50),
	  hire_date Date,
	  salary NUMERIC(10,2)
);
SELECT * FROM employee2;

INSERT INTO employee2 (employee_id, name, position, department, hire_date, salary)
    VALUES(101, 'Gazala khan', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	   (102, 'Gazala khan', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	   (103, 'Gazala alam', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	   (104, 'Gazala Tashkil', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	   (105, 'Tashkil khan', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00);
	

DELETE FROM employee2
WHERE employee_id=105;

ALTER TABLE employee2
DROP COLUMN salary;

