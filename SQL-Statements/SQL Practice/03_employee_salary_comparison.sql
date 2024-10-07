/****************************************************************************************************************************

You are given three tables: Employees, Mentors, and Salaries.

1. Employees contains two columns: Employee_ID and Employee_Name.

2. Mentors contains two columns: Employee_ID and Mentor_ID (ID of the ONLY primary mentor).

3. Salaries contains two columns: Employee_ID and Yearly_Salary (salary offered in NZ$ thousands per year).

Write a query to output the names of those employees whose primary mentors have a yearly salary greater than their own. 
The names must be ordered by the mentors' yearly salaries in ascending order. 


****************************************************************************************************************************/

SELECT E.Employee_Name
FROM Employees AS E
JOIN Mentors AS M ON E.Employee_ID = M.Employee_ID -- Join to get the mentor for each employee
JOIN Salaries S1 ON E.Employee_ID = S1.Employee_ID -- Join to get the salary of the employee
JOIN Salaries S2 ON M.Mentor_ID = S2.Employee_ID -- Join to get the salary of the mentor
WHERE S2.Yearly_Salary > S1.Yearly_Salary -- Check if the mentor's salary is greater than the employee's salary
ORDER BY S2.Yearly_Salary ASC;


