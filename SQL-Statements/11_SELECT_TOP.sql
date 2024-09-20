/*  The SELECT TOP clause is used to specify the number of records to return  */

/* 

The SELECT TOP clause is useful on large tables with thousands of records.
Returning a large number of records can impact performance.

*/


/***  Example: Select only the first 3 records of the Customers table  ***/

SELECT TOP 3 * FROM Customers;


/* The following SQL statement shows the equivalent example for MySQL */

SELECT * FROM Customers
LIMIT 3;


/***  Example: Select the first 50% of the records from the Customers table   ***/

SELECT TOP 50 PERCENT * FROM Customers;


/***  Example: Select the first three records from the "Customers" table, where the country is "Germany"   ***/

SELECT TOP 3 * FROM Customers
WHERE Country='Germany'


/* The following SQL statement shows the equivalent example for MySQL */

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;


/***  Example: Sort the result reverse alphabetically by CustomerName, and return the first 3 records   ***/

SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;


/* The following SQL statement shows the equivalent example for MySQL */

SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;