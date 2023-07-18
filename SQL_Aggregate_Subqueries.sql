/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Subqueries | How is each individual city performing against the global average sales?
*/

SELECT
	BillingCountry,
	BillingCity,
	ROUND(AVG(total), 2) AS [City Average],
	(
		SELECT
			ROUND(AVG(total), 2)
		FROM
			Invoice
	) AS [Global Average]
FROM
	Invoice
GROUP BY
	BillingCountry, BillingCity
ORDER BY
	 BillingCountry


