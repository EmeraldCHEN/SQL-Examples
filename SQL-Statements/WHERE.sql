/*  The WHERE clause is used to filter records that fulfill a specified condition  */


/***  Example: Select all customers from Mexico  ***/

SELECT * FROM Customers
WHERE Country='Mexico';


/***  Example: Select all customers with a CustomerID greater than 8  ***/

SELECT * FROM Customers
WHERE CustomerID > 8;