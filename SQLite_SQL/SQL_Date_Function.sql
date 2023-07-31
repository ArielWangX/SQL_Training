/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Calculate the ages of all employee
*/

SELECT
	FirstName,
	LastName,
	BirthDate,
	STRFTIME('%Y-%m-%d',BirthDate) AS [BirthDate No Timecode],
	STRFTIME('%Y-%m-%d','now') - STRFTIME('%Y-%m-%d',BirthDate) AS Age
FROM
	Employee

