/*  The UPDATE statement is used to modify the existing records in a table  */

/* 

The WHERE clause specifies which record(s) that should be updated. 
If you omit the WHERE clause, all records in the table will be updated.

*/



/***  Example: Update the first customer with a new contact name and a new city  ***/

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;


/***  Example: Update the ContactName to "Juan" for all records where country is "Mexico"  ***/

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';
