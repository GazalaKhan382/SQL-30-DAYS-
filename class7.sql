--Drop the table if it already exists
DROP TABLE IF EXISTS users;

--Create the users table
CREATE TABLE IF NOT EXISTS users(
   user_id SERIAL PRIMARY KEY,
   username VARCHAR(50) NOT NULL,
   email VARCHAR(100) NOT NULL,
   age INT,
   city VARCHAR(50)
);

SELECT * FROM users;

--Insert 5 sample users into the users table
INSERT INTO users (username, email, age, city) VALUES
('Gazala', 'kgazala858@gmail.com', 30, 'karauli'),
('Tashkil', 'tashkilalam@gmail.com', 27, 'patna'),
('Gulfam', 'gulfam@gmail.com', 32, 'jaipur'),
('Gulzar', 'gulzar@gmail.com', 29, 'rajasthan');

SELECT user_id, username FROM users;

UPDATE users
SET age=27
WHERE username='Gazala';

SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET city='chennai'
where age>=28;

UPDATE users
SET age=33, city= 'kolkata'
WHERE username='Gulfam'


UPDATE users 
SET age=age+1
WHERE email LIKE '%@gmail.com'


DELETE FROM users WHERE user_id=6;
