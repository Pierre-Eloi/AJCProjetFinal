USE [master]
GO
/****** Object:  Database [ProjetFinalDB]    Script Date: 22/08/2023 10:31:27 ******/
CREATE DATABASE [ProjetFinalDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjetFinalDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjetFinalDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjetFinalDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjetFinalDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProjetFinalDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjetFinalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjetFinalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjetFinalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjetFinalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjetFinalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjetFinalDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjetFinalDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjetFinalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjetFinalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjetFinalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjetFinalDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjetFinalDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjetFinalDB]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 22/08/2023 10:31:27 ******/
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
/****** Object:  Table [dbo].[Clients]    Script Date: 22/08/2023 10:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Email] [nvarchar](50) NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Rue] [nvarchar](50) NULL,
	[CodePostal] [int] NULL,
	[Ville] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Commandes]    Script Date: 22/08/2023 10:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commandes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdClient] [nvarchar](50) NULL,
	[Date] [datetime2](7) NULL,
	[Detail] [nvarchar](max) NULL,
	[PrixTotal] [float] NULL,
 CONSTRAINT [PK_Commandes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'1', N'Bubble2 ', N'Shade', 3300, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Olive', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'10', N'Blogger', N'Tapinassi', 2660, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Nuage', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'11', N'Galet', N'Messieurs', 2990, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bois', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'12', N'Shark', N'Juam', 2420, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Fumme gris', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'13', N'Long_beach', N'Bellagio', 2980, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Marbre', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'14', N'Precious', N'Ragot', 1460, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleue ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'15', N'Equilibre', N'Fritsch', 2920, N'Séjour', N'Table Baisse', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Marbre Travertino', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'16', N'Partition', N'Escalona', 3450, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Noir métallique ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'17', N'Discrete', N'Zhang', 3110, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Grise', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'18', N'Abstract', N'Fritsch', 5740, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Yellow', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'19', N'Trinta', N'Berrux', 4370, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleue', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'2', N'Level', N'Bradley', 3590, N'Séjour ', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Ivoire', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'20', N'Dedale', N'Zhang', 4090, N'Séjour', N'Bibliotheque', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'21', N'Pulpe', N'Quitllet', 4310, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Koala', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'22', N'Astrolab', N'Bobois', 6989, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Champagne ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'23', N'Syntaxe', N'Bobois', 3670, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bois', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'24', N'Reminiscence', N'Baitel', 6850, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Chêne ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'25', N'Tenere', N'Morgaine', 5170, N'Salle à Manger', N'Tables', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Naturel ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'26', N'Identities', N'Baitel', 690, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Camel', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'27', N'Fenice', N'Bobois', 580, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gris', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'28', N'Lagona', N'Zappa', 860, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Noir', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'29', N'Volubilis', N'Morgaine', 920, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Pistache', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'3', N'Temple', N'Shade', 3990, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleu Pétrole ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'30', N'Ava', N'Baitel', 4500, N'Salle à Manger', N'Chaises', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Transparent ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'31', N'Globo', N'Bobois', 3200, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Caramello', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'32', N'Nat', N'Erwan ', 6100, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gris Cendre', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'33', N'Astragale', N'Baitel', 3690, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Noisette', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'34', N'Coloris', N'Berrux', 5890, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gravier', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'35', N'Mangrove', N'Fumagalli', 5670, N'Salle à Manger', N'Buffets', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'36', N'Agape', N'Lakic', 6410, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Transparent', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'37', N'Melt', N'Ragot', 6940, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Anodisée', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'38', N'Eden_Rock', N'Lakic', 3140, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bois', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'39', N'Ipanema', N'Moinard', 4480, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Macaron', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'4', N'Valentino', N'Bellagio', 3899, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Beige', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'40', N'Pulp', N'Quitllet', 4450, N'Bureaux', N'Meubles de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'41', N'Lenny', N'Giofra', 1870, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Turquoise', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'42', N'Cento', N'Lakic', 2630, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Yvore', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'43', N'Ibiza', N'Giofra', 1220, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Moutard', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'44', N'Rdv', N'Lakic', 1727, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Tilleul', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'45', N'Furtif', N'Rode', 870, N'Bureaux', N'Sieges de Bureau', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Black ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'46', N'Montgolfiere', N'Wanders', 5720, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Terracota', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'47', N'Bubble', N'Lakic', 6130, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bleu Nuit', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'48', N'Eden-rock', N'Lakic', 5030, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Yvore', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'49', N'Track', N'Gorgoni', 6540, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Chêne ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'5', N'Milano', N'Bellagio', 3200, N'Séjour', N'Canapés ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Ocre', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'50', N'Epoq', N'Quitllet', 4460, N'Chambre', N'Lits', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Linen ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'51', N'Mangrove', N'Wanders', 6750, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'52', N'Tiramolla', N'Gorgoni', 4750, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Bronze', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'53', N'Paname', N'Giofra', 6780, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Doré', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'54', N'Wonder', N'Wanders', 8760, N'Chambre', N'Armoires ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Chêne ', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'55', N'Octet', N'Tapinassi ', 4310, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Vert', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'56', N'Claridge', N'Gorgoni', 3240, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Beige', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'57', N'Track', N'Gorgoni', 4880, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Gris', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'58', N'Rosace', N'Bobois', 4520, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Creme', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'59', N'Elica', N'Bouix', 5345, N'Chambre', N'Commode', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Blanc laqué', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'6', N'Odea', N'Tapinassi', 3800, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Curry', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'7', N'Cocoon', N'Shade', 2300, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Coton', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'8', N'Aladdin', N'Bradley', 2560, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Macadamia', NULL)
INSERT [dbo].[Articles] ([Id], [Nom], [Marque], [Prix], [Categorie], [SousCategorie], [Description], [Couleur], [Image]) VALUES (N'9', N'Bubble', N'Shade', 2460, N'Séjour', N'Fauteuils', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Orange', NULL)
INSERT [dbo].[Clients] ([Email], [Nom], [Prenom], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (N'aron-laure@email.fr', N'ARON', N'laure', N'ee', N'09875     ', N'29 Alexandre Martin', 30560, N'Nimes')
INSERT [dbo].[Clients] ([Email], [Nom], [Prenom], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (N'ford_marie@email.fr', N'FORD', N'mary', N'aa', N'0123      ', N'01 rue Jeanne d''Arc', 76000, N'Rouen')
INSERT [dbo].[Clients] ([Email], [Nom], [Prenom], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (N'garry.helena@sfr.fr', N'GARRY', N'Helena', N'dd', N'09876     ', N'23 rue de Pres', 43560, N'Tours')
INSERT [dbo].[Clients] ([Email], [Nom], [Prenom], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (N'jean.peter@emploi.fr', N'PETER', N'jean', N'ff', N'5678', N'19 Boulevard Guillaume', 45367, N'Blois')
INSERT [dbo].[Clients] ([Email], [Nom], [Prenom], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (N'miller_james@hotmail.fr', N'MILLER', N'james', N'bb', N'0234      ', N'17 Boulevard de la République', 76000, N'Rouen')
INSERT [dbo].[Clients] ([Email], [Nom], [Prenom], [Password], [Telephone], [Rue], [CodePostal], [Ville]) VALUES (N'wilking.peter@emai.com', N'WILKIN', N'peter', N'cc', N'0345      ', NULL, 34567, N'Bordeaux')
USE [master]
GO
ALTER DATABASE [ProjetFinalDB] SET  READ_WRITE 
GO
