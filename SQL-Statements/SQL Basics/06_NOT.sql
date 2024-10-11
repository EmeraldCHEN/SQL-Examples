/*  The NOT operator is used in combination with other operators to give the opposite result, also called the negative result  */


/***  Example: Select only the customers that are NOT from Spain  ***/

SELECT * FROM Customers
WHERE NOT Country = 'Spain';


/***  Example: Select customers that does not start with the letter 'A'  ***/

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';



/***  Example: Select customers with a customerID not between 10 and 60  ***/

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;


/***  Example: Select customers that are not from Paris or London  ***/

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');


/***  Example: Select customers with a CustomerId not greater than 50  ***/

SELECT * FROM Customers
WHERE NOT CustomerID > 50;



/***  Example: Select customers with a CustomerID not less than 50  ***/

SELECT * FROM Customers
WHERE NOT CustomerID < 50;