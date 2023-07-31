/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Get all inovice who's billing city is starts with P or starts with D?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity like 'P%' Or BillingCity like 'D%'
ORDER BY
	InvoiceDate