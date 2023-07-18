/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Grouping in SQL | What are the average invoices totals by city?
*/

SELECT
	BillingCity,
	round(avg(total), 2)
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity 