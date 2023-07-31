/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Subquries and DISTINCT | Whick tracks are not selling?
*/

SELECT
	TrackId,
	Composer,
	Name
FROM
	Track
WHERE
	TrackId NOT IN (
		SELECT
			DISTINCT
			TrackId
		FROM
			InvoiceLine
		ORDER BY
			TrackId
	)
	