/*
CREATED BY: ARIEL WANG
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Project Missing Money Matters between 2011 and 2022 (financial discrepancy)
	-- Challenge Two - More Targeted Questions That Query The Tables Containing Data About Customers And Employees
			-- 1. Get a list of customers who made purchase between 2011-2012
			-- 2. Get a list of customers, sales reps, total transaction amounts for each customer between 2011-2012
			-- 3. How many transactions are above the average transation aomount during the same time?
			-- 4. What was the average transaction amount for each year that WSDA Music Co has been in business?
*/

-- 1. Get a list of customers who made purchase between 2011-2012
SELECT
	c.FirstName,
	c.LastName,
	i.Total
FROM
	Invoice i
INNER JOIN
	Customer c
ON
	i.CustomerId = c.CustomerId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY
	i.Total DESC
	
	
-- 2. Get a list of customers, sales reps, total transaction amounts for each customer between 2011-2012
SELECT
	c.FirstName AS [Customer FN],
	c.LastName AS [Customer LN],
	e.FirstName AS [Employee FN],
	e.LastName AS [Employee LN],
	i.Total
FROM
	Invoice i
INNER JOIN
	Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
ON c.SupportRepId = e.EmployeeId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
ORDER BY
	i.Total DESC
	
	
-- 3. How many transactions are above the average transation amount during the same time?
-- 3.1 Find average transaction amount between 2011 and 2012
SELECT
	round(avg(Total),2) AS [Avg Transaction Amount]
FROM
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
-- 3.2 Get the number of transaction above the average transaction amount
SELECT
	count(Total) AS [Num of Transactions Above Avg]
FROM
	Invoice
WHERE
	Total >= (
		SELECT
			round(avg(Total),2) AS [Avg Transaction Amount]
		FROM
			Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	) AND InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'

	
-- 4. What was the average transaction amount for each year that WSDA Music Co has been in business?
SELECT
	round(avg(Total), 2) AS [Avg Transaction Amount],
	strftime('%Y', InvoiceDate) AS [Year]
FROM
	Invoice
GROUP BY
	strftime('%Y', InvoiceDate)