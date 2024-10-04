/*  

The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
Once a condition is true, it will stop reading and return the result. 
If no conditions are true, it returns the value in the ELSE clause.
If there is no ELSE part and no conditions are true, it returns NULL.

*/ 


-- Example: Go through conditions and returns a value when the first condition is met 

SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails; 


-- Example: Order the customers by City. If City is NULL, then order by Country

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);