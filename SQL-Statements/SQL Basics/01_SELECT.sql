/*  The SELECT statement is used to select data from a database  */


/***  Example: Select all records from the Customers table  ***/

SELECT * FROM Customers;

SELECT * FROM Customers AS Persons;


/***  Example: Return data from the Customers table  ***/

SELECT Country FROM Customers;

SELECT CustomerName, City FROM Customers;

SELECT CustomerID AS ID, CustomerName AS Customer FROM Customers; 


/***  Example: Use [square brackets] for aliases with space characters  ***/

SELECT ProductName AS [My Great Products]
FROM Products; 


/***  Example: Use "double quotes" for aliases with space characters  ***/

SELECT ProductName AS "My Great Products"
FROM Products; 


/***  Example: Create an alias named "Address" that combine four columns (Address, PostalCode, City and Country)  ***/

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers; 


/***  MySQL Example  ***/

SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers; 


/*  The SELECT DISTINCT statement is used to return only distinct (different) values  */ 


/***  Example: Select all the different countries from the Customers table  ***/ 

SELECT DISTINCT Country FROM Customers;


/***  Example: Return the number of different countries  ***/

SELECT COUNT(DISTINCT Country) FROM Customers;

