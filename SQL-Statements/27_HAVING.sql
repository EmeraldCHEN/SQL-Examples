/* The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions. */ 


/***  Example: List the number of customers in each country and only include countries with more than 5 customers  ***/

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;


/***  Example: List the number of customers in each country, sorted high to low (Only include countries with more than 5 customers)  ***/

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;


/***  Example: List the employees that have registered more than 10 orders  ***/

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;


/***  Example: List if the employees "Davolio" or "Fuller" have registered more than 25 orders  ***/

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;