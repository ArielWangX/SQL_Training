/*
CREATED BY: ARIEL WANG
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Project Missing Money Matters between 2011 and 2022 (financial discrepancy)
	-- Challenge One - General Queries that begin to gice you some high-level context
			-- 1, How many transcations took place between the year 2011 and 2012?
			-- 2. How much money did WSDA Music make during the same period? 
*/

-- 1, How many transcations took place between the year 2011 - 2012?
SELECT
	count(*) AS '2011-2012 Transactions'
FROM
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'

	
-- 2. How much money did WSDA Music make during the same period? 
SELECT
	SUM(total) AS '2011-2012 Total'
FROM 
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'