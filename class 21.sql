SELECT * FROM products;

--Get all the categories in uppercase

SELECT UPPER(category) AS Category_Capital
FROm products;

--Get all the categories in lowercase

SELECT LOWER(category) AS Category_Capital
FROm products;

--join product name and category text  with hypen.
SELECT CONCAT(product_name, '-', category) AS product_details
FROM products;

--Extract the fisrt five character from product_name
SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;

--Count length
SELECT product_name, LENGTH(product_name) AS count_of_character
FROM products;


--Remove leading and trailing spaces from string
SELECT TRIM('  Monitor  ') AS trimmed_text;

--Replace the word "phone" with "device" in product name

SELECT REPLACE(product_name, 'phone','device') AS updated
FROM products;

--Get the first 3 characters from category

SELECT RIGHT(category, 3) AS Category_Capital
FROm products;
