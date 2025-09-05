SELECT * FROM products;


/* CASE Function - Categoring Based on conditions
 we will categorize products into price ranges:

 Expensive if the price is greater than or equal to 50,000.
 Moderate if the price is between 10,000 and 49,999.
 Affordable if the price is less than 10,000.*/

SELECT product_name, price,
    CASE
	    WHEN price >=50000 THEN 'Expensive'
		WHEN price>=10000 AND price<=49999 THEN 'Moderate'
		ELSE 'Affordable'
	END AS price_category
FROM products;	



/* 2. Case with AND & OR operators - Stock status
We will classify products based on quantity available:


In stock if quantity is or more.
 Limited stock if quantity is between 5 and 9.
 out of stock soon if quantity is less 5.
 */

 SELECT 
    product_name,
    quantity,
    CASE
        WHEN quantity >= 10 THEN 'In Stock'
        WHEN quantity BETWEEN 6 AND 9 THEN 'Limited Stock'
        ELSE 'Out of Stock Soon'
    END AS stock_status
FROM products;



/* 3. CASE with LIKE operator - Category classification
check if the category name contains "Electronocs" or "Furniture" using LIKE.
*/

SELECT 
    product_name,
    category,
    CASE
        WHEN category LIKE '%Electronics%' THEN 'Electronics Category'
        WHEN category LIKE '%Furniture%' THEN 'Furniture Category'
        ELSE 'Other Category'
    END AS category_type
FROM products;