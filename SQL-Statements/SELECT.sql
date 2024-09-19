/*  The SELECT statement is used to select data from a database  */


/***  Example: Select all records from the Customers table  ***/

SELECT * FROM Customers;


/***  Example: Return data from the Customers table  ***/

SELECT Country FROM Customers;

SELECT CustomerName, City FROM Customers;



/*  The SELECT DISTINCT statement is used to return only distinct (different) values  */ 


/***  Example: Select all the different countries from the Customers table  ***/ 

SELECT DISTINCT Country FROM Customers;


/***  Example: Return the number of different countries  ***/

SELECT COUNT(DISTINCT Country) FROM Customers;

