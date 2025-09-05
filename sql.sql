SELECT *FROM employee;


INSERT INTO employee(employee_id,name, position, department, hire_date, salary)
    VALUES (1,'Gazala alam', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00 ),
	      (2,'Tashkil alam', 'System Admin', 'System ', '2020-05-10', 95000.00 ),
		  (3,'Gulfam khan', 'Teacher', 'Chemistry Teacher', '2017-03-09', 55000.00 ),
		  (4,'Juned khan', 'Teacher', 'Mathematics', '2023-05-11', 35000.00 ),
		  (5,'Gulzar khan', 'Manager', 'Bank', '2018-02-04', 45000.00 );

		  TRUNCATE TABLE employee;
		  TRUNCATE TABLE employee RESTART IDENTITY;