/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Aggregate Functions | What are our all time global sales?
*/

SELECT
	SUM(Total) AS [Total Sales],
	AVG(Total) AS [Average Sales],
	MAX(Total) AS [Maximun Sale],
	MIN(Total) AS [Minimum Sale],
	COUNT(*) AS [Sales Count]
FROM
	Invoice

