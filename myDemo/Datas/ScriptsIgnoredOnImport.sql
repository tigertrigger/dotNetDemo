
USE [master]
GO

/****** Object:  Database [ceshi]    Script Date: 2019/8/30 16:54:07 ******/
CREATE DATABASE [ceshi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ceshi', FILENAME = N'C:\开发用软件\SQL\SQLdemo\MSSQL12.MSSQLSERVER\MSSQL\DATA\ceshi.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ceshi_log', FILENAME = N'C:\开发用软件\SQL\SQLdemo\MSSQL12.MSSQLSERVER\MSSQL\DATA\ceshi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ceshi] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ceshi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ceshi] SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [ceshi] SET ANSI_NULLS OFF
GO

ALTER DATABASE [ceshi] SET ANSI_PADDING OFF
GO

ALTER DATABASE [ceshi] SET ANSI_WARNINGS OFF
GO

ALTER DATABASE [ceshi] SET ARITHABORT OFF
GO

ALTER DATABASE [ceshi] SET AUTO_CLOSE OFF
GO

ALTER DATABASE [ceshi] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [ceshi] SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [ceshi] SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [ceshi] SET CURSOR_DEFAULT  GLOBAL
GO

ALTER DATABASE [ceshi] SET CONCAT_NULL_YIELDS_NULL OFF
GO

ALTER DATABASE [ceshi] SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [ceshi] SET QUOTED_IDENTIFIER OFF
GO

ALTER DATABASE [ceshi] SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [ceshi] SET  DISABLE_BROKER
GO

ALTER DATABASE [ceshi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [ceshi] SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [ceshi] SET TRUSTWORTHY OFF
GO

ALTER DATABASE [ceshi] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [ceshi] SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [ceshi] SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [ceshi] SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [ceshi] SET RECOVERY FULL
GO

ALTER DATABASE [ceshi] SET  MULTI_USER
GO

ALTER DATABASE [ceshi] SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [ceshi] SET DB_CHAINING OFF
GO

ALTER DATABASE [ceshi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO

ALTER DATABASE [ceshi] SET TARGET_RECOVERY_TIME = 0 SECONDS
GO

ALTER DATABASE [ceshi] SET DELAYED_DURABILITY = DISABLED
GO

EXEC sys.sp_db_vardecimal_storage_format N'ceshi', N'ON'
GO

USE [ceshi]
GO

/****** Object:  Table [dbo].[t_madMaterial]    Script Date: 2019/8/30 16:54:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[t_memberDetail]    Script Date: 2019/8/30 16:54:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[t_madMaterial] ON
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (1, N'符京', N'www.hao123.com', 0, 1)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (2, N'陈剑飞', N'www.baidu.com', 0, 2)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (3, N'西西西西', N'www.bilibili.com', 0, 3)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (5, N'咚哒哟', N'www.ilidilid.com', 0, 4)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (6, N'1', NULL, 0, 16)
GO

SET IDENTITY_INSERT [dbo].[t_madMaterial] OFF
GO

SET IDENTITY_INSERT [dbo].[t_memberDetail] ON
GO

INSERT [dbo].[t_memberDetail] ([id], [user_id], [hp], [datetime]) VALUES (1, 1, N'32', CAST(N'2012-12-12 14:33:33.000' AS DateTime))
GO

INSERT [dbo].[t_memberDetail] ([id], [user_id], [hp], [datetime]) VALUES (2, 2, N'60        ', CAST(N'2012-12-12 14:33:33.000' AS DateTime))
GO

INSERT [dbo].[t_memberDetail] ([id], [user_id], [hp], [datetime]) VALUES (3, 3, N'81        ', CAST(N'2012-12-12 14:33:33.000' AS DateTime))
GO

SET IDENTITY_INSERT [dbo].[t_memberDetail] OFF
GO

/****** Object:  StoredProcedure [dbo].[sp_CreateUser]    Script Date: 2019/8/30 16:54:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [master]
GO

ALTER DATABASE [ceshi] SET  READ_WRITE
GO
