/*
	In SQLite, when modifing a VIEW means drop the view first, then make a change on it by creating a new view.
	But, different RDBMS software has different approch, some may let you modifing existing view.
*/

DROP VIEW "main"."V_AvgTotal";
CREATE VIEW V_AvgTotal AS
SELECT
	avg(total) AS [Average Total]
FROM
	Invoice