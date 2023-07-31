/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: How many invoices were billied in cities that start with B?
*/

-- % I don't care whtat comes next

-- SELECT
-- 	InvoiceDate,
-- 	BillingAddress,
-- 	BillingCity,
-- 	total
-- FROM
-- 	Invoice
-- WHERE
-- 	BillingCity LIKE 'B%'
-- ORDER BY
-- 	InvoiceDate

/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: How many invoices were billied in cities that have a B anywhere in it's name?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity like '%b%'
ORDER BY
	InvoiceDate