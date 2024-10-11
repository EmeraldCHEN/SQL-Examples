/*  
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
The result is 0 records from the left side, if there is no match.  */


/***  Example: Return all records from the right table (Employees), even if there are no matches in the left table (Orders)  ***/

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID; 




