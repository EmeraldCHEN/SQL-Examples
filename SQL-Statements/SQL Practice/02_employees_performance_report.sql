/****************************************************************************************************************************

You are given two tables: Employees and Performance.

1. Employees contains three columns: EmployeeID(Integer), FullName(String), and Score(Integer).

2. Performance contains the following data: Rating(Integer), Min_Score(Integer), Max_Score(Integer).

Write a query to generate a report containing three columns: FullName, Rating, and Score.

- Exclude the names of employees who received a rating lower than 5

- The report must be sorted in descending order by Rating

- If there is more than one employee with the same rating (5-10), sort those employees by their FullName alphabetically

- For employees with a rating lower than 5, use "N/A" as their name and list them by their ratings in descending order

- If there are multiple employees with the same rating (1-4), sort those employees by their Score in ascending order.


Sample Output:
-------------------------------------
-  FullName	      Rating	 Score -
-                                   -
-  Alice Johnson	8	        85  - 
-  Bob Smith	     8	        70  -
-  Charlie Brown	6	        55  -
-  David Williams	5	        40  -
-  N/A	             4	        30  -
-  N/A	             3	        0   -
-------------------------------------

****************************************************************************************************************************/

SELECT 
    CASE 
        WHEN P.Rating >= 5 THEN E.FullName 
        ELSE 'N/A' 
    END AS FullName,
    P.Rating,
    E.Score
FROM 
    Employees AS E
JOIN 
    Performance AS P ON E.Score BETWEEN P.Min_Score AND P.Max_Score
ORDER BY 
    P.Rating DESC, 
    CASE 
        WHEN P.Rating >= 5 THEN E.FullName 
        ELSE E.Score 
    END;

