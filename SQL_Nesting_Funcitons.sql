/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Nesting Functions
*/

SELECT
	SUM(Total) AS [Total Sales],
	ROUND(AVG(Total), 2) AS [Average Sales],
	MAX(Total) AS [Maximun Sale],
	MIN(Total) AS [Minimum Sale],
	COUNT(*) AS [Sales Count]
FROM
	Invoice

