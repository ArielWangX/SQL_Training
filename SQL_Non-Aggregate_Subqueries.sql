/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Subqueries without Aggregate funcitons
*/
	
SELECT
	BillingAddress,
	BillingCity,
	InvoiceDate,
	(
		SELECT
				InvoiceDate
			FROM
				Invoice
			WHERE
				InvoiceId = 251
	) AS [Target Datetime]
FROM
	Invoice
WHERE
	Datetime(InvoiceDate) >
		(
			SELECT
				InvoiceDate
			FROM
				Invoice
			WHERE
				InvoiceId = 251
		)
ORDER By
	InvoiceDate
	


