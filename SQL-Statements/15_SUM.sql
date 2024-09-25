/*  The SUM() function returns the total sum of a numeric column  */


/***  Example: Return the sum of all Quantity fields in the OrderDetails table  ***/

SELECT SUM(Quantity)
FROM OrderDetails; 


/***  Example: Return the sum of the Quantity field for the product with ProductID 11  ***/

SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;


/***  Example: Give the summarized column a name by using the AS keyword  ***/

SELECT SUM(Quantity) AS total
FROM OrderDetails;


/***  Example: Return the Quantity for each OrderID in the OrderDetails table  ***/

SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID; 


/***  Example: Find the total earnings in dollars by multiply each quantity with 10  ***/

SELECT SUM(Quantity * 10)
FROM OrderDetails; 


/***  Example: Join OrderDetails with Products, and use SUM() to find the total amount  ***/

SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID; 