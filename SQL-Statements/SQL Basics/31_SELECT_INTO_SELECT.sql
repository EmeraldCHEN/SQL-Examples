/*  

The INSERT INTO SELECT statement 
 
    - copies data from one table and inserts it into another existing table
    - requires that the data types in source and target tables match

*/ 


/***  Example: Copy "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL)  ***/

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;


/***  Example: Copy "Suppliers" into "Customers" (fill all columns)  ***/

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;


/***  Example: Copy only the German suppliers into "Customers"  ***/

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';