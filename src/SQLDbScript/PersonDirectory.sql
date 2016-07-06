USE [master]
GO
CREATE DATABASE [sampledb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sampledb', FILENAME = N'C:\data\sampledb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sampledb_log', FILENAME = N'C:\data\sampledb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sampledb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sampledb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sampledb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sampledb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sampledb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sampledb] SET ARITHABORT OFF 
GO
ALTER DATABASE [sampledb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sampledb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sampledb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sampledb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sampledb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sampledb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sampledb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sampledb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sampledb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sampledb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sampledb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sampledb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sampledb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sampledb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sampledb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sampledb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sampledb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sampledb] SET RECOVERY FULL 
GO
ALTER DATABASE [sampledb] SET  MULTI_USER 
GO
ALTER DATABASE [sampledb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sampledb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sampledb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sampledb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sampledb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sampledb', N'ON'
GO
USE [sampledb]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 6/25/2016 10:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Address] [varchar](255) NULL,
	[ContactNo] [varchar](255) NOT NULL,
	[Picture] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([PersonID], [Name], [Address], [ContactNo], [Picture]) VALUES (1, N'James King', N'jking@fakemail.com', N'617-000-0001', N'James_King.jpg')
INSERT [dbo].[Persons] ([PersonID], [Name], [Address], [ContactNo], [Picture]) VALUES (2, N'Julie Taylor', N'jtaylor@fakemail.com', N'617-000-0002', N'Julie_Taylor.jpg')
INSERT [dbo].[Persons] ([PersonID], [Name], [Address], [ContactNo], [Picture]) VALUES (3, N'Eugene Lee', N'elee@fakemail.com', N'617-000-0003', N'Eugene_Lee.jpg')
INSERT [dbo].[Persons] ([PersonID], [Name], [Address], [ContactNo], [Picture]) VALUES (4, N'John Williams', N'jwilliams@fakemail.com', N'617-000-0004', N'John_Williams.jpg')
INSERT [dbo].[Persons] ([PersonID], [Name], [Address], [ContactNo], [Picture]) VALUES (5, N'Ray Moore', N'rmoore@fakemail.com', N'617-000-0005', N'Ray_Moore.jpg')
INSERT [dbo].[Persons] ([PersonID], [Name], [Address], [ContactNo], [Picture]) VALUES (6, N'Paul Jones', N'pjones@fakemail.com', N'617-000-0006', NULL)
SET IDENTITY_INSERT [dbo].[Persons] OFF
USE [master]
GO
ALTER DATABASE [sampledb] SET  READ_WRITE 
GO
