/*  The MAX() function returns the largest value of the selected column  */



/***  Example: Find the highest price in the Price column  ***/

SELECT MAX(Price)
FROM Products;


/* 
   When you use MIN() or MAX(), the returned column will not have a descriptive name. 
   To give the column a descriptive name, use the AS keyword:
*/

SELECT MAX(Price) AS HighestPrice
FROM Products;


/***  Example: Return the highest price for each category in the Products table  ***/

SELECT MAX(Price) AS MaxPrice, CategoryID
FROM Products
GROUP BY CategoryID;