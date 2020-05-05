USE [Business]
GO

INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (8016,'Portobello Road', 'W11 2DY', '382', 10000025)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (4920,'Kendal Street', 'W2 2AY', null, 10000034)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (2285,'Earls Court Road', 'W8 6EA', '10', 10000029)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (3859,'Glenburnie Road', 'SW17 7PJ', '15a', 10000024)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (9484,'Mere Street', 'IP22 4AD', '6', 10000026)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (1839,'Commerical Road', 'NG6 8HA', '16', 10000032)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (4837,'Wilmslow Road', 'M20 3BW', '432-434', 10000031)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (2958,'Edgware Road', 'W2 1ET', '62-64', 10000028)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (2020,'York Road', 'TS26 9EN', NULL, 10000022)
GO
INSERT INTO [dbo].[Premises] (Id, Street, PostCode, StreetNo, BusinessID)
     VALUES (5472,'Preston Road', 'BN1 4QF', NULL, 10000033)
GO


INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,8016,382)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,4920,182)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,2285,948)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,3859,272)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,1839,272)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,4837,494)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,2958,220)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,2020,181)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (32,5472,282)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,8016,494)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,4920,282)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,2285,952)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,3859,282)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,9484,382)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,1839,181)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,4837,285)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,2958,494)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,2020,289)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (33,5472,939)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,8016,821)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,4920,712)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,2285,284)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,3859,595)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,1839,595)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,4837,181)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,2958,959)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,2020,484)
GO
INSERT INTO [dbo].[footfall] (weekno, premisesid, [count])
     VALUES (34,5472,817)
GO

USE [Business]
GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000022,'Pizza Express')
GO
INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000024,'Holland & Barrett')
GO
INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000025,'Cafe Rouge')
	GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000026,'Lloyds TSB')
GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000028,'Ernst Jones')
GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000029,'Boots The Chemist')
GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000031,'HSBC')

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000032,'The Body Shop')
GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000033,'ABC Pharmacy')
GO

INSERT INTO [dbo].[Businesses] ([ID],[Business])
     VALUES (10000034,'Oxfam')
GO


