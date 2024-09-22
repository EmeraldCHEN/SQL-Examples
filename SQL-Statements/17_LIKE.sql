/*  The LIKE operator is used in a WHERE clause to search for a specified pattern in a column  */


/***  Example: Select all customers that starts with the letter "a" ***/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%'; 


/***  Example: Select all customers that does not start with "a" ***/

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%'; 


/***  Example: Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters ***/

SELECT * FROM Customers
WHERE city LIKE 'L_nd__'; 


/***  Example: Return all customers from a city that contains the letter 'L' ***/

SELECT * FROM Customers
WHERE city LIKE '%L%'; 


/***  Example: Return all customers that starts with 'La' ***/

SELECT * FROM Customers
WHERE CustomerName LIKE 'La%'; 


/***  Example: Return all customers that starts with 'a' or starts with 'b' ***/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';


/***  Example: Return all customers that ends with 'a' ***/

SELECT * FROM Customers
WHERE CustomerName LIKE '%a'; 


/***  Example: Return all customers that starts with "b" and ends with "s" ***/

SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s'; 


/***  Example: Return all customers that contains the phrase 'or' ***/

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';


/***  Example: Return all customers that starts with "a" and are at least 3 characters in length ***/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%'; 


/***  Example: Return all customers that have "r" in the second position ***/

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';


/***  Example: Return all customers from Spain ***/

SELECT * FROM Customers
WHERE Country LIKE 'Spain';

