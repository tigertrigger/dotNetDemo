USE [master]
GO
/****** Object:  Database [ceshi]    Script Date: 2019/9/6 17:24:04 ******/
CREATE DATABASE [ceshi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ceshi', FILENAME = N'C:\开发用软件\SQL\SQLdemo\MSSQL12.MSSQLSERVER\MSSQL\DATA\ceshi_Primary.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ceshi_log', FILENAME = N'C:\开发用软件\SQL\SQLdemo\MSSQL12.MSSQLSERVER\MSSQL\DATA\ceshi_Primary.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[pm]    Script Date: 2019/9/6 17:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pm](
	[id] [int] NOT NULL,
	[date] [date] NULL,
	[val] [int] NULL,
 CONSTRAINT [PK_pm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_madMaterial]    Script Date: 2019/9/6 17:24:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_madMaterial](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](50) NULL,
	[del_flag] [bit] NULL CONSTRAINT [DF_t_madMaterial_del_flag]  DEFAULT ((0)),
	[mad_order] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_t_madMaterial_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_memberDetail]    Script Date: 2019/9/6 17:24:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_memberDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_t_memberDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (1, CAST(N'2019-09-01' AS Date), 125)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (2, CAST(N'2019-09-02' AS Date), 213)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (3, CAST(N'2019-09-03' AS Date), 333)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (4, CAST(N'2019-09-04' AS Date), 423)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (5, CAST(N'2019-09-05' AS Date), 466)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (6, CAST(N'2019-09-06' AS Date), 421)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (7, CAST(N'2019-09-07' AS Date), 250)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (8, CAST(N'2019-09-08' AS Date), 166)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (9, CAST(N'2019-09-09' AS Date), 186)
INSERT [dbo].[pm] ([id], [date], [val]) VALUES (10, CAST(N'2019-09-10' AS Date), 211)
SET IDENTITY_INSERT [dbo].[t_madMaterial] ON 

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (1, N'符京', N'www.hao123.com', 0, 1)
INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (2, N'陈剑飞', N'www.baidu.com', 0, 2)
INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (3, N'西西西西', N'www.bilibili.com', 0, 3)
INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (5, N'咚哒哟', N'www.ilidilid.com', 0, 4)
SET IDENTITY_INSERT [dbo].[t_madMaterial] OFF
SET IDENTITY_INSERT [dbo].[t_memberDetail] ON 

INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (1, 1)
INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (2, 2)
INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[t_memberDetail] OFF
ALTER TABLE [dbo].[t_memberDetail]  WITH CHECK ADD  CONSTRAINT [FK_t_memberDetail_t_memberDetail] FOREIGN KEY([user_id])
REFERENCES [dbo].[t_madMaterial] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[t_memberDetail] CHECK CONSTRAINT [FK_t_memberDetail_t_memberDetail]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateUser]    Script Date: 2019/9/6 17:24:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
--创建用户的存储过程， 

--示例EXEC sp_CreateUser 'UserName','rw','DatabaseName' 
--EXEC sp_CreateUser 'tesefx','r','Test','0xE39CA97EBE03BB4CA5FF78E50374EEBB' 

CREATE PROC [dbo].[sp_CreateUser] 
@loginName VARCHAR(50) , 
@IsWrite VarCHAR(3) , 
@DatabaseName VARCHAR(50), 
@Sid VARCHAR(100) ='1' 
AS 
PRINT('示例：EXEC sp_CreateUser ''UserName'',''rw'',''DatabaseName''') 
PRINT('示例：EXEC sp_CreateUser ''UserName'',''rwv'',''DatabaseName'',''0xE39CA97EBE03BB4CA5FF78E50374EEBB''') 
PRINT('r为只读权限，rw为读写权限，rwv为读写加View Definition权限') 


IF EXISTS ( SELECT name 
FROM sys.syslogins 
WHERE name = @loginName ) 
BEGIN 
PRINT N'登录名已存在，跳过创建登录名步骤' 
END 
ELSE 
BEGIN 

DECLARE @CreateLogin NVARCHAR(1000) 
DECLARE @pwd VARCHAR(50) 
PRINT @Sid 
SET @pwd=NEWID() 
IF(@sid='1') 
BEGIN 
SET @CreateLogin = 'CREATE LOGIN [' + @loginName + '] WITH PASSWORD=N''' 
+ @Pwd 
+ ''', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;' 
PRINT N'登录名已创建，密码为:'+@pwd 
END 
ELSE 
BEGIN 
SET @CreateLogin = 'CREATE LOGIN [' + @loginName + '] WITH PASSWORD=N''' 
+ @Pwd 
+ ''', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF,sid='+@Sid+';' 
PRINT N'已经使用SID创建登录名:'+@loginName 

END 
EXEC (@CreateLogin) 

--DECLARE @sidtemp NVARCHAR(50) 
--SELECT @sidtemp=sid FROM sys.server_principals WHERE name=@loginName 
--PRINT(N'登录名为:'+@loginName+N' SID为: 0x'+CONVERT(VARCHAR(50), @sidtemp, 2) ) 
END 



DECLARE @DynamicSQL NVARCHAR(1000) 
--切换数据库上下文 
SET @DynamicSQL = N'Use [' + @DatabaseName + ']; ' + 'IF EXISTS(SELECT name FROM sys.database_principals WHERE name='''+@loginName+''') Begin Print(''用户名已存在，跳过创建用户名的步骤'') end else begin CREATE USER [' 
+ @loginName + '] FOR LOGIN ' + @loginName + ' end;IF (''' 
+ @IsWrite 
+ '''=''rw'' or ''' 
+ @IsWrite 
+ '''=''rwv'') BEGIN ALTER ROLE [db_datareader] ADD MEMBER ' + @loginName 
+ ';ALTER ROLE [db_datawriter] ADD MEMBER ' + @loginName 
+ '; END ELSE BEGIN ALTER ROLE [db_datareader] ADD MEMBER ' 
+ @loginName + '; 
ALTER ROLE db_datawriter DROP MEMBER ' 
+ @loginName + ' 
;End;grant execute to ' + @loginName + '; 
if('''+@IsWrite+'''<>''rwv'') begin deny view definition to ' + @loginName + '; end else begin grant view definition to ' + @loginName + '; end' 

EXEC (@DynamicSQL)
GO
USE [master]
GO
ALTER DATABASE [ceshi] SET  READ_WRITE 
GO
