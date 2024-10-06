/****************************************************************************************************************************

Write a query to retrieve the developer_id and name of developers who have completed more than three projects successfully. 
The results should be ordered in descending order by the total number of successfully completed projects. 
If multiple developers have completed the same number of projects, sort them by ascending developer_id.

The following tables contain project data:

1. ProjectStatus:

- project_id (int)
- developer_id (int)
- status (varchar) (Values: 'completed', 'in_progress', 'failed')

2. Developers:

- developer_id (int)
- name (varchar)

Example Output:
----------------------------------
-  developer_id	    name         - 
-                                -
-  101	            Alice Smith  -
-  202	            Bob Johnson  -
----------------------------------

****************************************************************************************************************************/

SELECT PS.developer_id, D.name
FROM ProjectStatus AS PS
JOIN Developers AS D ON PS.developer_id = D.developer_id
WHERE PS.status = 'completed'  -- Check if the project status is completed
GROUP BY PS.developer_id, D.name
HAVING COUNT(PS.project_id) > 3  -- More than three projects successfully completed 
ORDER BY COUNT(PS.project_id) DESC, PS.developer_id;
