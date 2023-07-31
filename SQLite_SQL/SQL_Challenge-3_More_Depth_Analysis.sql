/*
CREATED BY: ARIEL WANG
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Project Missing Money Matters between 2011 and 2022 (financial discrepancy)
	-- Challenge Three - Queries that perform in depth analysis with the aim of finding employees who may have been financially motivated to commit the crime
		--1. Get a list of employees who exceeded the average transaction amount from sales they generated during 2011-2022
		--2. Create a commission payout column that displays each employee's comission based on 15% of the sales transaction amount
		--3. Which employee made the highest commision?
		--4 List the customers that were served by the employee identified in the last question
		--5. Which customer made the highest purchase?
		--6. who can you conclude is our primary person of interest?
*/

--1. Get a list of employees who exceeded the average transaction amount from sales they generated during 2011-2022
-- 1.1 Find average transaction amount between 2011 and 2012
SELECT
	round(avg(Total),2) AS [Avg Transaction Amount]
FROM
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
--1.2 Get a list of employees who exceeded the average transaction amount from sales they generated during 2011-2022
SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	sum(i.total) AS [Total Sales]
FROM
	Invoice i
INNER JOIN
	Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
ON c.SupportRepId = e.EmployeeId
WHERE
	Total > (
		SELECT
			round(avg(Total),2) AS [Avg Transaction Amount]
		FROM
			Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	) AND InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY
	e.LastName

	
--2. Create a commission payout column that displays each employee's comission based on 15% of the sales transaction amount
SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	sum(i.total) AS [Total Sales],
	round(sum(i.total)*0.15, 2) AS [Commision Payout]
FROM
	Invoice i
INNER JOIN
	Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
ON c.SupportRepId = e.EmployeeId
WHERE
	Total > (
		SELECT
			round(avg(Total),2) AS [Avg Transaction Amount]
		FROM
			Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
	) AND InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY
	e.LastName

	
	
--3. Which employee made the highest commision?
-- Jane Peacock $ 170.65


--4 List the customers that were served by Jane Peacock
SELECT
	c.FirstName AS [Customer FN],
	c.LastName AS [Customer LN],
	e.FirstName AS [Employee FN],
	e.LastName AS [Employee LN],
	sum(i.Total) AS [Total Sales],
	round(sum(i.Total)*0.15, 2) AS [Commission Payout]
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
AND e.LastName = 'Peacock'
GROUP BY
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName
ORDER BY
		[Total Sales] DESC


		
--5. Which customer made the highest purchase?
-- John Doeein    $1000.86
-- Does it look suspicous?
SELECT
	*
FROM
	Customer c
WHERE
	c.LastName = 'Doeein'
	
	
--6. who can you conclude is our primary person of interest?
-- Jane Peacock


