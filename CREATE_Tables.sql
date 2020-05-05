USE [Business]
GO

ALTER TABLE [dbo].[Footfall] DROP CONSTRAINT [FK_Footfall_Premises]
GO

DROP TABLE [dbo].[Footfall]
GO

CREATE TABLE [dbo].[Footfall](
	[WeekNo] [int] NOT NULL,
	[PremisesId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Footfall] PRIMARY KEY CLUSTERED 
(
	[WeekNo] ASC,
	[PremisesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

DROP TABLE [dbo].[Footfall]
GO

CREATE TABLE [dbo].[Footfall](
	[WeekNo] [int] NOT NULL,
	[PremisesId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Footfall] PRIMARY KEY CLUSTERED 
(
	[WeekNo] ASC,
	[PremisesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Premises] DROP CONSTRAINT [FK_Premises_Businesses1]
GO

DROP TABLE [dbo].[Premises]
GO

CREATE TABLE [dbo].[Premises](
	[Id] [int] NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[PostCode] [varchar](20) NOT NULL,
	[StreetNo] [varchar](10) NULL,
	[BusinessID] [int] NOT NULL,
 CONSTRAINT [PK_Premises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Footfall]  WITH CHECK ADD  CONSTRAINT [FK_Footfall_Premises] FOREIGN KEY([PremisesId])
REFERENCES [dbo].[Premises] ([Id])
GO

ALTER TABLE [dbo].[Footfall] CHECK CONSTRAINT [FK_Footfall_Premises]
GO

ALTER TABLE [dbo].[Footfall]  WITH CHECK ADD  CONSTRAINT [FK_Footfall_Premises] FOREIGN KEY([PremisesId])
REFERENCES [dbo].[Premises] ([Id])
GO

ALTER TABLE [dbo].[Footfall] CHECK CONSTRAINT [FK_Footfall_Premises]
GO

ALTER TABLE [dbo].[Premises]  WITH CHECK ADD  CONSTRAINT [FK_Premises_Businesses1] FOREIGN KEY([BusinessID])
REFERENCES [dbo].[Businesses] ([ID])
GO

ALTER TABLE [dbo].[Premises] CHECK CONSTRAINT [FK_Premises_Businesses1]
GO