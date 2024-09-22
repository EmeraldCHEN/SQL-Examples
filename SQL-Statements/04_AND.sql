/*  The AND operator is used to filter records based on more than one condition  */

/*  The WHERE clause can contain one or many AND operators  */



/***  Example: Select all customers from Spain that starts with the letter 'G'  ***/

SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';


/***  Example: Sselects all customers from Germany AND City is "Berlin" AND PostalCode is higher than 12000  ***/

SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin'
AND PostalCode > 12000;


/***  Example: Select all Spanish customers that starts with either "G" or "R"  ***/

SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');


/***  Example: Return all customers from Spain that starts with a "G", plus all customers that starts with an "R", regardless of the country value  ***/

SELECT * FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';


/***  Example: Use aliases on tables to make the SQL statements shorter  ***/

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;