DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023(
   student_id INT PRIMARY KEY,
   student_name VARCHAR(100),
   course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Gazala tashkil', 'Computer Science'),
(2, 'Tashkil Alam', 'System Admin'),
(3, 'Gulfam Ahmad', 'Chemistry Teacher'),
(4, 'Gulzar khan', 'Assistant Manager'),
(5, 'Juned Khann', 'Maths Teacher')

SELECT * FROM students_2023;


DROP TABLE IF EXISTS student_2024;
CREATE TABLE students_2024(
   student_id INT PRIMARY KEY,
   student_name VARCHAR(100),
   course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Gulfam Ahmad', 'Chemistry Teacher'), --Same as students_2023
(4, 'Gulzar khan', 'Assistant Manager'), --Same as students_2023
(6, 'Shazia siddique', 'Charter Account'),
(7, ' Sazid  saifi', ' Civil Engineer'),
(8, 'Sid Saxena', 'SEO');

SELECT * FROM students_2024;

-- UNION -- Combines resultss, removes duplicates

 SELECT student_name, course
 FROM students_2023
 UNION
 SELECT student_name, course
 FROM students_2024;

-- UNION ALL - Combines results, keeps duplicates

 SELECT student_name, course
 FROM students_2023
 UNION ALL
 SELECT student_name, course
 FROM students_2024; 


 -- INTERSECT -- Returns common  results in both tables
 SELECT student_name, course
 FROM students_2023
 INTERSECT
 SELECT student_name, course
 FROM students_2024;


 -- EXCEPT -- Returns results in the first table but not in the second

 SELECT student_name, course
 FROM students_2023
 EXCEPT
 SELECT student_name, course
 FROM students_2024;