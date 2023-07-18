/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: How many invoices were billied on 2010-05-22 00:00:00?
*/

-- SELECT
-- 	InvoiceDate,
-- 	BillingAddress,
-- 	BillingCity,
-- 	total
-- FROM
-- 	Invoice
-- WHERE
-- 	InvoiceDate = '2010-05-22 00:00:00'
-- ORDER BY
-- 	InvoiceDate

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	DATE(InvoiceDate) = '2010-05-22'
ORDER BY
	InvoiceDate