/*  
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). 
The result is 0 records from the right side, if there is no match.  */


/***  Example: Return all records from the left table (Customers), even if there are no matches in the right table (Orders)  ***/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;




