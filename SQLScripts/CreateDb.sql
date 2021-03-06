USE [master]
GO
/****** Object:  Database [WebShop]    Script Date: 10/16/2016 12:41:11 AM ******/
CREATE DATABASE [WebShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\WebShop.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\WebShop_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebShop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebShop] SET  MULTI_USER 
GO
ALTER DATABASE [WebShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebShop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebShop', N'ON'
GO
ALTER DATABASE [WebShop] SET QUERY_STORE = OFF
GO
USE [WebShop]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [WebShop]
GO
/****** Object:  User [TakiNT-PC\TakiNT]    Script Date: 10/16/2016 12:41:11 AM ******/
CREATE USER [TakiNT-PC\TakiNT] FOR LOGIN [TakiNT-PC\TakiNT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 10/16/2016 12:41:11 AM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 10/16/2016 12:41:11 AM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 10/16/2016 12:41:11 AM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 10/16/2016 12:41:11 AM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [db_owner] ADD MEMBER [TakiNT-PC\TakiNT]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 10/16/2016 12:41:12 AM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 10/16/2016 12:41:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConfigOptions]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NULL,
	[OptionKey] [nvarchar](max) NULL,
	[OptionValue] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [nvarchar](max) NULL,
	[UpdateBy] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ConfigOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerGroups]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Customer_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CustomerGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerOrders]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
	[OrderTotal] [decimal](18, 2) NULL,
	[Status] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CustomerOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Cart] [nvarchar](max) NULL,
	[WishList] [nvarchar](max) NULL,
	[Newsletter] [bit] NULL,
	[CustomerGroup] [int] NULL,
	[IpAddress] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[JoinDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[BirthDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NULL,
	[Users_Id] [uniqueidentifier] NULL,
	[CustomerOrder_Id] [int] NULL,
	[Invoice_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerStatus]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Customer_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CustomerStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[InvoiceId] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Cost] [decimal](18, 2) NULL,
	[Notes] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreateBy] [nvarchar](max) NULL,
	[UpdateBy] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [nvarchar](max) NULL,
	[UpdateBy] [nvarchar](max) NULL,
	[InvoiceTotal] [decimal](18, 2) NULL,
	[Status] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[OrderId] [int] NULL,
	[OrderQuantity] [int] NULL,
	[OrderPrice] [decimal](18, 2) NULL,
	[OrderCost] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[CustomerOrder_Id] [int] NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductBranches]    Script Date: 10/16/2016 12:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBranches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[BranchLogo] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_dbo.ProductBranches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageToShow] [nvarchar](max) NULL,
	[ParentCat] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_dbo.ProductCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductManufactories]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductManufactories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ManufactoryLogo] [nvarchar](max) NULL,
	[ManufactoryCountry] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_dbo.ProductManufactories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMetas]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProductMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[OriginPrice] [decimal](18, 2) NULL,
	[SellPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[ManufactoryId] [int] NULL,
	[BranchId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[ImportDate] [datetime] NULL,
	[FeatureImage] [nvarchar](max) NULL,
	[ImageList] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Discount] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProductStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[LoweredUserName] [nvarchar](max) NULL,
	[MobileAlias] [nvarchar](max) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
	[Customer_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201610050648258_AutomaticMigration', N'WebShop.Migrations.Configuration', 0x1F8B0800000000000400ED3D5D6FE33892EF07DC7F30FC7437E88D939E97D9C0D945DAE91E64B7D39DEBF4ECDC5BA0C88C238C2C7925B93BC1E17ED93EEC4FDABFB0A44489DF5F12F5E18C31989958248BC5625591AC2A16FFF58F7F2EFFFCBC8D67DF4096476972313F3B399DCF4012A6EB28D95CCCF7C5E31F7E9AFFF94FFFF91FCBF7EBEDF3EC6F75BD1F513DD832C92FE64F45B13B5F2CF2F0096C83FC641B85599AA78FC549986E17C13A5DBC3D3DFDE3E2EC6C0120883984359B2DBFEC9322DA82F207FCB94A9310EC8A7D10DFA46B10E7F83B2CB92BA1CE3E055B90EF82105CCC7F050F774FE9EEE43D8450BC7CC860C9F734FB6D3EBB8CA300A27307E2C7F92C4892B4080A88ECF92F39B82BB234D9DCEDE08720FEFAB203B0DE6310E7000FE29C54B71DCFE95B349E056958830AF779916E1D019EFD8809B4E09BB722F3BC21202461452834EA928C177348EDC768F37987C0E7F319DFE3F92ACE506D42EA559A8113A6D59B195DF6A6610CC83FE89F37B3D53E2EF619B848C0BEC882F8CDEC76FF1047E15FC1CBD7F437905C24FB38A6B18478C232E603FC749BA53B90152F5FC023C6FD7A3D9F2DD8760BBE61D38C6A530DE83A297E7C3B9F7D829D070F316898801AFC5D0107F43348401614607D1B1405C81204039464147AE7FABADCED84EEF42D2A8AC231D4AD20B342E19BCF6E82E78F20D9144F1773F8E77CF6217A06EBFA0B46FC972482B20A1B15D91ED8F5F4B72046557BEEEB3ABF0C8BE85BD3D1BB348D41904868AF87B3CA009C872BF86F0D09FDFD15EA0E53CB5F76EB962DAB3EDFF53F21158A0374F4292D40EEB997E5822816BDBA29F50BC87ECED2FDCE5EDDD0AD8EEA4635B1C1B67F59BE02799845BB6A35EAB9AF31E45DA9AB3AB1FBE76C0D3267762F5B1DD95DC51D984A8E4BEC184C750562C852D94B9BB625137C85348B9B96208CB6E8E76D06FFC27BF59FE6B3BB3040843652E00ED27FEF7B05682949C32C4FB0974FC1B76853F29D828D609F5F405CD6C89FA25D75766045F19EAAFB214BB75FD298977152E5FE2EDD67211A7DAAAFF735C836A0E8A8609C75CB51AD28FAFA10657931C852FA3118A8A3CBF53A0379FF127FFB9426E0D37EFB80F8B1EFBD419015BD77F26B943F7D8CF2FE3BFA04BEE731409CEAA82DB9FDB4C33A78BD1B8A2DD8F5C60AB9BFA45132EC12FD2ECA8AA7DE368C832D733C3D727A7FF4F33E1295AF71612C590B01D12C8FF74265717DE4EB281748A1A26C85B4C65CBFAEDFF3754D78ABD775BE5E5BAC6B71B1C1BAAEABC1BAAA62C61AD7EB86B52D9B90DA46CC6D18A5A9E98A3D920F03A97115099E65891AB9AAB81546263236955458E9885657F0B2EFAC19D071F759353BEE41558BC310BBC251ED8058AA2CD9A6AC7DA0DC522DBA8E96EECBDD0E625E92A4232444BA614E33E9779081F560FDDDA40F510C4A3FDF10A68C244D5EB629D9C6B6F561A0435FB96184F220DF6E9A00B6B46454CB91D482C115094B075FDE69E5B84EBEA55108AE401144B1B506605A1DA826E87FDD803FD7FBB070B48862DA3AB6FA9F7D80717268749B452161F98E76CC554A4EE65D610D731C6B79567C7D3EC8418CF04A4589195EAA26194573DFD424CA525A415099F25AAE87012CCF168836355588E20A0644EB5A3E34BCAB6E3F6A7595B0A81C5DC7F089115417E6D6A347AE778F9C4EEDDD934A82C66BCA54CA8E54E8A4E71A9D6BA9E770FDA39E53F1D910C7C615AC398073AA009B347B718DFECBA24D9478DD23439989BD026CB5ED6FE101BA0992FD631016EE547C970549F874005121D7DB5D9A156D5A7E80C8420D71BD0D36FD3373D9CB205ED096EBD3559487E93E697F16D4EEBF2B7692AE45F56E99AE465623B154588F2455DA1C116A756344925494A359976B116D2AB54195126B23B64C5D39C254152DCE74BD36686B7C727437A23B4E2CD5E2D9D20987417C8840BC366349D59423DA54D0E24A6AF9D845D5F2E3B697AA5A1D77548ABE5E5D447035DF1FD34DFA3A4C546D164057C9224ADF4DB6EA7647E9FABD4857B9D3FB9AC2B9FEDE7FAC6090412A431E3B3C9B96ED36D5B45CD702B67A8A6279C00757F15EDE5058C4B5F5556BBABE51CB1D490DA49AEDE1C658A3EB34C69A305D94AD633C0CD3EAA868C754B4A386C3603E604E3C6E2C44353DF2D1987C34E4824D4DFA207B62AABF15B2B864AFC4533CC436FC061481B350C336476956312324CE1037E5513F23DF939F42ECCAAD22B648BB61B71692F2529C634C18D5E628248EB3667244AD9DEFD5966D5A7987CA965E9D5425449FE161D3924CA3E71C5F37979CB62899B9E76A932396B292707654D7F419EA44F7D2D493A35B1BA87588D6755CCCD697799E86518918476BE1EA133BE0F7C97A667B0FAA6213FAA607E416A8B822140C0E91BA98FF2010D4027E731816E1E36B836C27A7272767423F50E50174868F82780527072AD1282944FD182561B40B624B94B8F6961A16CD52D3135F7205762041CAD192EA362870D412B1693AE5560213D1960B8AAFDAB05BEEC86DB90BB349F9C0DC832BBBFDC04B607B9A60EB8B35C6BC47CE3F4D38879EA487DA62D433515C149378F1CEB36612EEEB59D3A547DDC423358672E2296F83434DA851D4127FAB44C502CA2B2664E2F19530277953DD4C7167D8361256616CE47AEE9EA83F25C3DE303591D2D7806D34897009D59302E1EFAEB6629F6EEA824361482DC151D5A6EB3A01C0A87B163E798E699A959974442EC2679756F2A34AC4D3ABF210E2975558AA8399097ACD4D0BA7F12BA3A087183877B1C680A3EA968D4082DA7464AF53F437745A12B9956AD16232807ED1D2DAAA7F728170143D2389C354CDBA2E28934C796364B067274D28A708B80E76EB8BA3D4C80CC04E6A12DB744EA2B7C764257D348281072CC32F04AE20815A2C5FE874B95B3484759722A777E1432B820CC79956C4B241878A611A5DEF353369A3A0C4386F6FBA4F880EB767BA7EF41F8FD0C01A9027B595BD91BA3E343A63D13129360C200DC9F7C65EB2407E117ADFB623034603B39884E236187037AC46673483F156ACDA037BA9CDB5B208AD21D88BC56860CE62E93C7963248D3AB9E46233EF921B2F469E3AE309B2FC9C5C81181460869CC5C8C5BC0AF230588B0EDC05C4C20D2D0D479671457D6EDFE4141A98150552586DD048F4C3280C29CFD1616791103CD9DE6D1EBC1FDCCCF27DD93C384C06B77970B43E04D6520772A826DF22AA833000138F65CF60E67890F636DC96C431499D367AC42B41C694370D1E03489B86C6D393B52A0008B681E82620C338E0F8C2AB0754009E65593F7EC9010E54CC71E016CF1508F01D289A5414CCD35B24F0A8960FB65CE0310E1A97C85804A78B6251822BA74E070E4BAF25381D246B20F526530949BE0B15E06197A100067F37B466961019186E99B603A701640481E54406A2513076202A2BAC1419CE846D070F5B34221D446216B283A9E402AEDC0E1A39D8699164CE7F9690E1FCEB2096FB7703284A81CA40318B13078AD272A2248979DBA9EAA61CEFBC2A7608756CC6C7680641B93B04374A20D69A903F7CB114694DADDC9E58B933AD72DFA4CAC7A1542D84169492D97FF403E3CC40DD29C5997F2400154AC51BA52C45501ED3673338AF4228C4F1F549312181B148276D341A3314553C1A3500E92E400B444305AF2C8331D3F08924324D3E936C6C5A7B8E6043D14C54EC3C78839848E3D434887B110A3E36AD472208AF91A969A18DBD920E44157D25A14C7D38B0208F2AD8AA275911D3448A24D28762C90C67623016853ED9C06BC8A18CBDEA970E7C3A63253174E1591A53221FA02592A5D9BC9A89A308C9B220750B0249628724D4314518292DF85C8C1135067258D35044135524822287365F543124E550D2C9217C46365CBB001A9100F429D34C54BB9819975E3AB21F3900EB19501EEAA1E41B21D8A30B130AE11D03D287397BEB49A40C5A500E4C16B6D08550B24005119EB7CDB1C4916E2091F1B8A571B877218CFA8C25B7C478250DF10A1BA8A3701F3B3890BBD048F4FB4AC85499953CEF101A3BA169872075AB38B8337DEC1078878A05C95B104873655A2492A55BCED131470D8CB5046A486576C5596FE83B124DC35346479DB5ABAE2B89FCF2527D8DBCF1223565CBC51DDCA36D03FC61B9805542B02BF6417C93AE419CD70537C16E17259B9CB4C45F6677BB204427AB3FDCCD67CFDB38C92FE64F45B13B5F2CF212747EB28DC22CCDD3C7E2244CB78B609D2EDE9E9EFE717176B6D856301621A3D8789F57D31354C2C10670A55512F5F29DE4ABA0081E0294B160B5DE0AD5049F99C2C85D7727738B89B357DBBEEB56E86FC6477752D5F990C18FDFD3ECB7132D444258D860B3454E4B346C404B87BE3D8480F24804D92D9734026E915769BCDF266A27AABAF5E56EC703C09FEC6154289749726838D467575838118E080D17D8C3232935181A355FED21D129A26858F4777B6874DA281A1AFDDD15B7772F32CCDE39D19F3C702262E506096725A1C1E04F228CE582130EC1FF2E0824A7237929B7D30126EF490B25C0B8BF5B28017DFB7E9400FA2F37538198BF4C078149474703620A5E87B0B9AB9491D91B6FB77CB2B774B3E9C0DE8AF6FDB077DD290F85FEFE3A58F30AC49005B317111E5BE2B01EA389C2AF5031CB31F5DD1E5A6D33A021A962B935DCE06D4D3FA035CAAFFC7610DDA1A4B6DCF98B2B13F5D91E167A0E570445BE3AEC97D7EB0CE41CCF341FEDE1DC3EA509F8B4DF3EA0033E0D8B2970D04A415670FAA8FC620FE1D7287FAADEDFA1A190AF0E5205BEE73140290439D1A2BEBB6B6F1C502853E08A8C591ACEDC49E791FA3CB44EFB4B1A25A2D6265FC75A51DE4559F12402A33E4F5D6F2BE9948B3B02551E93D1B5BFD28CDE7E0990837458085400A67A463980C55E1550E33ECB52481693AB68D79BF1298EC2D2B0293142D1456E622DF20AF9EAB06948BF830CACE50085427BB837E9431483CB380A386E640A9CD46A92262FDB945F859802B7CD52A992214F889A5F2C9D8CF4701E1E1F62C406D7BB8B93A17D3F62754B2EB2303B4BF5FD160D2624E90E83903A178F1A1649DB4C83225F5D4658C617B1A393DC5DD0C1A8123733DBC9D4719FEB6117E2DB3E3D2D1BF0146C25E32A23AF6AA8BD023A9ADA7E0F2E17F6D17889BE3E1AEC98F25E04BFF1E3FB107C45B48285E02B5B4EF578563D99CEAEC762520B2D042AA1116B0953273A5243639E49674DDF548183289137D21969229FC7D849F911702EC90F73A8D1E7FF51C32429FA18C39332719F862F26BC8CD0AFB333D2477D77B099332FB6336673A6C405BFE6597616BDE6F318CB00798B9DF171355FA7B6183431F31ED704F90501FB9541D57EAAEB83EF1003FA916751C354DF5F898E399480855B21B4DFA3BCA8EE33D84B8C1AC2EF456698A79B85F5A02E70B0E390D4A68C2D479DF1540DEB2881FE24D0A3BB490BD15EF68ECEA6BEE69ABD08E371CA35B7A3ECE75D0B64AA93EF5BED0A0FF02A0E58AE9B16D943BB0AD04DF951218F22A4E5352C9FC289F201B5974A69EB7EC4B1798097E1CCFAA31B1CC9BD02EAF3D40D9A3EFD7D23B1337369CA073BD339A9DCD959DB7AFACED9E6015D2132B7051CB94D912B728429B59E92EF8ED0448F2DF579EAC2DBB7C0B19704E55164426631FB6831A1A9D3C515741B52E12954242413E967258B0D5479164F0A8DF6182A139AB6D6165AC45669B28ECAACB3D7397AC2BB79BDD972DCFCFDD1EEDC53FB075A704FDDD42DA6D066724C49E4C7671F538EFD57CA3E424235CBE045BA89ED5D04C9342852B0B5247F05CD03772892BA4D8A2B5483F5A75170C6320745825B5885ADEA8492C94837256DC1A4B89B143B0CB1C60829E71CAF247A521A8624751DF9A582EA91691459EF26C93DAAC177662131179F755C1DD5A603D3A8B2F7B59D060CCE039FA8D2014E8A41D4E3EDCC1A9ADC3A4E1606BEB1833941322BC6D439535133C6CC4193E2A3EE8A4648ABC35769CEF2F84BF3BB49AB8353DA30B9764AB2A0CC392539729C5E87CF71535599CF200DBE456B94DFE6EE252FC0F6045538B9FB7BBC8A2380625CEA0A3741123D82BCF89AFE06928BF9DBD3B3B7F3597989A4CA7E84B3F79C87255DC8431256E97CCE7E44E97CC07ABBE09BBB27054250F27CCD880665F36BC200955970967F05024BD4ACA27B4464B9E01B2E259C5925BA8F10694BB9FE19C0990F0AB0BE0DD095D504D502D80C86982F7840C99D30032EB4E071461DAA0702A07CC1C3D09ECAA453C148BE0559F81464FFB50D9EFFBB1D346CF3F6008F58CE2A600F51E14C21DA275441415E9D22427E37376C687F5037482496DB03914838B70760D8C8E80C89B631EA85506DCC3B5821AC9CB81EA8CF38713DC09B22EF1B64DA6A58F471919A577E2139BF4ED6E0F962FE7F65BBF3D9F5FFDE534DDFCCCA75FC7C763AFB7FCFCC2D7BC7EC50999BBE5FD37A99992223B2796BBAC1A273D66048208CB6E8E76D06FFCACB5DD1D94F707AE0F61516BF75ED81B68CF7BBAA4E6A9978254244A596F1308124BB8C07604D5E120FB0980C333ED6AF32D18C074024D78C8F3D12956CA6F31A8613CCB45BC5CAC6F6EB9884ED773EA79FD551B683A95A751905C9653395B5854A6233FA6EA9ADAE96D027A7B701FB24FAFB1E44A54A7C8C9030584C7605A2CB6413D751473472A73DA05A828935A89D10D7ED3BC93165E174C382B4EC713F2CF3BD1FEC5AEE6DE5F52798933D10499CA743CCBBA813DCCD6A748E204F50494A1F1F9B403E4D9007984C9A203F270D9226A8BD094F4C0CA45E549DCEB49393174D529F83D59754FCA91BA99B861E56C6D60B63B7DE49786B6BD3090E68EDC7AA5005B8F603DBDFF2E6C36438598BFBF8A63157EDF44AF492D1B079742F7967763659D0D152EA41286F65D9780E5628BD6D65AB0C3F5E6C9024C58FE356B169D9650BC1E404EA496248A2A07E3AF0B00D1ACBB6C8251972EB9E69DC050B929BC80D81BA5D273BD70457383A875137486CF6221F6B06C95F348D1588E42EF221DCAEEB922C17D07175F21DE84167167A1567120F92E0CAA9F21C3C475EF5CDAB4C421F1F4E6792D2C7D1BE543754AD8E077B00EC5D568E0E1D29A081CE7ACACC35C729F0ADAC8414387E6136B96F8E8B764B5110D2C51CAC0C3489677CB018493D338D43883F67407FEE24C92C59B3A3F27ED6C1B2E3B86EBB26D54C6B8311975EA61B9C5EAD6354AA997E3A9894FC8E1736A51266EAD21E1F1FC0045A425CD991BD4FD6B32F690C14D19CE88A1CF76AF3EC661F17118A2D81785CCC4F4F4ECE047A8950A50079583F0880A07A01E8841305F12A4DF2220B22313710E4EC248C76412C1D0957DB527721523770F9922BB00309524AFC206DFA323CCBB85C34D039656AA2057375B30D73F087A196B368C9118E7CE6993786640B7B3E34E4CC188333A4C7E47E3983F5933010EBA257C31BCACCBF07C41C168B8AF3944E78597198B221D715D5BB248370069F934A356F544A233C69F8CBE4675FF564E8B893AECBB835A442900549F7B3485872D0012E09F61C36A195A0445AB3001C05DEBFC08F3EEB7C3231D3B451D984B8B9C325936706CDADF80930854D4EA301D843C817A69AC13A08979EC0E6DBE47941FDDCE8B85CA04F8936DCFCE35C58F248EB3E9880BD71228157971C3A3B98DEDB56F2C4682C810DE9A5415D1A464566910DB6A267912B71E28D3AB45802AF277ED0048DF5C315D2E8694557EA07228764873A4CE99EFBBD7A8A62F556928F71924C292963A7D68243EAA65552387BD07EB946F30C5B5F7CC30CDCA65BCDFB6383EB1445C09B17A699AA66198147EC76A181FA21E1C119431D5F24CCA0C436C9951C065F0C679774E10AC30BC7833386C19F21094F934C24537C18DCA17F6F6E541619D5724DF306FCFF8708C46B237BD84CDF9990E4F8737205625080190A65400111AB200F03F115F732CBAF894151D0988C33CBEF7D32D280DCA378864DB22551BF0F35C2C9574AA8764C34E993EF800CE17EF21D9B25D489D187B596D2517D344CE6FBEBB099EA5FBB9BACD994E694E154C7787C31A0DA70E5886195C67B368F7ECD957CCE7B8119F08B0A4D7D3A25FC8CC407D6CA832DAF32E85FCCD70FE826401567C855117886EB900DD3123B64CBA51DB26167B63D62FDA7ECB17E7842D36359C5BE474D67FA7EECBBA877BFCA8E9A57E134DDC9B7D0429FD8F72A7455BF1B25E90117190073DB0DA103AE5CD61153C5BA47755FDA5ECCF01BAD2AC06F4A64F071A135FCDAA8ADEAA52ED7F45555B11F12B177A93A253534DDE24A917DC74A4EE7CA359D5AF2B9EC98AEEA95A9A4E99A7D09DE1683F238A6ECBA2CD5F5593E6C6DEA8B59B285BE9852595FCCABC37C5FEC6B30A6D8F219559DD362FA3874E94698596024CFA88A6BB4CC312C692E1EB8D961B626416E4F01E97B7C6D90F7413A1F04A845D38200EA774CBD1180D535B257547B2381A51CC86367FD0C66505110DE231507AF0D0F6590657628D4E3959390758C8A6672952F6D76666C4BC2741E9E817BA5F17E073383C22B98EA916A63DC74761BC90870C98804109F721447AE0FDF92D91D196C9B6FE30F938B40528F5517AAE465C0D27311DDBA2EE93C7449A48D64DCA6781C99B1893DA294C873251A0270C728BAB5BF41EBE349D464708843910D8A3F48D183236566E2B0A127F6B03A720901ABE71355BC417F04E9975B84F800C3F8359E5375308138008B9DDA70C3576FD64DBE72A933523C67D3B833C593183E71F41A28A0F008B7455BEDC99550ADFCEE79496CF0322D890A23BD87610FB7246ADE2616876FE9AFF3BEF393186F84D792FD9242C303465794170EF03B64E13DE2A66CB9A8CC5DF803FC29BC3BBC5C7CD927282B50F5EB0AE4D18680404F2A272064FC364D9DEBE431AD3D481C467595BA98CA68B30E8AE0322B22A40F617108F23C4A36F35999E9E662FE7EFB00D6D7C9E77DB1DB1770C860FB10334A13B9A174FD2F1702CE4BECD8F1310488668412297D4EDEEDCBBD15C6FB8324EF8C0204F26FE11C2F682E0B94EB65F3D240FA9426968030F91AB7DC57B0DDC51058FE39B90B50A61077DCE049F523D804E1CB2D7E3E5A0DC43C112CD9975751B0C9826D8E6190F6F027E4E1F5F6F94FFF0694EC26CAFF490100, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201610151557280_UpdateProduct', N'WebShop.Migrations.Configuration', 0x1F8B0800000000000400ED3DDB6EDC3896EF0BEC3F14EA69B79171D9E9971EA33C03A79C343C1327DE383DBD6F86ACA2CB42ABA41A4995D858EC97EDC37ED2FEC2921225DE6F127529A7D008DA2592878787E7421E1E1EFEDFFFFCEFF2AFCFDB78F60D6479942617F3B393D3F90C2461BA8E92CDC57C5F3CFEE997F95FFFF2AFFFB27CBFDE3ECFFE51D7FB19D5832D93FC62FE5414BBF3C5220F9FC036C84FB65198A579FA589C84E97611ACD3C5DBD3D33F2FCECE160082984358B3D9F2CB3E29A22D287FC09FAB3409C1AED807F14DBA06718EBFC392BB12EAEC53B005F92E08C1C5FC77F070F794EE4EDE4308C5CB870C967C4FB33FE6B3CB380A203A77207E9CCF8224498BA080C89EFF9683BB224B93CDDD0E7E08E2AF2F3B00EB3D06710EF020CE4975DBF19CBE45E359908635A8709F17E9D611E0D9CF98400BBE792B32CF1B024212568442A32EC9783187D47E8C369F77087C3E9FF13D9EAFE20CD526A45EA51938615ABD99D1656F1AC680FC83FE7B335BEDE3629F818B04EC8B2C88DFCC6EF70F7114FE1DBC7C4DFF00C945B28F631A4B88272C633EC04FB759BA0359F1F2053C62DCAFD7F3D9826DB7E01B36CDA836D580AE93E2E7B7F3D927D879F010838609A8C1DF157040BF8204644101D6B74151802C4130404946A177AEAFCBDD4EE84EDFA2A2281C43DD0A322B14BEF9EC2678FE08924DF17431877FCE671FA267B0AEBF60C47F4B2228ABB05191ED815D4FFF086254B5E7BEAEF3CBB088BE351DBD4BD318048984F67A38AB0CC079B882FF6A48E8EFAF5077985AFEB65BB76C59F5F9AEFF09A9501CA0A34F690172CFBD2C1744B1E8D54DA95F40F66B96EE77F6EA866E755437AA890DB6FDCBF215C8C32CDA55D6A8E7BEC69077A5AEEAC4EE9FB335C89CD9BD6C7564771577602A399AD83198EA0AC490A5B297366D4B26F80A6916372D41186DD1CFDB0CFE85D7EABFCC67776180086DA4C01DA4FFDEB705682949C39827D8CBA7E05BB429F94EC146B0CF2F202E6BE44FD1AEDA3BB0A2784FD5FD90A5DB2F69CCCB38A9727F97EEB3108D3ED5D7FB1A641B50745430CEBAE5A856147D7D88B2BC18C4947E0C06EAE872BDCE40DEBFC4DF3EA509F8B4DF3E207EEC7B6D106445EF9DFC1EE54F1FA3BCFF8E3E81EF790C10A73A6A4B6E3DED6007AF7743B1056B6FAC90FB5B1A25C39AE87751563CF5B6601CCCCCF1F4C8E9F5D1AFFB4854BE46C358B21602A2318FF74265D13EF275940652A828B390D698EBEDFA3D5FD784B7DAAEF3F5DA625D8B8B0DD6755D0DD6551533D6B85E37AC6DD984D436626EC3284D4D57EC917C18488DAB48F02C4BD4C855C5AD303291B1A9A4C24A47B4BA82977567CD808EABCFAAD9710DAA320E43AC0A47F50362A9B2649BB2F681724B65741D3DDD97BB1DC4BC244947488874C3EC66D2EF2003EBC1FABB491FA21894E77C43B832923479D9A66419DBF60C036DFACA05239407F972D304B0A527A33247520F065724980EBEBC93E5B84EBEA55108AE401144B1B506605A1DA826E8DF6EC09FEB7D58387A44316D1D5BFDC73EC0383934BACDA290B07C473FE62A253BF3AEB086D98EB5DC2BBEBE33C8419CF04A4589195EAA26194573DFD424CA525A415099F25AAE9B012CCF168836355588E20A0644EB5A3E34BCAB6E3F6A7595B0A80EBA8EE11323A82ECCADC713B9DE4FE4746AEF9E5412345E53A65276A442273DD7E85C4B3D87EB1FF59C8ACF86D836AE60CDD715240369BD49B317D748C32CDA4489D7F53894CFD82BC0565B8C16A74D3741B27F0CC2C29D8AEFB220099F0E2002E57ABB4BB3A24DCB0F1059A88DAEB7C1A67FC1297B19E4C4B5A52DBC8AF230DD27EDF79DDAB57EC54E52BB57AFCCE96AC4F289A582ED935469B31DA9D58D114952518E665DAE45B4A9D406554AAC8DD83275E5085355B438D3F5DAA0AD39FFA3BB118FFEC4522D9E2D0FFC30880F1188D7662CA99A72449B0A5A5C492D1F2BB65A7EDCD66D55ABE3EA4DD1D7AB8B3EAEE6FB63BA495F873BAC8D0174952CA2F4DD64AB6E7794AE1F45BACA95DED714CEF5F7FEE312830C5219F2D8F497E996AB529375AEE569F514C5F25812AEE2BDBCA160B3B5F555265CDFA8E502A406524DEE7063ACD1751A634D982EBA9559A2BAA957AAE951C3FE281A969AF4411631547F2BB445CE5EC931E210EB26C7303AA6D551A2C794E851A3E86AF50E8AC0D924C03647CE51F4858833C4257CD4CFC857F0A7101673AB085BD29E6F5B0B4979DFCE31DC8C6A731412C759339D3BAD9DAFEC966D5A1D06952DBD9E4995107D469E4D4B328D87F2F826BB64B745C9CC3D579B6CB1949584BDA3BAA6CF282ABA97A69E1CDDDA1FAD43B4AEE3E2A5BECCF3348C4AC4385A0BB7AAD801BF4FD633DB2B56159BD0974820B740C515A1387388D4C5FC2781A016F09BCDB0081FDF48643B393D393913FA812A0FA03D7C14C42B38395089464921EAC72809A35D105BA2C4B5B7D4B068969A9EF8922BB00309528E9654B74181A396884DD32967094C445B2E28BE6AC36EB923B7E52ECC26E503730FAEECF6132F81ED69827768D618F30770FE69C29DDF497AA877953D13C545318977FA3C6B26E12AA0355D7AD44D3C526328279EF23638D4841A452DF11756542CA0BCBD42261EDF36739237D5A51777866D236115C646AEE7AEA0FA5332ECE55513297D0DD8469308F75B3D2910FE5A6C2BF6E9A62E381486D4121C556DBAAE730B8CBA66E1F3F298A65999A447E422BC7769253FAA1C3FBD2A0F21345A85A53A4E9AA0D75CE2701ABF32C07A88817377760C38AA2EF00824A85D47F63A457FF9A725915BA9162D2603E8172DADADFA27771347D13392B04BD5ACEB6230C994374E067B76D2446E8A80EBD8B6BE384A8DCC00ECA426B14DE724587B4C56D247231878C032FC42E00A1297E5A4CEDD0222AC7B1599BD0B2B5AD16438E6B422960D3A54D4D2E8AAAF99491B1D2546767B537F423C784756EFAC0279840656823CA9AD5C8ED485A1D1198B0E6AB261006910BE37F69285EE8BD09940AC21984C82D6C07C2621BB0D06DCC5AAD1B9CDE0C415ABF6C0636AB72D170B340467B1C80CCC542C8927EF8FA45127D75A6CA65C72C7C5C84E673C41969F932B108302CCD079313A655E057918ACC533DC05C4C20D2D8DAE2B438BFA5CBEC92934302B0AA4B05AA09100885118529E01C4CE29211C667B777BF047E16696EFCBEDC16132B8DB83A3F521B0963A964335F916811D840198902C7B06338784B477E3B6248E49EAB401245E0932A6BC69F01840DA34349E9EAC553140B00D44370119C60187185E3DA002F02CCB29F25B0E70AC628E63B778AE4080EF40D124BA601EF622B147B57CB0E5028F71D0B834C922385D208B125C39753A70587A2DC1E9205903A917994A48F255A8000F9F1A0A60F077436BC684C8C07066DA0E9C069011049613198846C1D881A81CB15264382FB61D3CECD1887410895BC80E26D9BA6AC132BE003BC84AFEE2CA2DF184F3AFC3AF5CBF1B40510A54068A314E1C284ACB8992246685A7AA9B32C8F3AAD821DAB1191FA31904E5EE10DF2881586B427EF3C552A435B5727B62E5CEB4CA7D932A1F8752B5A858504AE6FAD10F8CF30075A714E7F991005488BE374A598AA03CACCF66705E855008E5EB9362427A64914EDA80346628AA90346A00D255801688860A5E590663A6E11349709A7C26D9F0B4F61CC146A399A8D879F006319186AA6910F722147C785A8F4410DE3A53D3421B7E251D882A004B42997A7360411E55BC554FB22226A11449A48FC69239CEC4782C0A7DB280D79043197ED52F1DF864C94A62E822B434AE443E464B244BB37835134711956541EA160492840F49A8630A32527AF0B930236A0C64B3A6A18826B0480445366DBEA862C8CBA1A49343048D6CB87631342201E85DA699A87631332EBD74643FB201D633A03CD443C93742B047172614C23B06A40FB393D7934819B4A01C982C6CA10BA164810A223CCE87E1955CEAAD97E9C0DDF6C8BD0B7DD45B2DBD93A51B4DC8A9B0812C8AE3638703E42EC411CF7D25AC53B9953CAF101A3FA16985203D567138CEF4B142E00F542C48DE82409A5BD322912C8FE51C0FE6A881B19E400DA9CC4771D60BFA8E44D3F094F1A0CEFAA8AE2B89FCF2527D93BC39456ACA968B3BB846DB06F8C37201AB846057EC83F8265D8338AF0B6E82DD2E4A36396989BFCCEE76418876567FBA9BCF9EB771925FCC9F8A6277BE58E425E8FC641B85599AA78FC549986E17C13A5DBC3D3DFDF3E2EC6CB1AD602C4246B1F1675E4D4FD030051BC0955629DACB5798AF8222780850D282D57A2B5413CECC144EEEBA3BD9B198387BB5EFBB6E85FE66CEE84EAA3A1F32F8F17B9AFD71A28548080B1B6CB6E8D0120D1BD0D2A16F0F21A054124176CBE58D804BE4551AEFB789FA1055DDFA72B7E301E04FF6302A94CB3C39341CEAB32B2C9C0B4784860BECE191AC1A0C8D9AAFF690E81C63342CFABB3D343AEF180D8DFEEE8ADBBB171966EF9CE84F9E4F11B17283841393D060F02711C672C1098770FE2E0824A7237929B7D301A6D393164A8039FE6EA104F4EDFB510255823466A60231019E0E0293CF9006C414BC0E6173572923B3375E6EF9646FE962D381BD15EDFB61EFBA531E0AFDFD75B0E61588210B662F223CB6C4C11EA389C26F5C31E698FA6E0FADDE6DD39054B1DC1A6EF066D30FC846F995DF0EA23B94D4962B7FD132519FED61A1C7764550E4ABC37A79BDCE40CEF14CF3D11ECEED539A804FFBED03DAE0D3B0980207AD146405A78FCA2FF6107E8FF2A7EAC51D1A0AF9EA2055E07B1E03944590132DEABBBBF6C601853205AE489AA5E1CC9D741EA9CF43EBB4BFA551226A6DF2752C8BF22ECA8A271118F579EA7A5B49A75C5C11A852998CAEFD95FEF3F626400ED2C110A8004C758F7200C65E1550E33ECB52481693AB68D79BF3298EC2D2B1297142D1456E622DF20AF9EAB06848BF830CACE50085427BB837E9431483CB380A386E640A9CD46A92262FDB94B7424C81DB62A954C9902744CD2F964E467AB8131E1F62C406D7BB8B93A17D3F62754B2EB2302B4BF5FD160D2624EF0E83903A1D8F1A16C9DC4C83225F5D4658C617B1A393DC5DD0C1A8723733CBC9D4719DEB6115E2DB3F3D2D1FF0147C25E32A23AF6AA8BD023ABADA7E842317F6497A89BE3E3AEC98F25E04BF39C7F721F88A68050BC157B69CEAF6AC7A909DB5C762520B1D04EF8750548224D6B3A64E9CA486C63CB4CEBAD2A90207D124AFAC33D2493E8FB132F3A330B87C41CC26499F4A480D9364FD631C59CA5C801ABE98B059A2DF7767A499FAEEE08367DE7C67DCF04C890B7ECDC3EE2C7ACDE731CC0A79CD9D511BCDD7A919972606DFA38D915F38B0B734AAF653B537BEAD05FD4CB4A861AAEFAF44C71C4A00C4AD7055C0A3BCA8EE47D84B8C1AC28F2233CCE3CF823DA80B1CFC4224552AE31B52675055C33A4AA03F09642FA0781442CD0D1C7B39D402F9514451782558B1E8763564B2D78015A09BF2A3908E21A41ECF98B510ED05F378C2DC9B422EAF75F954C428BF507B0D2C6DDDCF34376FFA325AA8FEE80647724F81FA3C7507A9CFF3C391D899B984E5839DE91C57EEECAC6D3DFDC3DEE64D5E21D2B7051CB94F912B728429F59E92EF8ED0C41360EAF3D485B76F81632F1DCAA3D2844C65F6D1674253A78B30E876A5E2E45191E04CA49F952C3650E559412934DA63A84C90DA5A5B68115BA5C93A2AB3D85EE7E855F0E64168CB71F3F751BB734F7D3ED0827BEAA66E318A3693634A4A3F3EFB9872F6BF52F61112B4590643D24D6CEF3648A64191D2AD25F92B681EB84391246E525CA11AAC3F8D8233A0392812DCC22A0C5627944C86BB29690B2665DEA4D861081B23A4B073BCE2E849691892DE75E4970AAA47A65164D19B24F7A806DF9985C4DC7ED6717A549B0E4CA3CA06D8761A30380F7CA24A2F382906518FB7336B6872F5387918F8C60EEE04C9AC1853F14C45CD1833114D8A8FBA2B1A214D0F5FA5D9CBE32FCDEF264D0F4E91C3E4EE29C98232F194E4C871BA1E3E674E55653E8334F816AD51BE9CBB97BC00DB1354E1E4EE9FF12A8E008A71A92BDC0449F408F2E26BFA07482EE66F4FCFDECE67E5A5942A9B12CE06741E9674210F5358A5073AFB19A50702EBED826FEE9E640841C9F335231A94CFAF092B5466D559FE1D082C51B38AEE5192E5826FB894706695383F42A42DE5FA5700673E28C0FA3640576013540B60371862BEE001258BC20CB8D082C7197AA81E0880F24510437B2A334F0523F91664E15390FDDB3678FEF776D0B0CFDB033CE239AB803D44853385E8F3BF0A0A3AC12B22749EE3860D7DF6D70D12890DF74024121EEE011876323A43A27D8C7A21543BF30E5608ABC3410FD4670EEC3DC09B22EF1B64DA6A58F476919A57DE909C5F276BF07C31FFAFB2DDF9ECFA3FEFA9A66F66A51D3F9F9DCEFEDB3373CBDE453B54E6A6EFEBB43633536444360F4E3758740E1C0C0984D116FDBCCDE05F79B92A3AFB054E0F5CBEC2E2B7AE3DD09EF17EADEAA4CCC42B11222A558D870924D96A3C006BF29C7880C564ACF161BFCAC4351E0091DC353ED64854F29ACE360C27AC6967C5CAC6F6764CC2F63B9FD3CFEA28DBC154ADBA8C82E4C6998A6DA192E28CBE5A6AABAB25F4C9E965C03E89FEB90751A9121F23240C16935D81E832D9E4E8A8231AB9D31A502DC1C41BD44E88EBF69DE498F270BA61415AF6B81E969DBD1FAC2DF76679FD09E664374492C3D321E65DD409EE6E353AE79027A82445908F45209F76C8034C26ED909F9D06493BD4DE8527261A521B55A73DEDE4E4459324E860F525157FEA46EAA6A107CBD8DA3076EB9D84B7B6769DE080D67EBC0A55806B3FB0FD99371F2EC3C97ADCC7778DB96AA757A2978C8ECDE3F192776667930F1D3DA51E84F25696DDE76085D2DB52B6CA1834C533392A6590E3D2B369D96549C2E418EA490249E2A17E3AF0B0AC1ACB57C9252D72EB9E69DC050B92EBC80D81BA5D27BFD9042D269D13A91B24361B920F1B44F2214DC3A2915C483E84DBD5CEC9720B1DAD9D6F2345672A7A157B1C0F92E0CAA9F29C3E475EF5CDAB4C82201F87D8244590A3BFAA6EF8EAAC63DFA2A24CBB739416DFD222E4EFF10BB349DC73B41AED44E178542A0534901745CC3E73B0B46FF2D8F8107092C9661A7B107F670BFD9D4E4966C99A1D95D7BD0E961DC73D056C32D7B4F61771D96ABAC1E9D5394665AEE9A78349C9EF7851582A61A6EE00F2E1064CDC26C4951DD9FB643DFB92C640111C8A6EDC718F4ACF6EF67111A1501588C7C5FCF4E4E44CA09708550A9087F5930008AA178036385110AFD2242FB22012530D41CE4EC26817C4D29170B52D7517227503972FB9023B9020A5C40FD2A62FC3AB91CB45039D53A6265A303741DB3007BF026C398B961CE1C8679E796348B6B0E743430A8E313843BA37E89733D8631206625DF46A784399A3F48098C3C2A8384FE984CD8AC3940D695754CF9C0CC2197C8A2BD5BC511992F0A4E12F939F7DD58BA6E34EBA2E81D7900A411673DD8F91B0E4A0033409F61C36214B5022AD31004781F72FF0A3CF3A9F9BCC346D5472226EEE70C9E4994173C97E024C6193226900F610D28FA966B08EE9A527B0F936795E50BF863A2E17E833AC0D37FF38B5963C70BB0F26602FB048E0D52587CE0EA6E7C0953C311A4B60477AE95097465191596463ADE859E44A9C78A38E5496C0EB891F343163FD708534185BD195FABDC921D9A18E52BAE77EAF9EA258BD94E4439C24534ACADA3049DDBA4A33670FDD2FE3681E76EB8B759881DB74AB79D16C70B5A208791B906F86572E23F088DD4234503F4D3C3863A803BC8419A4AB4A2693293E0C0ED1BF4C372A93189E501E9C4F0C271C6C8C9464225B39B047638CE1BCD72E3C31AAF39A6606F8FF0F1188D7467EB099B933216DF2E7E40AC4A0003314CD80622256411E06E23BF365DE6093D2427163326D557EEF938706E41EC5C36E922589FAC5A91136BF5242B563A2496F7E076408F7CDEFD82CA14EB53EACC3940EECA36132DF5F87DB54FF7EDE643DA734A70CA73AC6E38B01D5862B470CAB34DEB399F96BAEE4B3E80BCC80DF6868EAD349E6672444B0561E6C799593FF62BE7E405731AA5043AE8AC0335C876CA496D8215B2EED908D3CB3ED11EB3F658FF553169A1ECB2AF63D6A3AD3F763DF45BDFA5576D4BC33A7E94EBE8416FAC4C7AF4257F54B54921E70910130B7DC103AE0CA651D3155AC7B54F7A5EDC50CBFD1AA02FCA644061F175AC3AFFDDAAA5EEA724D5F5515FB21117F97AA535243D32DAE14D977CC7852547D339534DD937A0E1828658D2BD7F46B2969CC764C39D6B25437C8F2A96C535F8CC916FA624A657D31EF18F37DB1EFCB98C2CB6754754E8BE943D1A50B61C6C0481E66156DB4EC6C58D25CDC70B3C36C4D82DC9E02D217FEDA20EF83743E08500B860501D42FA37A23002BE9B277597B2381A51CC8C367FD0C665051105E381507AF8D106590655628D473989390758C8A6672956F7776666C4BC2741E9E817BA5217F073383C2BB9AEA916AC3DC747E1BC90870C98804101F871447AE8FE092F91D196C9B6FE30F930B42528F5517ADE465C0D27D11DDBA2EE93C7449B08D64DCA6901C99B389DDA294C873251A0270DB28BAB5BF41EB434AD464700845910D8ADF48D183236566E2B0A127F6B03A720901ABE71355BC417F04E9975B84F800C3F835A7E986600271144CF12408A15EB69B8EC965084B56AADA7DF348832607BD86712B4E84DBA2AD3EC995B04AF9DDB3496CF03299448593DEC3B08733899AD78EC5E15B9ED7795FF9499C37C2FBCB7E49A1E101E35194170EF03B64E185E3A66CB9A8DC5DF803FC29BC64BC5C7CD927282D53F5EB0AE4D18680408F34272064CE6D9A3AD7C9635A9F207118D555EA622AA9CD3A2882CBAC88901180C521C8F328D9CC6765B29B8BF9FBED03585F279FF7C56E5FC02183ED43CC580A740CA5EB7FB910705EE2831D1F438068462893D5E7E4DDBE5C5B61BC3F4852CF2840A0F32D9CE605CD6581D2BD6C5E1A489FD2C41210265F732CF7156C773104967F4EEE02942CC41D37B853FD083641F8728B1FA45603314F044BF6E555146CB2609B6318A43DFC097978BD7DFECBFF03E4B62CDDFF4A0100, N'6.1.3-40302')
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'WebShop', N'webshop', N'6ecf4de2-8256-4a4e-a2ae-72254398ecdf', NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'6ecf4de2-8256-4a4e-a2ae-72254398ecdf', N'858ee01e-2c25-4d9a-a1c0-fa6bfabb6dd6', N'1234', 0, N'1234', NULL, N'admin@mail.com', N'admin@mail.com', N'Is admin', N'yes', 1, 0, CAST(N'2016-09-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T16:55:13.563' AS DateTime), CAST(N'2016-09-05T00:00:00.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'6ecf4de2-8256-4a4e-a2ae-72254398ecdf', N'd68a2e30-6a3d-49e6-bf58-53542567ff66', N'Cashier', N'cashier', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'6ecf4de2-8256-4a4e-a2ae-72254398ecdf', N'439d26dd-eecb-412d-983a-117fabf7b257', N'Customer', N'customer', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'6ecf4de2-8256-4a4e-a2ae-72254398ecdf', N'413d1d97-cfe3-4a0d-af4b-47c557ec1c22', N'SysAdmin', N'sysadmin', NULL)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'6ecf4de2-8256-4a4e-a2ae-72254398ecdf', N'858ee01e-2c25-4d9a-a1c0-fa6bfabb6dd6', N'Administrator', N'administrator', NULL, 0, CAST(N'2016-09-18T16:55:13.563' AS DateTime))
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'858ee01e-2c25-4d9a-a1c0-fa6bfabb6dd6', N'413d1d97-cfe3-4a0d-af4b-47c557ec1c22')
SET IDENTITY_INSERT [dbo].[ConfigOptions] ON 

INSERT [dbo].[ConfigOptions] ([Id], [AppId], [OptionKey], [OptionValue], [IsActive], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Notes]) VALUES (1, 1, N'SiteName', N'Gem Shop', 1, CAST(N'2016-09-04T01:53:42.533' AS DateTime), CAST(N'2016-09-04T01:53:42.533' AS DateTime), N'Administrator', N'Administrator', N'HomePage')
INSERT [dbo].[ConfigOptions] ([Id], [AppId], [OptionKey], [OptionValue], [IsActive], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Notes]) VALUES (2, 1, N'PromotionNotice', N'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque quisquam aperiam necessitatibus id consequuntur quidem praesentium laboriosam repellendus modi fugiat aliquam quam minus mollitia eveniet sapiente perferendis voluptatibus ad rem? Id nesciunt alias neque non illum facilis nobis cupiditate ullam corrupti nisi esse cum tempore tempora praesentium soluta autem vitae!</p>', 1, CAST(N'2016-09-04T01:53:42.533' AS DateTime), CAST(N'2016-09-04T01:53:42.533' AS DateTime), N'Administrator', N'Administrator', N'HomePage')
INSERT [dbo].[ConfigOptions] ([Id], [AppId], [OptionKey], [OptionValue], [IsActive], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Notes]) VALUES (4, 1, N'PromotionCategory', N'3', 1, CAST(N'2016-09-04T01:53:42.533' AS DateTime), CAST(N'2016-09-04T01:53:42.533' AS DateTime), N'Administrator', N'Administrator', N'HomePage')
SET IDENTITY_INSERT [dbo].[ConfigOptions] OFF
SET IDENTITY_INSERT [dbo].[ProductBranches] ON 

INSERT [dbo].[ProductBranches] ([Id], [Name], [Description], [BranchLogo], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, N'Big Branch', NULL, N'big-brand.png', CAST(N'2016-10-05T00:00:00.000' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductBranches] OFF
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, N'Jewelry', N'Our gleaming collection holds almost 185 gold religious pendants and White Gold Religious Pendants ! You are sure to find your perfect gold Religious Pendants right here. And in every single Gold Religious Pendants , you will find exquisite design and enduring value. Starting from price range Rs. 4,688 , they''re all just a click away. So have fun shopping! ', N'single-1.jpg', NULL, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (2, N'Necklet', N'Add a few or many precious and semiprecious stones to Floral Necklaces . Find an unrivaled selection of stunning Floral Necklaces available at the best and most competitive values in the industry today.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.', N'product-8.jpg', 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (3, N'Ring', N'Diamond Cocktail Rings starting at price Rs. 40,067 to Rs. 2,57,932 .

Browse through unique collection of diamond rings , ruby rings , emerald rings , sapphire rings and garnet rings available.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.', N'product-3.jpg', 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (4, N'Eearings', N'The perfect jewelry piece is that, that assures, both elegance and classiness is- studs earring. There is no doubt that these pieces are of exquisite beauty and makes the wearer stand out of the crowd. These ornaments are not just beautiful, but also go perfectly well with any sort of clothing. One can definitely put an appealing look on themselves with a pair of white gold stud earrings. Women wear these pieces in combination with other ornaments such as silver bangles. The blend of attractive 18k studs earrings with trendy bangles is sure to draw attention from people around.', N'product-7.jpg', 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (5, N'Gem', N'Diamond And Gemstone Jewellery are unmatched in quality and style. Browse through our classic, elegant and high fashion bangles, bracelets, earrings, mangalsutra, necklaces, pendants, rings to suit any occasion.', N'banner3-mini.jpg', NULL, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (6, N'Stone', N'Our wide variety of diamond and gemstone pendants includes everything from unique gold pendant , classic heart pendant that add the perfect finishing touch to any outfit.View fine collection of available 986 pendants in variety of designs.', N'banner7-mini.jpg', NULL, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [Description], [ImageToShow], [ParentCat], [CreateDate], [UpdateDate], [IsActive]) VALUES (7, N'Diamond', N'Diamond Jewellery are unmatched in quality and style. Browse through our classic, elegant and high fashion bangles, bracelets, cufflinks, earrings, mangalsutra, necklaces, nose pins, pendants, rings to suit any occasion.', N'product-2.jpg', NULL, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[ProductManufactories] ON 

INSERT [dbo].[ProductManufactories] ([Id], [Name], [Description], [ManufactoryLogo], [ManufactoryCountry], [CreateDate], [UpdateDate], [IsActive]) VALUES (1, N'Big Diamon', N'Test Data', N'big-brand.png', N'U.S.A', CAST(N'2016-11-08T00:00:00.000' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductManufactories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (2, N'The curacao ring', N'R01', 1, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-1.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.20 AS Decimal(18, 2)), N'Diamond Cocktail Rings starting at price Rs. 40,067 to Rs. 2,57,932 .

Browse through unique collection of diamond rings , ruby rings , emerald rings , sapphire rings and garnet rings available.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (3, N'The suneha ring', N'R02', 1, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-2.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond Cocktail Rings starting at price Rs. 40,067 to Rs. 2,57,932 .

Browse through unique collection of diamond rings , ruby rings , emerald rings , sapphire rings and garnet rings available.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (4, N'The ziva ring', N'R03', 1, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-3.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond Cocktail Rings starting at price Rs. 40,067 to Rs. 2,57,932 .

Browse through unique collection of diamond rings , ruby rings , emerald rings , sapphire rings and garnet rings available.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (5, N'The raine ring', N'R04', 1, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-4.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond Cocktail Rings starting at price Rs. 40,067 to Rs. 2,57,932 .

Browse through unique collection of diamond rings , ruby rings , emerald rings , sapphire rings and garnet rings available.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (6, N'The cheyenne ring', N'R05', 1, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-5.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond Cocktail Rings starting at price Rs. 40,067 to Rs. 2,57,932 .

Browse through unique collection of diamond rings , ruby rings , emerald rings , sapphire rings and garnet rings available.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (7, N'The pushpanjali earings', N'E01', 4, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-6.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.30 AS Decimal(18, 2)), N'The perfect jewelry piece is that, that assures, both elegance and classiness is- studs earring. There is no doubt that these pieces are of exquisite beauty and makes the wearer stand out of the crowd. These ornaments are not just beautiful, but also go perfectly well with any sort of clothing. One can definitely put an appealing look on themselves with a pair of white gold stud earrings. Women wear these pieces in combination with other ornaments such as silver bangles. The blend of attractive 18k studs earrings with trendy bangles is sure to draw attention from people around.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (8, N'The floral daze earrings', N'E02', 4, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-7.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'The perfect jewelry piece is that, that assures, both elegance and classiness is- studs earring. There is no doubt that these pieces are of exquisite beauty and makes the wearer stand out of the crowd. These ornaments are not just beautiful, but also go perfectly well with any sort of clothing. One can definitely put an appealing look on themselves with a pair of white gold stud earrings. Women wear these pieces in combination with other ornaments such as silver bangles. The blend of attractive 18k studs earrings with trendy bangles is sure to draw attention from people around.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (9, N'The floral ambrosia necklace', N'N01', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-8.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.45 AS Decimal(18, 2)), N'Diamond And Gemstone Jewellery are unmatched in quality and style. Browse through our classic, elegant and high fashion bangles, bracelets, earrings, mangalsutra, necklaces, pendants, rings to suit any occasion.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (10, N'The encircling charisma necklace', N'N02', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-9.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond And Gemstone Jewellery are unmatched in quality and style. Browse through our classic, elegant and high fashion bangles, bracelets, earrings, mangalsutra, necklaces, pendants, rings to suit any occasion.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (11, N'The fleur line necklace', N'N03', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-10.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond Jewellery are unmatched in quality and style. Browse through our classic, elegant and high fashion bangles, bracelets, cufflinks, earrings, mangalsutra, necklaces, nose pins, pendants, rings to suit any occasion.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (12, N'The fulcia line necklace', N'N04', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-11.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Diamond Jewellery are unmatched in quality and style. Browse through our classic, elegant and high fashion bangles, bracelets, cufflinks, earrings, mangalsutra, necklaces, nose pins, pendants, rings to suit any occasion.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (13, N'The oria line necklace', N'N05', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-12.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Add a few or many precious and semiprecious stones to Floral Necklaces . Find an unrivaled selection of stunning Floral Necklaces available at the best and most competitive values in the industry today.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (14, N'The eye of evil necklace', N'N06', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-1.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Add a few or many precious and semiprecious stones to Floral Necklaces . Find an unrivaled selection of stunning Floral Necklaces available at the best and most competitive values in the industry today.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
INSERT [dbo].[Products] ([Id], [Name], [Code], [CategoryId], [OriginPrice], [SellPrice], [Quantity], [Status], [ManufactoryId], [BranchId], [CreateDate], [UpdateDate], [ImportDate], [FeatureImage], [ImageList], [IsActive], [Discount], [Description]) VALUES (15, N'The wish bone necklace', N'N07', 2, CAST(10.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 10, 1, 1, 1, CAST(N'2016-09-18T00:00:00.000' AS DateTime), CAST(N'2016-10-05T00:00:00.000' AS DateTime), CAST(N'2016-09-18T00:00:00.000' AS DateTime), N'product-3.jpg', N'single-1.jpg;single-2.jpg;single-3.jpg', 1, CAST(0.00 AS Decimal(18, 2)), N'Add a few or many precious and semiprecious stones to Floral Necklaces . Find an unrivaled selection of stunning Floral Necklaces available at the best and most competitive values in the industry today.

Prices are valid across India including all major cities - Delhi, Mumbai, Chennai, Bangalore, Hyderabad, Pune and kolkata for online purchases.')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductStatus] ON 

INSERT [dbo].[ProductStatus] ([Id], [Name], [Notes]) VALUES (1, N'In Stock', N'For sales')
INSERT [dbo].[ProductStatus] ([Id], [Name], [Notes]) VALUES (2, N'Out of stock', N'Orders first')
INSERT [dbo].[ProductStatus] ([Id], [Name], [Notes]) VALUES (3, N'Pre-order', N'Have to order')
INSERT [dbo].[ProductStatus] ([Id], [Name], [Notes]) VALUES (4, N'N/A', N'Not available')
INSERT [dbo].[ProductStatus] ([Id], [Name], [Notes]) VALUES (5, N'Special', N'Price and quantity')
SET IDENTITY_INSERT [dbo].[ProductStatus] OFF
/****** Object:  Index [PK__aspnet_A__C93A4C980D312211]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE40B42B94F]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__30910331E0D688DD]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4D99188DAA]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58DE436F14]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC06B88337AC]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1BA99D3942]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4D2697A2EF]    Script Date: 10/16/2016 12:41:14 AM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Customer_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Customer_Id] ON [dbo].[CustomerGroups]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerGroup]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerGroup] ON [dbo].[Customers]
(
	[CustomerGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerOrder_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerOrder_Id] ON [dbo].[Customers]
(
	[CustomerOrder_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Invoice_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Invoice_Id] ON [dbo].[Customers]
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Status]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Status] ON [dbo].[Customers]
(
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Customers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Users_Id] ON [dbo].[Customers]
(
	[Users_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Customer_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Customer_Id] ON [dbo].[CustomerStatus]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceId] ON [dbo].[InvoiceDetails]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[InvoiceDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerOrder_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerOrder_Id] ON [dbo].[OrderDetails]
(
	[CustomerOrder_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentCat]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentCat] ON [dbo].[ProductCategories]
(
	[ParentCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[ProductMetas]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BranchId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_BranchId] ON [dbo].[Products]
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ManufactoryId]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ManufactoryId] ON [dbo].[Products]
(
	[ManufactoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Status]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Status] ON [dbo].[Products]
(
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Customer_Id]    Script Date: 10/16/2016 12:41:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Customer_Id] ON [dbo].[Users]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[CustomerGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerGroups_dbo.Customers_Customer_Id] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CustomerGroups] CHECK CONSTRAINT [FK_dbo.CustomerGroups_dbo.Customers_Customer_Id]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.CustomerGroups_CustomerGroup] FOREIGN KEY([CustomerGroup])
REFERENCES [dbo].[CustomerGroups] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.CustomerGroups_CustomerGroup]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.CustomerOrders_CustomerOrder_Id] FOREIGN KEY([CustomerOrder_Id])
REFERENCES [dbo].[CustomerOrders] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.CustomerOrders_CustomerOrder_Id]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.CustomerStatus_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[CustomerStatus] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.CustomerStatus_Status]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Invoices_Invoice_Id] FOREIGN KEY([Invoice_Id])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Invoices_Invoice_Id]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customers_dbo.Users_Users_Id] FOREIGN KEY([Users_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_dbo.Customers_dbo.Users_Users_Id]
GO
ALTER TABLE [dbo].[CustomerStatus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CustomerStatus_dbo.Customers_Customer_Id] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CustomerStatus] CHECK CONSTRAINT [FK_dbo.CustomerStatus_dbo.Customers_Customer_Id]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvoiceDetails_dbo.Invoices_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_dbo.InvoiceDetails_dbo.Invoices_InvoiceId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvoiceDetails_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_dbo.InvoiceDetails_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.CustomerOrders_CustomerOrder_Id] FOREIGN KEY([CustomerOrder_Id])
REFERENCES [dbo].[CustomerOrders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.CustomerOrders_CustomerOrder_Id]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductCategories_dbo.ProductCategories_ParentCat] FOREIGN KEY([ParentCat])
REFERENCES [dbo].[ProductCategories] ([Id])
GO
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_dbo.ProductCategories_dbo.ProductCategories_ParentCat]
GO
ALTER TABLE [dbo].[ProductMetas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductMetas_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductMetas] CHECK CONSTRAINT [FK_dbo.ProductMetas_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductBranches_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[ProductBranches] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductBranches_BranchId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductCategories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductManufactories_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[ProductManufactories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductManufactories_Status]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductStatus_ManufactoryId] FOREIGN KEY([ManufactoryId])
REFERENCES [dbo].[ProductStatus] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductStatus_ManufactoryId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Customers_Customer_Id] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Customers_Customer_Id]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u WITH ( UPDLOCK, ROWLOCK ), dbo.aspnet_Membership m WITH ( UPDLOCK, ROWLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users WITH (ROWLOCK)
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 10/16/2016 12:41:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
USE [master]
GO
ALTER DATABASE [WebShop] SET  READ_WRITE 
GO
