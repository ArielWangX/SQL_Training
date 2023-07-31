/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Create a Mailing List of US Customer
*/

SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ', ' || State || ', ' || PostalCode AS [Mailing Address],
	LENGTH(PostalCode),
	SUBSTR(PostalCode,1,5) AS [5 Digital Postal Code]
FROM
	Customer
WHERE
	Country = 'USA'
