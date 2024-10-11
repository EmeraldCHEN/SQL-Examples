/*  The INNER JOIN keyword selects records that have matching values in both tables  */


/***  Example: Join Products and Categories with the INNER JOIN keyword  ***/

SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID; 

/* It is a good practice to include the table name when specifying columns in the SQL statement */

SELECT Products.ProductID, Products.ProductName, Categories.CategoryID
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;


/* JOIN and INNER JOIN will return the same result */

SELECT Products.ProductID, Products.ProductName, Categories.CategoryID
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID;



/***  Example: JOIN 3 tables  ***/

SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID); 
