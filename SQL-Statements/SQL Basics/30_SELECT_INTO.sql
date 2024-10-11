/*  The SELECT INTO statement copies data from one table into a new table. */ 


/***  Example: Create a backup copy of Customers  ***/

SELECT * INTO CustomersBackup2024
FROM Customers; 


/***  Example: Use the IN clause to copy the table into a new table in another database  ***/

SELECT * INTO CustomersBackup2024 IN 'Backup.mdb'
FROM Customers; 


/***  Example: Copy only a few columns into a new table  ***/

SELECT CustomerName, ContactName INTO CustomersBackup2024
FROM Customers; 


/***  Example: Copy only the German customers into a new table  ***/

SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany'; 


/***  Example: Copy data from more than one table into a new table  ***/

SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2024
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 


/***  Example: Create a new, empty table using the schema of another. Add a WHERE clause that causes the query to return no data   ***/

/*
Use Cases:
    - Creating a temporary table: You might want to create a new table to hold intermediate results without copying data.
    - Table structure review: Useful for understanding the structure of a table without pulling in large datasets.
*/

SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0; 
