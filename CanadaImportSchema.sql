USE [CanadaImport]
GO
/****** Object:  User [userelinq]    Script Date: 9/25/2024 10:36:02 PM ******/
CREATE USER [userelinq] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ActivityMaster]    Script Date: 9/25/2024 10:36:02 PM ******/
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
	[IsDelete] [bit] NOT NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_ActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[FileActivity]    Script Date: 9/25/2024 10:36:02 PM ******/
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
 CONSTRAINT [PK_FileActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileEntry]    Script Date: 9/25/2024 10:36:02 PM ******/
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
	[FinalDestination] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[Hblcount] [nvarchar](max) NULL,
	[ActualHblcount] [nvarchar](max) NULL,
	[Cbm] [nvarchar](max) NULL,
	[CoLoader] [nvarchar](max) NULL,
	[SailingDate] [datetime2](7) NULL,
	[EtaAtPod] [datetime2](7) NULL,
	[VesselName] [nvarchar](max) NULL,
	[ShippingLine] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[AllocatedTo] [nvarchar](max) NULL,
	[AllocatedDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[EtaAtFD] [datetime2](7) NULL,
	[HBLFreightTerm] [nvarchar](max) NULL,
	[MBLFreightTerm] [nvarchar](max) NULL,
 CONSTRAINT [PK_FileEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblEntry]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[LocationMaster]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[ThreadMaster]    Script Date: 9/25/2024 10:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_ThreadMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_AdminDashboardViewModels]    Script Date: 9/25/2024 10:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AdminDashboardViewModels] AS
WITH AggregatedData AS (
    SELECT 
        fe.Id,
        DATEADD(MINUTE, 330, fe.CreatedDate) AS CreatedDate,  -- Convert UTC to IST
        fe.FileNo,
        fe.ContainerNo,
        CASE WHEN fe.IsEdi = 1 THEN 'Yes' ELSE 'No' END AS IsEdi,
        fe.Pol,
        lm.Name AS Pod,
        fe.FinalDestination,
        fe.FileType,
        -- Efficient calculation for HBL count
        ISNULL(CAST(NULLIF((SELECT COUNT(1) FROM HblEntry he WHERE he.FileGuidId = fe.Id), 0) AS VARCHAR(10)), fe.Hblcount) AS Hblcount,
        fe.Cbm,
        fe.CoLoader,
        fe.SailingDate,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod,  -- Convert UTC to IST
        DATEADD(MINUTE, 330, fe.EtaAtFD) AS EtaAtFD,    -- Convert UTC to IST
        fe.MBLFreightTerm,
        fe.HBLFreightTerm,
        fe.VesselName,
        fe.ShippingLine,
        fe.ContactPerson,
        
        -- OUTER APPLY to efficiently get the most recent ThreadName, AllocatedTo, and Status
        ta.ThreadName,
        ua.AllocatedTo,
        COALESCE(sa.Status, 'Pending') AS Status
    FROM 
        FileEntry fe
    LEFT JOIN 
        LocationMaster lm ON lm.Id = fe.Pod
    -- OUTER APPLY to get the most recent ThreadName
    OUTER APPLY (
        SELECT TOP 1 tm.Name AS ThreadName
        FROM FileActivity fa
        JOIN ActivityMaster am ON am.Id = fa.ActivityId
        JOIN ThreadMaster tm ON tm.Id = am.ThreadId
        WHERE fa.FileId = fe.Id AND tm.IsActive = 1 AND am.IsActive = 1
        ORDER BY fa.EndTime
    ) ta
    -- OUTER APPLY to get the most recent AllocatedTo
    OUTER APPLY (
        SELECT TOP 1 ua.UserName AS AllocatedTo
        FROM FileActivity fa
        JOIN AspNetUsers ua ON ua.Id = fa.UserId
        WHERE fa.FileId = fe.Id
        ORDER BY fa.EndTime
    ) ua
    -- OUTER APPLY to get the most recent Status
    OUTER APPLY (
        SELECT TOP 1 fa.CurrentStatus AS Status
        FROM FileActivity fa
        WHERE fa.FileId = fe.Id
        ORDER BY fa.EndTime
    ) sa
)
SELECT 
    Id,
    CreatedDate,
    FileNo,
    ContainerNo,
    IsEdi,
    Pol,
    Pod,
    FinalDestination,
    FileType,
    Hblcount,
    Cbm,
    CoLoader,
    SailingDate,
    EtaAtPod,
    EtaAtFD,
    MBLFreightTerm,
    HBLFreightTerm,
    VesselName,
    ShippingLine,
    ContactPerson,
    ThreadName,
    AllocatedTo,
    Status
FROM 
    AggregatedData;
GO
/****** Object:  View [dbo].[vw_AdminDashboardCount]    Script Date: 9/25/2024 10:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AdminDashboardCount] AS
WITH AggregatedData AS (
    SELECT 
        fe.Id,
        DATEADD(MINUTE, 330, fe.CreatedDate) AS CreatedDate,  -- Convert UTC to IST
        fe.FileNo,
        fe.ContainerNo,
        CASE WHEN fe.IsEdi = 1 THEN 'Yes' ELSE 'No' END AS IsEdi,
        fe.Pol,
        lm.Name AS Pod,
        fe.FinalDestination,
        fe.FileType,
        -- Efficient calculation for HBL count
        ISNULL(CAST(NULLIF((SELECT COUNT(1) FROM HblEntry he WHERE he.FileGuidId = fe.Id), 0) AS VARCHAR(10)), fe.Hblcount) AS Hblcount,
        fe.Cbm,
        fe.CoLoader,
        fe.SailingDate,
        DATEADD(MINUTE, 330, fe.EtaAtPod) AS EtaAtPod,  -- Convert UTC to IST
        DATEADD(MINUTE, 330, fe.EtaAtFD) AS EtaAtFD,    -- Convert UTC to IST
        fe.MBLFreightTerm,
        fe.HBLFreightTerm,
        fe.VesselName,
        fe.ShippingLine,
        fe.ContactPerson,
        
        -- OUTER APPLY to efficiently get the most recent ThreadName, AllocatedTo, and Status
        ta.ThreadName,
        ua.AllocatedTo,
        COALESCE(sa.Status, 'Pending') AS Status
    FROM 
        FileEntry fe
    LEFT JOIN 
        LocationMaster lm ON lm.Id = fe.Pod
    -- OUTER APPLY to get the most recent ThreadName
    OUTER APPLY (
        SELECT TOP 1 tm.Name AS ThreadName
        FROM FileActivity fa
        JOIN ActivityMaster am ON am.Id = fa.ActivityId
        JOIN ThreadMaster tm ON tm.Id = am.ThreadId
        WHERE fa.FileId = fe.Id AND tm.IsActive = 1 AND am.IsActive = 1
        ORDER BY fa.EndTime
    ) ta
    -- OUTER APPLY to get the most recent AllocatedTo
    OUTER APPLY (
        SELECT TOP 1 ua.UserName AS AllocatedTo
        FROM FileActivity fa
        JOIN AspNetUsers ua ON ua.Id = fa.UserId
        WHERE fa.FileId = fe.Id
        ORDER BY fa.EndTime
    ) ua
    -- OUTER APPLY to get the most recent Status
    OUTER APPLY (
        SELECT TOP 1 fa.CurrentStatus AS Status
        FROM FileActivity fa
        WHERE fa.FileId = fe.Id
        ORDER BY fa.EndTime
    ) sa
)
SELECT 
    Id,
    CreatedDate,
    FileNo,
    ContainerNo,
    IsEdi,
    Pol,
    Pod,
    FinalDestination,
    FileType,
    Hblcount,
    Cbm,
    CoLoader,
    SailingDate,
    EtaAtPod,
    EtaAtFD,
    MBLFreightTerm,
    HBLFreightTerm,
    VesselName,
    ShippingLine,
    ContactPerson,
    ThreadName,
    AllocatedTo,
    Status
FROM 
    AggregatedData;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[ActivityMapping]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[FileHistoryLog]    Script Date: 9/25/2024 10:36:02 PM ******/
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
 CONSTRAINT [PK_FileHistoryLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblActivity]    Script Date: 9/25/2024 10:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HblActivity](
	[Id] [nvarchar](450) NOT NULL,
	[HblId] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[CurrentStatus] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[EnterBy] [nvarchar](450) NULL,
	[EnterDate] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[StartTime] [datetime2](7) NULL,
 CONSTRAINT [PK_HblActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HBLHistoryLog]    Script Date: 9/25/2024 10:36:02 PM ******/
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
 CONSTRAINT [PK_HBLHistoryLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThreadRelation]    Script Date: 9/25/2024 10:36:02 PM ******/
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
/****** Object:  Table [dbo].[UserLocationRelation]    Script Date: 9/25/2024 10:36:02 PM ******/
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
ALTER TABLE [dbo].[ActivityMaster] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDelete]
GO
ALTER TABLE [dbo].[AspNetRoles] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsLDAP]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsReset]
GO
ALTER TABLE [dbo].[HblActivity] ADD  CONSTRAINT [DF__HblActivi__Activ__6E01572D]  DEFAULT (N'') FOR [ActivityId]
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
/****** Object:  StoredProcedure [dbo].[sp_GetAdminDashboardData]    Script Date: 9/25/2024 10:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAdminDashboardData]
    @fileno NVARCHAR(50) = NULL,
    @type NVARCHAR(50) = NULL,
    @etadate DATE = NULL,
    @container NVARCHAR(50) = NULL,
    @status NVARCHAR(50) = NULL,
    @thread NVARCHAR(50) = NULL,
    @user NVARCHAR(50) = NULL,
    @searchValue NVARCHAR(50) = NULL,
    @sortColumn NVARCHAR(50) = 'CreatedDate',
    @sortDirection NVARCHAR(10) = 'desc'
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @threeMonth DATETIME = DATEADD(MONTH, -3, GETUTCDATE());

    -- Query to fetch and filter data
    WITH FilteredData AS (
        SELECT 
            Id, CreatedDate, FileNo, ContainerNo, IsEdi, Pol, Pod, FinalDestination,
            FileType, Hblcount, Cbm, CoLoader, SailingDate, EtaAtPod, EtaAtFD, 
            MBLFreightTerm, HBLFreightTerm, VesselName, ShippingLine, ContactPerson,
            ThreadName, AllocatedTo, Status
        FROM vw_AdminDashboardViewModels
        WHERE (EtaAtPod >= @threeMonth OR EtaAtPod IS NULL)
        AND (@fileno IS NULL OR FileNo = @fileno)
        AND (@type IS NULL OR @type = 'all' OR @type = '--select--' OR FileType = @type)
        AND (@etadate IS NULL OR EtaAtPod = @etadate)
        AND (@container IS NULL OR ContainerNo = @container)
        AND (@user IS NULL OR @user = 'none' OR @user = '--select--' OR AllocatedTo = @user)
        AND (@status IS NULL OR @status = 'none' OR @status = '--select--' OR Status = @status)
        AND (@thread IS NULL OR @thread = 'none' OR @thread = '--Select Thread--' OR ThreadName = @thread)
        AND (@searchValue IS NULL OR
            (@searchValue = 'eta10' AND EtaAtPod >= DATEADD(DAY, 4, GETDATE()) AND EtaAtPod < DATEADD(DAY, 11, GETDATE()) AND Status <> 'Completed') OR
            (@searchValue = 'eta12' AND EtaAtPod >= GETDATE() AND EtaAtPod < DATEADD(DAY, 4, GETDATE()) AND Status <> 'Completed') OR
            (@searchValue = 'UnAllocated' AND (Status = 'UnAllocated' AND AllocatedTo IS NULL)) OR
            (@searchValue = 'Pending' AND (Status = 'Pending' OR Status = 'Completed With Query')) OR
            (@searchValue = 'Received') OR
            (@searchValue = Status)
        )
    )
    
    -- Query to sort and paginate
    SELECT *
    FROM FilteredData
    --ORDER BY 
    --    CASE 
    --        WHEN @sortColumn = 'CreatedDate' AND @sortDirection = 'asc' THEN CreatedDate
    --        WHEN @sortColumn = 'CreatedDate' AND @sortDirection = 'desc' THEN CreatedDate
    --        -- Add cases for other sortable columns if needed
    --        ELSE CreatedDate  -- Default sorting
    --    END 
        --OFFSET @skip ROWS FETCH NEXT @pageSize ROWS ONLY;

    -- Return the total number of records
    --SELECT COUNT(*) AS TotalRecords, SUM(CAST(Hblcount AS INT)) AS HblCount
    --FROM FilteredData;
END
GO
