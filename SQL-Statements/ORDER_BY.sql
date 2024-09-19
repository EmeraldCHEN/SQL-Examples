/*  The ORDER BY keyword is used to sort the result-set in ascending or descending order  */


/***  Example: Sort the products by price  ***/

SELECT * FROM Products
ORDER BY Price;


/***  Example: Sort the products from highest to lowest price  ***/

SELECT * FROM Products
ORDER BY Price DESC;


/***  Example: Sort the products alphabetically by ProductName  ***/

SELECT * FROM Products
ORDER BY ProductName;


/***  Example: Sort the products by ProductName in reverse order  ***/

SELECT * FROM Products
ORDER BY ProductName DESC;


/***  Example: Sort the orders by Country, but if some rows have the same Country, it orders them by CustomerName  ***/

SELECT * FROM Customers
ORDER BY Country, CustomerName;


/***  Example: Sort ascending by Country and descending by CustomerName   ***/

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;