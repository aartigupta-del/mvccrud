USE [master]
GO
/****** Object:  Database [mvccrud]    Script Date: 8/25/2021 10:48:46 AM ******/
CREATE DATABASE [mvccrud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mvccrud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\mvccrud.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mvccrud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\mvccrud_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mvccrud] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mvccrud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mvccrud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mvccrud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mvccrud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mvccrud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mvccrud] SET ARITHABORT OFF 
GO
ALTER DATABASE [mvccrud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mvccrud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mvccrud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mvccrud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mvccrud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mvccrud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mvccrud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mvccrud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mvccrud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mvccrud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mvccrud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mvccrud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mvccrud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mvccrud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mvccrud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mvccrud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mvccrud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mvccrud] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mvccrud] SET  MULTI_USER 
GO
ALTER DATABASE [mvccrud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mvccrud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mvccrud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mvccrud] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [mvccrud]
GO
/****** Object:  Table [dbo].[users]    Script Date: 8/25/2021 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](100) NOT NULL,
	[lastname] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phone] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users1]    Script Date: 8/25/2021 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](100) NOT NULL,
	[lastname] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[address] [text] NOT NULL,
	[active] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [firstname], [lastname], [email], [phone], [password]) VALUES (1, N'AARTI', N'GUPTA', N'Arava@gmail.com', N'78444567', N'SSSSSSSS')
INSERT [dbo].[users] ([id], [firstname], [lastname], [email], [phone], [password]) VALUES (2, N'AARTI', N'GUPTA', N'Arava@gmail.com', N'78444567', N'SSSSSSSS')
INSERT [dbo].[users] ([id], [firstname], [lastname], [email], [phone], [password]) VALUES (3, N'AARTI', N'GUPTA', N'Arava@gmail.com', N'78444567', N'SSSSSSSS')
INSERT [dbo].[users] ([id], [firstname], [lastname], [email], [phone], [password]) VALUES (4, N'AARTI', N'GUPTA', N'Arava@gmail.com', N'78444567', N'SSSSSSSS')
INSERT [dbo].[users] ([id], [firstname], [lastname], [email], [phone], [password]) VALUES (5, N' bn', N'GUPTA', N'Arava@gmail.com', N'78444567', N'SSSSSSSS')
SET IDENTITY_INSERT [dbo].[users] OFF
SET IDENTITY_INSERT [dbo].[users1] ON 

INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (1, N'AARTI', N'GUPTA', N'ashu@gmail.com', N'thane', N'upvan lake', N'Y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (2, N'sakshi', N'mulik', N'muskan@gmail.com', N'majiwada', N'mumbai', N'Y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (3, N'manali', N'desai', N'Arava@gmail.com', N'thane', N'pune', N'Y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (4, N'AARTI', N'GUPTA', N'aarti@gmail.com', N'thane', N'kopri', N'Y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (5, N'manali', N'desai', N'manali@gmail.com', N'thane', N'pune', N'Y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (6, N'manali', N'desai', N'ashu@gmail.com', N'thane', N'kopri', N'Y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (7, N'', N'', N'', N'', N'', N'N')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (8, N'', N'', N'', N'', N'', N'N')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (9, N'', N'', N'', N'', N'', N'N')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (10, N'', N'', N'', N'', N'', N'N')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (11, N'', N'', N'', N'', N'', N'N')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (12, N'', N'', N'', N'', N'', N'N')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (13, N'', N'', N'ashu@gmail.com', N'thane', N'thane
wagle estate', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (14, N'', N'', N'muskan@gmail.com', N'thane', N'pune
pune', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (15, N'', N'', N'ashu@gmail.com', N'thane', N'thane
wagle estate', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (16, N'', N'', N'aarti@123gmail.com', N'thane', N'thane
wagle estate', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (17, N'', N'', N'ashu@gmail.com', N'thane', N'thane
wagle estate', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (18, N'', N'', N'ashu@gmail.com', N'thane', N'pune
pune', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (19, N'', N'', N'Arava@gmail.com', N'thane', N'pune
pune', N'y')
INSERT [dbo].[users1] ([id], [firstname], [lastname], [email], [city], [address], [active]) VALUES (20, N'sakshi', N'desai', N'Arava@gmail.com', N'thane', N'lokmanya
nagar', N'y')
SET IDENTITY_INSERT [dbo].[users1] OFF
ALTER TABLE [dbo].[users1] ADD  DEFAULT ('y') FOR [active]
GO
USE [master]
GO
ALTER DATABASE [mvccrud] SET  READ_WRITE 
GO
