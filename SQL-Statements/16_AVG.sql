/*  The AVG() function returns the average value of a numeric column  */


/***  Example: Find the average price of all products. Note: NULL values are ignored.  ***/

SELECT AVG(Price)
FROM Products;


/***  Example: Return the average price of products in category 1  ***/

SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;


/***  Example: Name the column "average price":  ***/

SELECT AVG(Price) AS [average price]
FROM Products;


/***  Example: Return all products with a higher price than the average price ***/

SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products); 


/***  Example: Return the average price for each category in the Products table ***/

SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;


