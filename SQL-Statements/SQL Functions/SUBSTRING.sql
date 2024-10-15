/*  The SUBSTRING() function extracts some characters from a string  */


/***  Example: Extract 3 characters from a string, starting in position 1  ***/

SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString; -- SQL

/***  Example: Extract 5 characters from the "CustomerName" column, starting in position 1  ***/

SELECT SUBSTRING(CustomerName, 1, 5) AS ExtractString
FROM Customers; 




