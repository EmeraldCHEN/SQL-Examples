/*  The COUNT() function returns the number of rows that matches a specified criterion  */


/***  Example: Find the total number of rows in the Products table  ***/

SELECT COUNT(*)
FROM Products;


/***  Example: Find the number of products where the ProductName is not null  ***/

SELECT COUNT(ProductName)
FROM Products;


/***  Example: Find the number of products where Price is higher than 20  ***/

SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;


/***  Example: How many different prices are there in the Products table  ***/

SELECT COUNT(DISTINCT Price)
FROM Products;


/***  Example: Give the counted column a name by using the AS keyword  
               Name the column "Number of records":                     ***/

SELECT COUNT(*) AS [Number of records]
FROM Products;


/***  Example: Return the number of records for each category in the Products table  ***/

SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;