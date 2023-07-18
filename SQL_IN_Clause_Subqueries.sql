/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Returning multiple values from a subquery
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCountry,
	BillingCity
FROM
	Invoice
WHERE
	InvoiceDate IN (
		SELECT
			InvoiceDate
		FROM
			Invoice
		WHERE
			InvoiceId IN (251, 252, 254)
	)
ORDER BY
	InvoiceDate
	