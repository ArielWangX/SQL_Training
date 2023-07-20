/*
CREATED BY: Ariel Wang
CREATE DATE: MM/DD/YYYY
DESCRIPTION:Views
*/

CREATE VIEW V_AvgTotal AS
SELECT
	round(avg(total), 2) AS [Average Total]
FROM
	Invoice