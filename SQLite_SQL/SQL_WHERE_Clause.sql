/*
How many customers purchased two songs at $0.99 each?
*/

/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Customers who purchased two songs at $0.99 each
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total = 1.98
ORDER BY
	InvoiceDate