/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Grouping in SQL | What are the average invoices totals by city greater than $5.00?
*/

SELECT
	BillingCity,
	round(avg(total), 2) AS Average
FROM
	Invoice
GROUP BY
	BillingCity
HAVING
	Average > 5
ORDER BY
	BillingCity 