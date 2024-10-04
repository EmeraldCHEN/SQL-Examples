/*  The IS NULL operator is used to test for empty values (NULL values)  */

/*  The IS NOT NULL operator is used to test for non-empty values (NOT NULL values)  */

/* 

A NULL value is different from a zero value or a field that contains spaces. 

A field with a NULL value is one that has been left blank during record creation!.

*/



/***  Example: Select customers with a NULL value in the "Address" field  ***/

SELECT CustomerName, ContactName, Address FROM Customers
WHERE Address IS NULL


/***  Example: Select customers with a value in the "Address" field  ***/

SELECT CustomerName, ContactName, Address FROM Customers
WHERE Address IS NOT NULL;


/***  Example: ISNULL() or COALESCE() function returns an alternative value when an expression is NULL  ***/

SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;


SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products; 




