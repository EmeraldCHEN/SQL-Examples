/*  The OR operator is used to filter records based on more than one condition  */

/*  The WHERE clause can contain one or more OR operators  */


/* 

OR vs AND

The OR operator displays a record if any of the conditions are TRUE.

The AND operator displays a record if all the conditions are TRUE.

*/



/***  Example: Select all customers from Germany or Spain  ***/

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';


/***  Example: Select all customers from Berlin or Norway or their name starts with G, at leaset one condition must be true  ***/

SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';


/***  Example: Select customers from Germany either in Berlin or München  ***/

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');
