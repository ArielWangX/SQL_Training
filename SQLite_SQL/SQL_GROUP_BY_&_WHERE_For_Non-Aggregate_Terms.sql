/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Grouping in SQL | What are the average invoices totals by city for only the cities that start with L?
*/

SELECT
	BillingCity,
	round(avg(total), 2) AS Average
FROM
	Invoice
WHERE
	BillingCity LIKE 'L%'
GROUP BY
	BillingCity
ORDER BY
	BillingCity 