USE [CGVDTB]
GO

/****** Object:  Table [dbo].[GiamDoc]    Script Date: 03/11/2022 13:08:51 ******/


CREATE TABLE [dbo].[GiamDoc](
	[DirectorID] [varchar](10) NOT NULL,
	[DirectorName] [varchar](30) NOT NULL,
	[DirectoryNationality] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [CGVDTB]
GO

/****** Object:  Table [dbo].[Movie]    Script Date: 03/11/2022 13:09:02 ******/


CREATE TABLE [dbo].[Movie](
	[MovieID] [varchar](10) NOT NULL,
	[MovieTitle] [nvarchar](200) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[GenereID] [varchar](10) NULL,
	[DirectorID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



ALTER TABLE [dbo].[Movie]  WITH CHECK ADD FOREIGN KEY([DirectorID])
REFERENCES [dbo].[GiamDoc] ([DirectorID])
GO

ALTER TABLE [dbo].[Movie]  WITH CHECK ADD FOREIGN KEY([GenereID])
REFERENCES [dbo].[TheLoai] ([GenreID])
GO



USE [CGVDTB]
GO

/****** Object:  Table [dbo].[TheLoai]    Script Date: 03/11/2022 13:09:14 ******/


CREATE TABLE [dbo].[TheLoai](
	[GenreID] [varchar](10) NOT NULL,
	[GenreType] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


