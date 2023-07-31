/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Subqueries | Gather data about all invoices that are less than the average
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total < 
		(
		SELECT
			round(AVG(total),2) 
		FROM
			Invoice
		)
ORDER BY
	 total DESC


