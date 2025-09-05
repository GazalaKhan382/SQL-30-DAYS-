SELECT * FROM employee2;

-- using AND operator
SELECT * FROM employee2
WHERE age>=45 AND salary >=50000;


--using OR operator
SELECT * FROM employee2
WHERE age>=60 OR salary >=100000;


--USING NOT
SELECT * FROM employee2
WHERE NOT (department='IT');