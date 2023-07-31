/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Grouping by more than one field at a time | What are the average invoices totals by billing country and city?
*/

SELECT
	BillingCountry,
	BillingCity,
	round(avg(total), 2) AS Average
FROM
	Invoice
GROUP BY
	BillingCountry, BillingCity
ORDER BY
	BillingCountry 