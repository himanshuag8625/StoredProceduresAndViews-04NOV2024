USE [SINImport]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[FileEntry]    Script Date: 9/25/2024 10:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileEntry](
	[Id] [nvarchar](450) NOT NULL,
	[FileNo] [nvarchar](max) NULL,
	[ContainerNo] [nvarchar](max) NULL,
	[IsEdi] [nvarchar](max) NULL,
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
	[Mblcount] [nvarchar](max) NULL,
 CONSTRAINT [PK_FileEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThreadMaster]    Script Date: 9/25/2024 10:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_ThreadMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblEntry]    Script Date: 9/25/2024 10:38:18 PM ******/
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
	[HBLType] [nvarchar](max) NULL,
	[PLD] [nvarchar](max) NULL,
 CONSTRAINT [PK_HblEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityMaster]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[FileActivity]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[LocationMaster]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  View [dbo].[vw_AdminDashboardCount]    Script Date: 9/25/2024 10:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AdminDashboardCount] AS
WITH RankedRows AS (
    SELECT 
        fe.Id,
        DATEADD(MINUTE, 330, fe.CreatedDate) AS CreatedDate,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%noa%' 
            THEN fa.EndTime 
        END)) AS NoadoCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.EndTime 
        END)) AS TsConnectingCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.EndTime 
        END)) AS ManifestCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%dv%' OR am.Name LIKE '%digiview%' 
            THEN fa.EndTime 
        END)) AS DigiviewCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN fa.EndTime 
        END)) AS StatusCompleted,
        fe.FileNo,
        fe.ContainerNo,
        fe.IsEdi,
        fe.Pol,
        lm.Name AS Pod,
        fe.FileType,
        ISNULL(CAST(NULLIF((SELECT COUNT(he.Id) FROM HblEntry he WHERE he.FileGuidId = fe.Id), 0) AS VARCHAR(10)), fe.Hblcount) AS Hblcount,
        ISNULL(CAST(NULLIF((SELECT COUNT(he.Id) FROM HblEntry he WHERE he.FileGuidId = fe.Id), 0) AS VARCHAR(10)), fe.Hblcount) AS ActualHblcount,
        ISNULL(CAST(NULLIF((SELECT COUNT(he.Id) FROM HblEntry he WHERE he.FileGuidId = fe.Id) + 1, 0) AS VARCHAR(10)), CAST(fe.Hblcount + 1 AS VARCHAR(10))) AS Mblcount,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod_IST,
        fe.VesselName,
        ISNULL(fe.ShippingLine, '') AS ShippingLine,
        MAX(tm.Name) AS ThreadName,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN COALESCE(u.CitrixId, '') 
            END), '') AS AllocatedTo,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN COALESCE(fa.CurrentStatus, '') 
            END), 'Pending') AS Status,
        MAX(am.Name) AS ActivityName,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN fa.EndTime 
        END)) AS StatusCompleted_IST,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%dv%' OR am.Name LIKE '%digiview%' 
            THEN fa.EndTime 
        END)) AS DigiviewCompletedDate_IST,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.EndTime 
        END)) AS ManifestCompletedDate_IST,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.CurrentStatus 
        END), 'Pending') AS ManifestCompleted,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%dv%' OR am.Name LIKE '%digiview%' 
            THEN fa.Pages 
        END), 0) AS DigiviewPages,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.Pages 
        END), 0) AS ManifestCount,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.EndTime 
        END)) AS TsConnectingCompletedDate_IST,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.CurrentStatus 
        END), 'Pending') AS TsConnectingCompleted,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.Pages 
        END), 0) AS TsConnectingCount,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%noa%' 
            THEN fa.EndTime 
        END)) AS NoadoCompletedDate_IST,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%noa%' 
            THEN fa.Pages 
        END), 0) AS NoadoCount,
        COUNT(DISTINCT he.Id) AS HblPendingCount,
        COUNT(DISTINCT he.Id) AS HblCompletedCount,
        ROW_NUMBER() OVER (PARTITION BY fe.Id ORDER BY fe.Id) AS RowNum
    FROM 
        FileEntry fe
    LEFT JOIN 
        FileActivity fa ON fe.Id = fa.FileId
    LEFT JOIN 
        ActivityMaster am ON fa.ActivityId = am.Id
    LEFT JOIN 
        ThreadMaster tm ON am.ThreadId = tm.Id
    LEFT JOIN 
        AspNetUsers u ON fa.UserId = u.Id
    LEFT JOIN 
        HblEntry he ON fe.Id = he.FileGuidId
    LEFT JOIN 
        LocationMaster lm ON fe.Pod = lm.Id
    WHERE 
        am.IsActive = 1 AND tm.IsActive = 1
    GROUP BY 
        fe.Id, fe.CreatedDate, fe.FileNo, fe.ContainerNo, fe.IsEdi, fe.Pol, lm.Name, 
        fe.FileType, fe.Hblcount, fe.Mblcount, fe.EtaAtPod, fe.VesselName, fe.ShippingLine
)
SELECT *
FROM RankedRows
WHERE RowNum = 1;
GO
/****** Object:  View [dbo].[vw_AdminDashboardViewModels]    Script Date: 9/25/2024 10:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AdminDashboardViewModels] AS
WITH RankedRows AS (
    SELECT 
        fe.Id,
        DATEADD(MINUTE, 330, fe.CreatedDate) AS CreatedDate,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%noa%' 
            THEN fa.EndTime 
        END)) AS NoadoCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.EndTime 
        END)) AS TsConnectingCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.EndTime 
        END)) AS ManifestCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%dv%' OR am.Name LIKE '%digiview%' 
            THEN fa.EndTime 
        END)) AS DigiviewCompletedDate,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN fa.EndTime 
        END)) AS StatusCompleted,
        fe.FileNo,
        fe.ContainerNo,
        fe.IsEdi,
        fe.Pol,
        lm.Name AS Pod,
        fe.FileType,
        ISNULL(CAST(NULLIF((SELECT COUNT(he.Id) FROM HblEntry he WHERE he.FileGuidId = fe.Id), 0) AS VARCHAR(10)), fe.Hblcount) AS Hblcount,
        ISNULL(CAST(NULLIF((SELECT COUNT(he.Id) FROM HblEntry he WHERE he.FileGuidId = fe.Id), 0) AS VARCHAR(10)), fe.Hblcount) AS ActualHblcount,
        ISNULL(CAST(NULLIF((SELECT COUNT(he.Id) FROM HblEntry he WHERE he.FileGuidId = fe.Id) + 1, 0) AS VARCHAR(10)), CAST(fe.Hblcount + 1 AS VARCHAR(10))) AS Mblcount,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod_IST,
        fe.VesselName,
        ISNULL(fe.ShippingLine, '') AS ShippingLine,
        MAX(tm.Name) AS ThreadName,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN COALESCE(u.CitrixId, '') 
            END), '') AS AllocatedTo,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN COALESCE(fa.CurrentStatus, '') 
            END), 'Pending') AS Status,
        MAX(am.Name) AS ActivityName,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%file processing%' OR am.Name LIKE '%file processing status%' 
            THEN fa.EndTime 
        END)) AS StatusCompleted_IST,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%dv%' OR am.Name LIKE '%digiview%' 
            THEN fa.EndTime 
        END)) AS DigiviewCompletedDate_IST,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.EndTime 
        END)) AS ManifestCompletedDate_IST,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.CurrentStatus 
        END), 'Pending') AS ManifestCompleted,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%dv%' OR am.Name LIKE '%digiview%' 
            THEN fa.Pages 
        END), 0) AS DigiviewPages,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%doc to warehouse%' 
            THEN fa.Pages 
        END), 0) AS ManifestCount,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.EndTime 
        END)) AS TsConnectingCompletedDate_IST,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.CurrentStatus 
        END), 'Pending') AS TsConnectingCompleted,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%ts connecting%' 
            THEN fa.Pages 
        END), 0) AS TsConnectingCount,
        DATEADD(MINUTE, 330, MAX(CASE 
            WHEN am.Name LIKE '%noa%' 
            THEN fa.EndTime 
        END)) AS NoadoCompletedDate_IST,
        COALESCE(MAX(CASE 
            WHEN am.Name LIKE '%noa%' 
            THEN fa.Pages 
        END), 0) AS NoadoCount,
        COUNT(DISTINCT he.Id) AS HblPendingCount,
        COUNT(DISTINCT he.Id) AS HblCompletedCount,
        ROW_NUMBER() OVER (PARTITION BY fe.Id ORDER BY fe.Id) AS RowNum
    FROM 
        FileEntry fe
    LEFT JOIN 
        FileActivity fa ON fe.Id = fa.FileId
    LEFT JOIN 
        ActivityMaster am ON fa.ActivityId = am.Id
    LEFT JOIN 
        ThreadMaster tm ON am.ThreadId = tm.Id
    LEFT JOIN 
        AspNetUsers u ON fa.UserId = u.Id
    LEFT JOIN 
        HblEntry he ON fe.Id = he.FileGuidId
    LEFT JOIN 
        LocationMaster lm ON fe.Pod = lm.Id
    WHERE 
        am.IsActive = 1 AND tm.IsActive = 1
    GROUP BY 
        fe.Id, fe.CreatedDate, fe.FileNo, fe.ContainerNo, fe.IsEdi, fe.Pol, lm.Name, 
        fe.FileType, fe.Hblcount, fe.Mblcount, fe.EtaAtPod, fe.VesselName, fe.ShippingLine
)
SELECT *
FROM RankedRows
WHERE RowNum = 1;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[ActivityMapping]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[FileHistoryLog]    Script Date: 9/25/2024 10:38:18 PM ******/
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
	[Pages] [int] NULL,
 CONSTRAINT [PK_FileHistoryLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblActivity]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[HBLHistoryLog]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[ThreadRelation]    Script Date: 9/25/2024 10:38:18 PM ******/
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
/****** Object:  Table [dbo].[UserLocationRelation]    Script Date: 9/25/2024 10:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLocationRelation](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[LocationId] [nvarchar](450) NOT NULL,
	[Sequence] [int] NULL,
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
ALTER TABLE [dbo].[ThreadMaster]  WITH CHECK ADD  CONSTRAINT [FK_ThreadMaster_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ThreadMaster] CHECK CONSTRAINT [FK_ThreadMaster_AspNetUsers_UserId]
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
/****** Object:  StoredProcedure [dbo].[GetFilteredData]    Script Date: 9/25/2024 10:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilteredData]
    @FileNo NVARCHAR(50) = NULL,
    @Type NVARCHAR(50) = NULL,
    @EtaDate DATE = NULL,
    @Container NVARCHAR(50) = NULL,
    @Status NVARCHAR(50) = NULL,
    @Thread NVARCHAR(50) = NULL,
    @User NVARCHAR(50) = NULL,
    @StartDate DATE = NULL,
    @EndDate DATE = NULL
AS
BEGIN
    SELECT * FROM vw_AdminDashboardViewModels
    WHERE 
        -- FileNo Filter: Only apply if not NULL
        (@FileNo IS NULL OR FileNo = @FileNo) AND
        
        -- Type Filter: Only apply if Type is not NULL and is not 'all' or '--select--'
        (@Type IS NULL OR @Type = 'all' OR @Type = '--select--' OR FileType = @Type) AND
        
        -- EtaDate Filter: Only apply if EtaDate is provided
        (@EtaDate IS NULL OR (EtaAtPod IS NOT NULL AND CAST(EtaAtPod AS DATE) = @EtaDate)) AND
        
        -- Container Filter: Only apply if not NULL
        (@Container IS NULL OR ContainerNo = @Container) AND
        
        -- Status Filter: Only apply if Status is not NULL, 'none', or '--select--'
        (@Status IS NULL OR @Status = 'none' OR @Status = '--select--' OR Status = @Status) AND
        
        -- Thread Filter: Only apply if Thread is not NULL, 'none', or '--Select Thread--'
        (@Thread IS NULL OR @Thread = 'none' OR @Thread = '--Select Thread--' OR ThreadName = @Thread) AND
        
        -- User Filter: Only apply if User is not NULL, 'none', or '--select--'
        (@User IS NULL OR @User = 'none' OR @User = '--select--' OR AllocatedTo = @User) AND
        
        -- Date Range Filter: Apply to CreatedDate and StatusCompleted
        (
            (@StartDate IS NULL OR 
                (CreatedDate IS NOT NULL AND CreatedDate >= @StartDate) OR 
                (StatusCompleted IS NOT NULL AND StatusCompleted >= @StartDate)
            ) AND 
            (@EndDate IS NULL OR 
                (CreatedDate IS NOT NULL AND CreatedDate <= @EndDate) OR 
                (StatusCompleted IS NOT NULL AND StatusCompleted <= @EndDate)
            )
        )
END
GO
