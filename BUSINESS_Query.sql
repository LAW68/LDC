/*
Given the following tables, write a query which returns the total footfall count per premises. 
The resultset should contain the following non-null 
columns: Business, StreetNo, Street, PostCode, FootfallCount. 
Premises do not necessarily have footfall for every week (missing counts will have a count of zero). 
Missing street numbers will be replaced with empty string ''.  
Query performance must not be affected by transactions which are running at the same time.
*/
USE Business
GO

SELECT	Business
		,ISNULL(StreetNo, '') AS 'StreetNo'
		,Street
		,PostCode
		,FootfallCount
FROM	(SELECT		PremisesId
			,SUM([Count]) AS FootfallCount
			FROM	(SELECT c.PremisesId, w.WeekNo, COALESCE([Count], 0) as 'Count'
					FROM (SELECT DISTINCT WeekNo FROM   [Business].[dbo].[Footfall] WITH (NOLOCK)) w 
					CROSS JOIN (SELECT DISTINCT PremisesId FROM [Business].[dbo].[Footfall] WITH (NOLOCK)) c
							LEFT JOIN [Business].[dbo].[Footfall] t 
							on t.PremisesId = c.PremisesId and t.WeekNo = w.WeekNo)
					AS T1
GROUP BY
		PremisesId
		) AS T2
INNER JOIN [dbo].[Premises] P WITH (NOLOCK)
		ON	P.Id = T2.PremisesId
INNER JOIN [dbo].[Businesses] B WITH (NOLOCK)
		ON	B.ID = P.BusinessID




SELECT c.PremisesId, w.WeekNo, coalesce([Count], 0) as 'Count'
FROM (SELECT DISTINCT WeekNo FROM   [Business].[dbo].[Footfall]) w 
CROSS JOIN (SELECT DISTINCT PremisesId FROM [Business].[dbo].[Footfall]) c 
		LEFT JOIN [Business].[dbo].[Footfall] t
		on t.PremisesId = c.PremisesId and t.WeekNo = w.WeekNo









