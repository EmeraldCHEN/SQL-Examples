/*  

The UNION operator is used to combine the result-set of two or more SELECT statements  

    - Every SELECT statement within UNION must have the same number of columns
    - The columns must also have similar data types
    - The columns in every SELECT statement must also be in the same order

*/


/***  Example: Return the cities (only distinct values) from both the Customers and the Suppliers table  ***/

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;


/***  Example: Return the cities (duplicate values also) from both the Customers and the Suppliers table  ***/

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;


/***  Example: Return the German cities (only distinct values) from both the Customers and the Suppliers table  ***/

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


/***  Example: Return the German cities (duplicate values also) from both the Customers and the Suppliers table  ***/

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


/***  Example: List all customers and suppliers  ***/

SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;