/*  The COALESCE() function returns the first non-null value in a list  */


/***  Example: Return the first non-null value in a list  ***/

SELECT COALESCE(NULL, NULL, NULL, 'non-null', NULL, 'Example.com');

SELECT COALESCE(NULL, 1, 2, 'xyz.com');



