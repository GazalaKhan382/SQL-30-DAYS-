SELECT * FROM employee2;

SELECT first_name, salary,
      (salary*0.10) AS Bonus
FROM employee2;	  


SELECT first_name, last_name, salary,                              
 (salary * 12)AS annual_salary,
 (salary * 0.05)AS increment_salary,
 (salary + salary*0.05)AS new_salary,
 (salary * 1.05) As new_salary2
   FROM employee2;
  