/*  The DELETE statement is used to delete existing records in a table  */

/* 

The WHERE clause specifies which record(s) should be deleted. 
If you omit the WHERE clause, all records in the table will be deleted.

*/


/***  Example: Delete the customer "Alfreds Futterkiste" from the "Customers" table  ***/

DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste';


/***  Example: Delete all rows in the "Customers" table, without deleting the table  ***/

DELETE FROM Customers;


/***  Example: Remove the Customers table  ***/
DROP TABLE Customers;

