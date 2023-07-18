/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Get all inovice that are greater than 1.98 from any cities whose name starts with P ot starts with D?

PEMDAS - Parentheses, Exponents, Multiplication/Division, Addition/Substraction
BEMDAS - Brackets,  Exponents, Multiplication/Division, Addition/Substraction
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	(BillingCity like 'P%' Or BillingCity like 'D%')
	AND
	(total > 1.98)
ORDER BY
	InvoiceDate