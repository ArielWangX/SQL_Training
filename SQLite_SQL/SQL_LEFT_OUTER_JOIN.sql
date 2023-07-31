/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: LEFT OUTER JOIN will show all records on left table
*/

SELECT
	*
FROM
	Invoice AS i
LEFT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId