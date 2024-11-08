USE [master]
GO
/****** Object:  Database [OldSingaporeImport]    Script Date: 10/26/2024 3:43:23 PM ******/
CREATE DATABASE [OldSingaporeImport]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OldImportDocumentationWebWorkflow', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\OldSingaporeImport.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OldImportDocumentationWebWorkflow_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\OldSingaporeImport_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OldSingaporeImport].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OldSingaporeImport] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET ARITHABORT OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OldSingaporeImport] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OldSingaporeImport] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OldSingaporeImport] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OldSingaporeImport] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET RECOVERY FULL 
GO
ALTER DATABASE [OldSingaporeImport] SET  MULTI_USER 
GO
ALTER DATABASE [OldSingaporeImport] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OldSingaporeImport] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OldSingaporeImport] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OldSingaporeImport] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OldSingaporeImport] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OldSingaporeImport] SET QUERY_STORE = OFF
GO
USE [OldSingaporeImport]
GO
/****** Object:  User [userelinq]    Script Date: 10/26/2024 3:43:23 PM ******/
CREATE USER [userelinq] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ActivityMaster]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[BasedOn] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ThreadId] [nvarchar](450) NOT NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_ActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Wnsid] [nvarchar](max) NOT NULL,
	[CitrixId] [nvarchar](max) NOT NULL,
	[DocContact] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NOT NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[IsLDAP] [bit] NOT NULL,
	[IsReset] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileActivity]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileActivity](
	[Id] [nvarchar](450) NOT NULL,
	[FileId] [nvarchar](450) NULL,
	[ActivityId] [nvarchar](450) NULL,
	[CurrentStatus] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[EnterDate] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[StartTime] [datetime2](7) NULL,
	[Pages] [int] NULL,
 CONSTRAINT [PK_FileActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileEntry]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileEntry](
	[Id] [nvarchar](450) NOT NULL,
	[FileNo] [nvarchar](max) NULL,
	[ContainerNo] [nvarchar](max) NULL,
	[IsEdi] [bit] NULL,
	[Pol] [nvarchar](max) NULL,
	[Pod] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[Hblcount] [nvarchar](max) NULL,
	[ActualHblcount] [nvarchar](max) NULL,
	[EtaAtPod] [datetime2](7) NULL,
	[VesselName] [nvarchar](max) NULL,
	[ShippingLine] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[AllocatedTo] [nvarchar](max) NULL,
	[AllocatedDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[HBLFreightTerm] [nvarchar](max) NULL,
	[MBLFreightTerm] [nvarchar](max) NULL,
	[ProductType] [nvarchar](max) NULL,
 CONSTRAINT [PK_FileEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblEntry]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HblEntry](
	[Id] [nvarchar](450) NOT NULL,
	[FileGuidId] [nvarchar](450) NOT NULL,
	[Hblno] [nvarchar](max) NOT NULL,
	[IsDap] [bit] NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_HblEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationMaster]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LocationMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POLMaster]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POLMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_POLMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThreadMaster]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Sequance] [int] NULL,
 CONSTRAINT [PK_ThreadMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_AdminDashboardViewModels]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AdminDashboardViewModels] AS
WITH LatestActivities AS (
    SELECT 
        fa.FileId,
        ta.Name AS ThreadName,
        ua.UserName AS AllocatedTo,
        sa.CurrentStatus,
        ROW_NUMBER() OVER (PARTITION BY fa.FileId ORDER BY fa.EndTime) AS rn
    FROM 
        FileActivity fa
    LEFT JOIN ActivityMaster am ON am.Id = fa.ActivityId
    LEFT JOIN ThreadMaster ta ON ta.Id = am.ThreadId AND ta.IsActive = 1
    LEFT JOIN AspNetUsers ua ON ua.Id = fa.UserId
    LEFT JOIN (
        SELECT 
            FileId,
            MAX(EndTime) AS LatestEndTime,
            MAX(CurrentStatus) AS CurrentStatus
        FROM 
            FileActivity
        GROUP BY 
            FileId
    ) sa ON sa.FileId = fa.FileId
),
RankedFiles AS (
    SELECT 
        fe.Id,
        DATEADD(MINUTE, 330, fe.CreatedDate) AS CreatedDate,
        fe.FileNo,
        fe.ContainerNo,
        CASE WHEN fe.IsEdi = 1 THEN 'Yes' ELSE 'No' END AS IsEdi,
        pol.Name AS Pol,
        loc.Name AS Pod,
        COALESCE(fe.FileType, '') AS FileType,
        COALESCE(fe.ProductType, '') AS ProductType,
        ISNULL(CAST(NULLIF(hbe.CountHbl, 0) AS VARCHAR(10)), fe.Hblcount) AS Hblcount,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod,
        COALESCE(fe.VesselName, '') AS VesselName,
        COALESCE(fe.ShippingLine, '') AS ShippingLine,
        la.ThreadName,
        la.AllocatedTo,
        COALESCE(la.CurrentStatus, 'Pending') AS Status,
        ROW_NUMBER() OVER (PARTITION BY fe.Id ORDER BY la.rn) AS RowNum
    FROM 
        FileEntry fe
    LEFT JOIN POLMaster pol ON pol.Id = fe.Pol
    LEFT JOIN LocationMaster loc ON loc.Id = fe.Pod
    LEFT JOIN (
        SELECT 
            FileGuidId,
            COUNT(DISTINCT Id) AS CountHbl
        FROM 
            HblEntry
        GROUP BY 
            FileGuidId
    ) hbe ON hbe.FileGuidId = fe.Id
    LEFT JOIN LatestActivities la ON la.FileId = fe.Id
)
SELECT 
    Id, 
    CreatedDate, 
    FileNo, 
    ContainerNo, 
    IsEdi, 
    Pol, 
    Pod, 
    FileType, 
    ProductType,
    Hblcount, 
    EtaAtPod, 
    VesselName, 
    ShippingLine, 
    ThreadName, 
    AllocatedTo, 
    Status
FROM 
    RankedFiles
WHERE 
    RowNum = 1;
GO
/****** Object:  View [dbo].[vw_AdminDashboardCount]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AdminDashboardCount] AS
WITH LatestActivities AS (
    SELECT 
        fa.FileId,
        ta.Name AS ThreadName,
        ua.UserName AS AllocatedTo,
        sa.CurrentStatus,
        ROW_NUMBER() OVER (PARTITION BY fa.FileId ORDER BY fa.EndTime) AS rn
    FROM 
        FileActivity fa
    LEFT JOIN ActivityMaster am ON am.Id = fa.ActivityId
    LEFT JOIN ThreadMaster ta ON ta.Id = am.ThreadId AND ta.IsActive = 1
    LEFT JOIN AspNetUsers ua ON ua.Id = fa.UserId
    LEFT JOIN (
        SELECT 
            FileId,
            MAX(EndTime) AS LatestEndTime,
            MAX(CurrentStatus) AS CurrentStatus
        FROM 
            FileActivity
        GROUP BY 
            FileId
    ) sa ON sa.FileId = fa.FileId
),
RankedFiles AS (
    SELECT 
        fe.Id,
        DATEADD(MINUTE, 330, fe.CreatedDate) AS CreatedDate,
        fe.FileNo,
        fe.ContainerNo,
        CASE WHEN fe.IsEdi = 1 THEN 'Yes' ELSE 'No' END AS IsEdi,
        pol.Name AS Pol,
        loc.Name AS Pod,
        COALESCE(fe.FileType, '') AS FileType,
        COALESCE(fe.ProductType, '') AS ProductType,
        ISNULL(CAST(NULLIF(hbe.CountHbl, 0) AS VARCHAR(10)), fe.Hblcount) AS Hblcount,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod,
        COALESCE(fe.VesselName, '') AS VesselName,
        COALESCE(fe.ShippingLine, '') AS ShippingLine,
        la.ThreadName,
        la.AllocatedTo,
        COALESCE(la.CurrentStatus, 'Pending') AS Status,
        ROW_NUMBER() OVER (PARTITION BY fe.Id ORDER BY la.rn) AS RowNum
    FROM 
        FileEntry fe
    LEFT JOIN POLMaster pol ON pol.Id = fe.Pol
    LEFT JOIN LocationMaster loc ON loc.Id = fe.Pod
    LEFT JOIN (
        SELECT 
            FileGuidId,
            COUNT(DISTINCT Id) AS CountHbl
        FROM 
            HblEntry
        GROUP BY 
            FileGuidId
    ) hbe ON hbe.FileGuidId = fe.Id
    LEFT JOIN LatestActivities la ON la.FileId = fe.Id
)
SELECT 
    Id, 
    CreatedDate, 
    FileNo, 
    ContainerNo, 
    IsEdi, 
    Pol, 
    Pod, 
    FileType, 
    ProductType,
    Hblcount, 
    EtaAtPod, 
    VesselName, 
    ShippingLine, 
    ThreadName, 
    AllocatedTo, 
    Status
FROM 
    RankedFiles
WHERE 
    RowNum = 1;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityMapping]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityMapping](
	[Id] [nvarchar](450) NOT NULL,
	[FileActivityId] [nvarchar](450) NOT NULL,
	[HBLActivityId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ActivityMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileHistoryLog]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileHistoryLog](
	[Id] [nvarchar](450) NOT NULL,
	[FileActivityId] [nvarchar](450) NOT NULL,
	[CurrentStatus] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[EnterDate] [datetime2](7) NULL,
	[EnterEndDate] [datetime2](7) NULL,
	[EnterStartDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FileHistoryLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblActivity]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HblActivity](
	[Id] [nvarchar](450) NOT NULL,
	[HblId] [nvarchar](450) NOT NULL,
	[CurrentStatus] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[EnterBy] [nvarchar](450) NULL,
	[EnterDate] [datetime2](7) NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[EndTime] [datetime2](7) NULL,
	[StartTime] [datetime2](7) NULL,
 CONSTRAINT [PK_HblActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HBLHistoryLog]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HBLHistoryLog](
	[Id] [nvarchar](450) NOT NULL,
	[HBLActivityId] [nvarchar](450) NOT NULL,
	[CurrentStatus] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[EnterBy] [nvarchar](450) NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[EnterDate] [datetime2](7) NULL,
	[EnterEndDate] [datetime2](7) NULL,
	[EnterStartDate] [datetime2](7) NULL,
 CONSTRAINT [PK_HBLHistoryLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PolLocationRelation]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolLocationRelation](
	[Id] [nvarchar](450) NOT NULL,
	[LocationId] [nvarchar](450) NOT NULL,
	[PolId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_PolLocationRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThreadRelation]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadRelation](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ThreadId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ThreadRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLocationRelation]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLocationRelation](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[LocationId] [nvarchar](450) NOT NULL,
	[Sequance] [int] NULL,
 CONSTRAINT [PK_UserLocationRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoles] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsLDAP]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsReset]
GO
ALTER TABLE [dbo].[HblActivity] ADD  DEFAULT (N'') FOR [ActivityId]
GO
ALTER TABLE [dbo].[ActivityMapping]  WITH CHECK ADD  CONSTRAINT [FK_ActivityMapping_ActivityMaster_FileActivityId] FOREIGN KEY([FileActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
GO
ALTER TABLE [dbo].[ActivityMapping] CHECK CONSTRAINT [FK_ActivityMapping_ActivityMaster_FileActivityId]
GO
ALTER TABLE [dbo].[ActivityMapping]  WITH CHECK ADD  CONSTRAINT [FK_ActivityMapping_ActivityMaster_HBLActivityId] FOREIGN KEY([HBLActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
GO
ALTER TABLE [dbo].[ActivityMapping] CHECK CONSTRAINT [FK_ActivityMapping_ActivityMaster_HBLActivityId]
GO
ALTER TABLE [dbo].[ActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_ActivityMaster_ThreadMaster_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[ThreadMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityMaster] CHECK CONSTRAINT [FK_ActivityMaster_ThreadMaster_ThreadId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FileActivity]  WITH CHECK ADD  CONSTRAINT [FK_FileActivity_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
GO
ALTER TABLE [dbo].[FileActivity] CHECK CONSTRAINT [FK_FileActivity_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[FileActivity]  WITH CHECK ADD  CONSTRAINT [FK_FileActivity_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileActivity] CHECK CONSTRAINT [FK_FileActivity_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FileActivity]  WITH CHECK ADD  CONSTRAINT [FK_FileActivity_FileEntry_FileId] FOREIGN KEY([FileId])
REFERENCES [dbo].[FileEntry] ([Id])
GO
ALTER TABLE [dbo].[FileActivity] CHECK CONSTRAINT [FK_FileActivity_FileEntry_FileId]
GO
ALTER TABLE [dbo].[FileEntry]  WITH CHECK ADD  CONSTRAINT [FK_FileEntry_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileEntry] CHECK CONSTRAINT [FK_FileEntry_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[FileHistoryLog]  WITH CHECK ADD  CONSTRAINT [FK_FileHistoryLog_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FileHistoryLog] CHECK CONSTRAINT [FK_FileHistoryLog_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FileHistoryLog]  WITH CHECK ADD  CONSTRAINT [FK_FileHistoryLog_FileActivity_FileActivityId] FOREIGN KEY([FileActivityId])
REFERENCES [dbo].[FileActivity] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FileHistoryLog] CHECK CONSTRAINT [FK_FileHistoryLog_FileActivity_FileActivityId]
GO
ALTER TABLE [dbo].[HblActivity]  WITH CHECK ADD  CONSTRAINT [FK_HblActivity_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HblActivity] CHECK CONSTRAINT [FK_HblActivity_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[HblActivity]  WITH CHECK ADD  CONSTRAINT [FK_HblActivity_AspNetUsers_EnterBy] FOREIGN KEY([EnterBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HblActivity] CHECK CONSTRAINT [FK_HblActivity_AspNetUsers_EnterBy]
GO
ALTER TABLE [dbo].[HblActivity]  WITH CHECK ADD  CONSTRAINT [FK_HblActivity_HblEntry_HblId] FOREIGN KEY([HblId])
REFERENCES [dbo].[HblEntry] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HblActivity] CHECK CONSTRAINT [FK_HblActivity_HblEntry_HblId]
GO
ALTER TABLE [dbo].[HblEntry]  WITH CHECK ADD  CONSTRAINT [FK_HblEntry_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HblEntry] CHECK CONSTRAINT [FK_HblEntry_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[HblEntry]  WITH CHECK ADD  CONSTRAINT [FK_HblEntry_FileEntry_FileGuidId] FOREIGN KEY([FileGuidId])
REFERENCES [dbo].[FileEntry] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HblEntry] CHECK CONSTRAINT [FK_HblEntry_FileEntry_FileGuidId]
GO
ALTER TABLE [dbo].[HBLHistoryLog]  WITH CHECK ADD  CONSTRAINT [FK_HBLHistoryLog_AspNetUsers_EnterBy] FOREIGN KEY([EnterBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HBLHistoryLog] CHECK CONSTRAINT [FK_HBLHistoryLog_AspNetUsers_EnterBy]
GO
ALTER TABLE [dbo].[HBLHistoryLog]  WITH CHECK ADD  CONSTRAINT [FK_HBLHistoryLog_HblActivity_HBLActivityId] FOREIGN KEY([HBLActivityId])
REFERENCES [dbo].[HblActivity] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HBLHistoryLog] CHECK CONSTRAINT [FK_HBLHistoryLog_HblActivity_HBLActivityId]
GO
ALTER TABLE [dbo].[PolLocationRelation]  WITH CHECK ADD  CONSTRAINT [FK_PolLocationRelation_LocationMaster_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[LocationMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PolLocationRelation] CHECK CONSTRAINT [FK_PolLocationRelation_LocationMaster_LocationId]
GO
ALTER TABLE [dbo].[PolLocationRelation]  WITH CHECK ADD  CONSTRAINT [FK_PolLocationRelation_POLMaster_PolId] FOREIGN KEY([PolId])
REFERENCES [dbo].[POLMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PolLocationRelation] CHECK CONSTRAINT [FK_PolLocationRelation_POLMaster_PolId]
GO
ALTER TABLE [dbo].[ThreadRelation]  WITH CHECK ADD  CONSTRAINT [FK_ThreadRelation_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThreadRelation] CHECK CONSTRAINT [FK_ThreadRelation_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ThreadRelation]  WITH CHECK ADD  CONSTRAINT [FK_ThreadRelation_ThreadMaster_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[ThreadMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThreadRelation] CHECK CONSTRAINT [FK_ThreadRelation_ThreadMaster_ThreadId]
GO
ALTER TABLE [dbo].[UserLocationRelation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocationRelation_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLocationRelation] CHECK CONSTRAINT [FK_UserLocationRelation_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserLocationRelation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocationRelation_LocationMaster_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[LocationMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLocationRelation] CHECK CONSTRAINT [FK_UserLocationRelation_LocationMaster_LocationId]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAdminDashboardViewModels]    Script Date: 10/26/2024 3:43:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetAdminDashboardViewModels]
    @FileNo NVARCHAR(100) = NULL,
    @Type NVARCHAR(100) = NULL,
    @EtaDate DATE = NULL,
    @ContainerNo NVARCHAR(100) = NULL,
    @User NVARCHAR(100) = NULL,
    @Status NVARCHAR(100) = NULL,
    @ThreadName NVARCHAR(100) = NULL,
    @SearchValue NVARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Create a temporary table to store intermediate results
    CREATE TABLE #Result (
        Id NVARCHAR(100) PRIMARY KEY,
        CreatedDate DATETIME,
        FileNo NVARCHAR(100),
        ContainerNo NVARCHAR(100),
        IsEdi NVARCHAR(10),
        Pol NVARCHAR(100),
        Pod NVARCHAR(100),
        FileType NVARCHAR(100),
        ProductType NVARCHAR(100),
        Hblcount VARCHAR(10),
        EtaAtPod DATETIME,
        VesselName NVARCHAR(100),
        ShippingLine NVARCHAR(100),
        ThreadName NVARCHAR(100),
        AllocatedTo NVARCHAR(100),
        Status NVARCHAR(100)
    );

    -- Core Query: Fetch data with basic filters to #Result
    INSERT INTO #Result
    SELECT 
        Id,
        CreatedDate,
        FileNo,
        ContainerNo,
        IsEdi,
        Pol,
        Pod,
        FileType,
        ProductType,
        Hblcount,
        EtaAtPod,
        VesselName,
        ShippingLine,
        ThreadName,
        AllocatedTo,
        Status
    FROM vw_AdminDashboardViewModels
    WHERE 1=1
        -- Apply primary filters only if they are provided
        AND (@FileNo IS NULL OR FileNo = @FileNo)
        AND (@Type IS NULL OR @Type = 'all' OR @Type = '--select--' OR ProductType = @Type)
        AND (@EtaDate IS NULL OR EtaAtPod = @EtaDate)
        AND (@ContainerNo IS NULL OR ContainerNo = @ContainerNo)
        AND (@User IS NULL OR @User = 'none' OR @User = '--select--' OR @User = '' OR AllocatedTo = @User)
        AND (@Status IS NULL OR @Status = 'none' OR @Status = '--select--' OR Status = @Status)
        AND (@ThreadName IS NULL OR @ThreadName = 'none' OR @ThreadName = '--Select--' OR ThreadName = @ThreadName);

    -- Apply SearchValue Filters on Temporary Results (highly optimized)
    IF @SearchValue IS NOT NULL AND @SearchValue <> ''
    BEGIN
        -- 'eta10' filter: ETA in the next 10 days and Status not 'Completed'
        IF @SearchValue = 'eta10'
        BEGIN
            DELETE FROM #Result
            WHERE EtaAtPod IS NULL 
                  OR EtaAtPod < CONVERT(DATE, GETDATE()) 
                  OR EtaAtPod >= DATEADD(DAY, 11, CONVERT(DATE, GETDATE()))
                  OR Status = 'Completed';
        END

        -- 'eta12' filter: Status must be 'Discard'
        ELSE IF @SearchValue = 'eta12'
        BEGIN
            DELETE FROM #Result WHERE Status != 'Discard';
        END

        -- 'UnAllocated' filter: Status is 'WIP' and no user allocated
        ELSE IF @SearchValue = 'UnTouched'
        BEGIN
            DELETE FROM #Result WHERE Status != 'WIP' OR AllocatedTo IS NOT NULL;
        END

        -- 'WIP' filter: Status is 'WIP' and user is allocated
        ELSE IF @SearchValue = 'WIP'
        BEGIN
            DELETE FROM #Result WHERE Status != 'WIP' OR AllocatedTo IS NULL;
        END

        -- Filter by exact Status
        ELSE IF @SearchValue != 'Received'
        BEGIN
            DELETE FROM #Result WHERE Status != @SearchValue;
        END
    END
    ELSE
    BEGIN
        -- Exclude 'Discard' records if no SearchValue is provided
        DELETE FROM #Result WHERE Status = 'Discard';
    END

    -- Final result query
    SELECT *
    FROM #Result
    ORDER BY CreatedDate DESC;

    -- Drop temporary table to free up memory
    DROP TABLE #Result;
END;
GO
USE [master]
GO
ALTER DATABASE [OldSingaporeImport] SET  READ_WRITE 
GO
