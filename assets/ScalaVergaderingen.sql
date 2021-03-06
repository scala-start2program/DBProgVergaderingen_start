USE [master]
GO
drop database if exists ScalaVergaderingen
go
/****** Object:  Database [ScalaVergaderingen]    Script Date: 31/05/2022 13:44:56 ******/
CREATE DATABASE [ScalaVergaderingen]
GO
ALTER DATABASE [ScalaVergaderingen] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ScalaVergaderingen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ScalaVergaderingen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET ARITHABORT OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ScalaVergaderingen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ScalaVergaderingen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ScalaVergaderingen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ScalaVergaderingen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ScalaVergaderingen] SET  MULTI_USER 
GO
ALTER DATABASE [ScalaVergaderingen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ScalaVergaderingen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ScalaVergaderingen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ScalaVergaderingen] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ScalaVergaderingen] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ScalaVergaderingen] SET QUERY_STORE = OFF
GO
USE [ScalaVergaderingen]
GO
/****** Object:  Table [dbo].[Deelnemers]    Script Date: 31/05/2022 13:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deelnemers](
	[vergaderingId] [nvarchar](50) NOT NULL,
	[persoonId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Deelnemers] PRIMARY KEY CLUSTERED 
(
	[vergaderingId] ASC,
	[persoonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personen]    Script Date: 31/05/2022 13:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personen](
	[Id] [nvarchar](50) NOT NULL,
	[Naam] [nvarchar](50) NULL,
 CONSTRAINT [PK_Personen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vergaderingen]    Script Date: 31/05/2022 13:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vergaderingen](
	[Id] [nvarchar](50) NOT NULL,
	[Datum] [date] NULL,
	[Van] [nvarchar](5) NULL,
	[Tot] [nvarchar](5) NULL,
	[Locatie] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vergaderingen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'60abda5f-dc62-4703-9636-74d77965b39f', N'p001')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'60abda5f-dc62-4703-9636-74d77965b39f', N'p002')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'60abda5f-dc62-4703-9636-74d77965b39f', N'p004')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'60abda5f-dc62-4703-9636-74d77965b39f', N'p005')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'60abda5f-dc62-4703-9636-74d77965b39f', N'p010')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'f0060f37-2c34-4923-bac8-8b113b0f946d', N'p004')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'f0060f37-2c34-4923-bac8-8b113b0f946d', N'p009')
INSERT [dbo].[Deelnemers] ([vergaderingId], [persoonId]) VALUES (N'f0060f37-2c34-4923-bac8-8b113b0f946d', N'p010')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p001', N'Wim Willems')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p002', N'Walter Versnick')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p003', N'Mieke Maertens')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p004', N'Bart Berkels')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p005', N'Agnes Vandamme')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p006', N'Basiel Bonne')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p007', N'Brad Pit')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p008', N'Hans Hobbelsteen')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p009', N'Fred Swimmer')
INSERT [dbo].[Personen] ([Id], [Naam]) VALUES (N'p010', N'Heid Lakmoes')
INSERT [dbo].[Vergaderingen] ([Id], [Datum], [Van], [Tot], [Locatie]) VALUES (N'60abda5f-dc62-4703-9636-74d77965b39f', CAST(N'2022-05-31' AS Date), N'14:00', N'15:00', N'Personeelsruimte')
INSERT [dbo].[Vergaderingen] ([Id], [Datum], [Van], [Tot], [Locatie]) VALUES (N'f0060f37-2c34-4923-bac8-8b113b0f946d', CAST(N'2022-05-31' AS Date), N'10:00', N'12:00', N'Vergaderzaal')
ALTER TABLE [dbo].[Deelnemers]  WITH CHECK ADD  CONSTRAINT [FK_Deelnemers_Personen] FOREIGN KEY([persoonId])
REFERENCES [dbo].[Personen] ([Id])
GO
ALTER TABLE [dbo].[Deelnemers] CHECK CONSTRAINT [FK_Deelnemers_Personen]
GO
ALTER TABLE [dbo].[Deelnemers]  WITH CHECK ADD  CONSTRAINT [FK_Deelnemers_Vergaderingen] FOREIGN KEY([vergaderingId])
REFERENCES [dbo].[Vergaderingen] ([Id])
GO
ALTER TABLE [dbo].[Deelnemers] CHECK CONSTRAINT [FK_Deelnemers_Vergaderingen]
GO
USE [master]
GO
ALTER DATABASE [ScalaVergaderingen] SET  READ_WRITE 
GO