/*  

The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.              */


/***  Example: Return all customers from 'Germany', 'France', or 'UK'  ***/

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


/***  Example: Return all customers that are NOT from 'Germany', 'France', or 'UK' ***/

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');


/***  Example: Return all customers that have an order in the Orders table ***/

SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);

SELECT DISTINCT Customers.* FROM Customers  /* Specifying Customers.* makes it clear which table the columns are coming from, especially in queries that involve multiple tables  */
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;



/***  Example: Return all customers that have NOT placed any orders in the Orders table ***/

SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);


