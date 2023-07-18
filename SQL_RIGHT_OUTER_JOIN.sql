/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: RIGHT OUTER JOIN will show all records on right table
*/

SELECT
	*
FROM
	Invoice AS i
RIGHT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId