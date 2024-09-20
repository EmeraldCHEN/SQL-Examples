/*  The MIN() function returns the smallest value of the selected column  */


/***  Example: Find the lowest price in the Price column  ***/

SELECT MIN(Price)
FROM Products;


/***  Example: Use the AS keyword to give the column a descriptive name  ***/

SELECT MIN(Price) AS SmallestPrice
FROM Products;


/***  Example: Return the smallest price for each category in the Products table  ***/

SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;