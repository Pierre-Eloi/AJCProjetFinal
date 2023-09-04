USE [ProjetFinalDB]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 04/09/2023 14:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [nvarchar](50) NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Marque] [nvarchar](50) NULL,
	[Prix] [float] NULL,
	[Categorie] [nvarchar](50) NULL,
	[SousCategorie] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Couleur] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Articles1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'1', N'Bubble2 ', N'Shade', 3300, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Olive', N'Bubble2.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'10', N'Blogger', N'Tapinassi', 2660, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Nuage', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'100', N'AA', N'bb', 123, N'Sejour', N'Canapes', N'aaaa', N'bleu', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'11', N'Galet', N'Messieurs', 2990, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bois', N'Galet.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'12', N'Shark', N'Juam', 2420, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Fumme gris', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'13', N'Long_beach', N'Bellagio', 2980, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Marbre', N'Long_beach.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'14', N'Precious', N'Ragot', 1460, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleue ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'15', N'Equilibre', N'Fritsch', 2920, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Marbre Travertino', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'16', N'Partition', N'Escalona', 3450, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Noir métallique ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'17', N'Discrete', N'Zhang', 3110, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Grise', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'18', N'Abstract', N'Fritsch', 5740, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Yellow', N'Abstrac.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'19', N'Trinta', N'Berrux', 4370, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleue', N'Trinta.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'2', N'Level', N'Bradley', 3590, N'Séjour ', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Ivoire', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'20', N'Dedale', N'Zhang', 4090, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'21', N'Pulpe', N'Quitllet', 4310, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Koala', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'22', N'Astrolab', N'Bobois', 6989, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Champagne ', N'Astrolab.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'23', N'Syntaxe', N'Bobois', 3670, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bois', N'Syntaxe.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'24', N'Reminiscence', N'Baitel', 6850, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Chêne ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'25', N'Tenere', N'Morgaine', 5170, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Naturel ', N'Tenere.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'26', N'Identities', N'Baitel', 690, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Camel', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'27', N'Fenice', N'Bobois', 580, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gris', N'Fenice.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'28', N'Lagona', N'Zappa', 860, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Noir', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'29', N'Volubilis', N'Morgaine', 920, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Pistache', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'3', N'Temple', N'Shade', 3990, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleu Pétrole ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'30', N'Ava', N'Baitel', 4500, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Transparent ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'31', N'Globo', N'Bobois', 3200, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Caramello', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'32', N'Nat', N'Erwan ', 6100, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gris Cendre', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'33', N'Astragale', N'Baitel', 3690, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Noisette', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'34', N'Coloris', N'Berrux', 5890, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gravier', N'Coloris.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'35', N'Mangrove', N'Fumagalli', 5670, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', N'MangroveSM.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'36', N'Agape', N'Lakic', 6410, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Transparent', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'37', N'Melt', N'Ragot', 6940, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Anodisée', N'Melt.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'38', N'Eden_Rock', N'Lakic', 3140, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bois', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'39', N'Ipanema', N'Moinard', 4480, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Macaron', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'4', N'Valentino', N'Bellagio', 3899, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Beige', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'40', N'Pulp', N'Quitllet', 4450, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', N'Pulp.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'41', N'Lenny', N'Giofra', 1870, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Turquoise', N'Lenny.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'42', N'Cento', N'Lakic', 2630, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Yvore', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'43', N'Ibiza', N'Giofra', 1220, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Moutard', N'Ibiza.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'44', N'Rdv', N'Lakic', 1727, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Tilleul', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'45', N'Furtif', N'Rode', 870, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Black ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'46', N'Montgolfiere', N'Wanders', 5720, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Terracota', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'47', N'Bubble', N'Lakic', 6130, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleu Nuit', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'48', N'Eden-rock', N'Lakic', 5030, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Yvore', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'49', N'Track', N'Gorgoni', 6540, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Chêne ', N'Track.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'5', N'Milano', N'Bellagio', 3200, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Ocre', N'Milano.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'50', N'Epoq', N'Quitllet', 4460, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Linen ', N'Epoq.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'51', N'Mangrove', N'Wanders', 6750, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', N'Mangrove.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'52', N'Tiramolla', N'Gorgoni', 4750, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bronze', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'53', N'Paname', N'Giofra', 6780, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Doré', N'Paname.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'54', N'Wonder', N'Wanders', 8760, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Chêne ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'55', N'Octet', N'Tapinassi ', 4310, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Vert', N'Octet.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'56', N'Claridge', N'Gorgoni', 3240, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Beige', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'57', N'Track', N'Gorgoni', 4880, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gris', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'58', N'Rosace', N'Bobois', 4520, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Creme', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'59', N'Elica', N'Bouix', 5345, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc laqué', N'Elica.jpeg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'6', N'Odea', N'Tapinassi', 3800, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Curry', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'7', N'Cocoon', N'Shade', 2300, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Coton', N'Cocoon.jpg')
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'8', N'Aladdin', N'Bradley', 2560, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Macadamia', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'9', N'Bubble', N'Shade', 2460, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Orange', N'Bubble.jpeg')
