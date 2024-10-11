/*  

The ANY operator returns
   - a boolean value as a result
   - TRUE if ANY of the subquery values meet the condition

*/ 


/***  Example: List the ProductName if it finds ANY records in the OrderDetails table has Quantity equal to 10  ***/

SELECT ProductName FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10); 

SELECT ProductName FROM Products
WHERE ProductID IN (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);


SELECT DISTINCT Products.ProductName FROM Products
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE OrderDetails.Quantity = 10;


/***  Example: List the ProductName if it finds ANY records in the OrderDetails table has Quantity larger than 99  ***/

SELECT ProductName FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 99); 

SELECT * FROM Products
WHERE ProductID = SOME (SELECT ProductID FROM OrderDetails WHERE Quantity > 99);
  
  
/* Number of Records is 0 as it returns FALSE because the Quantity column has no values larger than 1000  */

SELECT ProductName FROM Products 
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity > 1000)