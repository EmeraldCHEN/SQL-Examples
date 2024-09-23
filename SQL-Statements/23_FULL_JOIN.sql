/*  

The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records  

FULL OUTER JOIN and FULL JOIN are the same  */


/***  Example: Select all customers, and all orders  ***/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

