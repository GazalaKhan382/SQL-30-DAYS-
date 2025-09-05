CREATE TABLE employee(
      employee_id INT PRIMARY KEY,
	  name VARCHAR(100) NOT NULL,
	  position VARCHAR(50),
	  department CHAR(50),
	  hire_date Date,
	  salary NUMERIC(10,2)
);
SELECT * FROM employee;


