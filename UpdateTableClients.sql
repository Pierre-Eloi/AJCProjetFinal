USE [ProjetFinalDB]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 01/09/2023 10:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[Rue] [nvarchar](50) NULL,
	[CodePostal] [int] NULL,
	[Ville] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (1, N'ARON', N'laure', N'aron-laure@email.fr', N'ee', N'09875', N'29 Alexandre Martin', 30000, N'NIMES')
INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (2, N'FORD', N'mary', N'ford_marie@email.fr', N'aa', N'0123', N'01 rue Jeanne d''Arc', 76000, N'ROUEN')
INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (3, N'GARRY', N'Helena', N'garry.helena@sfr.fr', N'dd', N'09876', N'23 rue de Pres', 37000, N'TOURS')
INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (4, N'PETER', N'jean', N'jean.peter@emploi.fr', N'ff', N'5678', N'19 Boulevard Guillaume', 41000, N'BLOIS')
INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (5, N'MILLER', N'james', N'miller_james@hotmail.fr', N'bb', N'0234', N'17 Boulevard de la République', 33000, N'BORDEAUX')
INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (6, N'WILKIN', N'peter', N'wilking.peter@emai.com', N'cc', N'0345', N'02 rues aux ours', 76000, N'ROUEN')
INSERT [dbo].[Clients] ([Id], [Nom], [Prenom], [Email], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (8, N'FORD3', N'mary3', N'ford_marie@email.fr', N'aa', N'0123', N'01 rue Jeanne d''Arc', 76018, N'Paris')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
