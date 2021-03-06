USE [master]
GO
/****** Object:  Database [ProjectSem3DB]    Script Date: 6/4/2021 10:16:08 AM ******/
CREATE DATABASE [ProjectSem3DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectSem3DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectSem3DB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectSem3DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectSem3DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectSem3DB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectSem3DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectSem3DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectSem3DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectSem3DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectSem3DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectSem3DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectSem3DB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectSem3DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectSem3DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectSem3DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectSem3DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectSem3DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectSem3DB]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[About_Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [text] NULL,
	[Title] [text] NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[About_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ad_Package]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ad_Package](
	[Package_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_AdPackage] [text] NULL,
	[Period] [int] NULL,
	[Price] [money] NULL,
	[Description] [text] NULL,
	[StatusBuy] [bit] NULL,
	[PostNumber] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Ad_Package] PRIMARY KEY CLUSTERED 
(
	[Package_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/4/2021 10:16:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/4/2021 10:16:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/4/2021 10:16:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/4/2021 10:16:08 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/4/2021 10:16:08 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NULL,
	[isShow] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NULL,
	[Country_Id] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NULL,
	[Region_Id] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAQ](
	[FAQ_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[FAQ_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Image]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Image](
	[Image_Id] [int] IDENTITY(1,1) NOT NULL,
	[Property_Id] [int] NULL,
	[News_Id] [int] NULL,
	[Name] [varchar](250) NULL,
 CONSTRAINT [PK_Property_Image] PRIMARY KEY CLUSTERED 
(
	[Image_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Package_Id] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[Total] [money] NOT NULL,
	[Payment_Method] [varchar](250) NULL,
	[Payment_Card] [varchar](250) NULL,
	[Payment_Code] [varchar](250) NULL,
	[Member_Id] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mailbox]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mailbox](
	[Mail_Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[Message] [text] NULL,
	[Property_Id] [int] NULL,
	[isRead] [bit] NULL,
	[Time] [date] NULL,
	[Email] [varchar](250) NULL,
 CONSTRAINT [PK_Mailbox] PRIMARY KEY CLUSTERED 
(
	[Mail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[Member_Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [nvarchar](250) NOT NULL,
	[Position] [varchar](250) NULL,
	[Email] [varchar](250) NULL,
	[Role_Id] [nvarchar](450) NOT NULL,
	[Username] [varchar](250) NOT NULL,
	[FullName] [varchar](250) NULL,
	[Description] [varchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[Photo] [varchar](250) NULL,
	[Create_Date] [date] NOT NULL,
	[isShowMail] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member_Package_Detail]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Package_Detail](
	[M_P_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Package_Id] [int] NOT NULL,
	[Expiry_Date] [date] NULL,
 CONSTRAINT [PK_Member_Package_Detail] PRIMARY KEY CLUSTERED 
(
	[M_P_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[News_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](250) NULL,
	[Description] [text] NULL,
	[Category_Id] [int] NULL,
	[Created_Date] [date] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[News_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News_Category]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News_Category](
	[News_Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[isShow] [bit] NOT NULL,
 CONSTRAINT [PK_News_Category] PRIMARY KEY CLUSTERED 
(
	[News_Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Property]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Property](
	[Property_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[City_Id] [int] NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[GoogleMap] [text] NULL,
	[Price] [money] NOT NULL,
	[Bed_Number] [int] NOT NULL,
	[Room_Number] [int] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Area] [float] NOT NULL,
	[Sold_Date] [date] NULL,
	[Upload_Date] [date] NOT NULL,
	[Build_Year] [date] NULL,
	[Status_Id] [int] NOT NULL,
	[Category_Id] [int] NOT NULL,
	[Member_Id] [int] NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[Property_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Region_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Region_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Setting](
	[Setting_Id] [int] IDENTITY(1,1) NOT NULL,
	[NumTopProperty] [int] NULL,
	[NumPopularLocation] [int] NULL,
	[NumNews] [int] NULL,
	[NumPopularAgent] [int] NULL,
	[NumProperty] [int] NOT NULL,
	[NumMaxImageProperty] [int] NULL,
	[NumMaxImageNews] [int] NULL,
	[NumSatisfiedCustomer] [int] NULL,
	[Phone] [varchar](250) NULL,
	[Email] [varchar](250) NULL,
	[Address] [varchar](250) NULL,
	[Description] [text] NULL,
	[Services] [varchar](250) NULL,
	[AboutUsTitle] [varchar](250) NULL,
	[ThumbnailWebsite] [text] NULL,
	[ThumbnailAboutUs] [text] NULL,
	[ThumbnailHome] [text] NULL,
	[Reviews] [text] NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Setting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/4/2021 10:16:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AboutUs] ON 

INSERT [dbo].[AboutUs] ([About_Id], [Question], [Title], [Description]) VALUES (1, N'WHO WE ARE', N'The experts in local and international property', N'We have over 15 year experience, Over 20,000 people work for us in more than 70 countries all over the world. Learn more about our work! Lorem ipsum vive dolor sit amet.

Viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. Semper at tempufddfel lorem ipsum.')
SET IDENTITY_INSERT [dbo].[AboutUs] OFF
SET IDENTITY_INSERT [dbo].[Ad_Package] ON 

INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (1, N'Basic 1', 90, 59.0000, N'Advertising Package for private individuals. List your property for sale or rent. Get multilingual exposure. Target international investors. Advertisement publication period is 3 months (90 days).', 0, 5, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (2, N'Vip 1', 365, 99.0000, N'Advertising Package for private individuals. List your property for sale or rent. Get multilingual exposure. Target international investors. It allows to list the property for an Unlimited Period of time until it is sold or rented.', 1, 5, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (3, N'Basic 2', 90, 119.0000, N'Advertising package for Private individuals. List your property for sale or rent. Get multilingual exposure. Target international investors. Allow to publish 10 advertisements for period 3 months (90 days).1', 1, 10, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (4, N'Vip 2', 365, 159.0000, N'Advertising Package for Private individuals. List your property for sale or rent. Get multilingual exposure. Target international investors. It allows to list 10 properties offers for an Unlimited Period of time until they are sold or rented.', 1, 10, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (5, N'Plus 1', 60, 59.0000, N'Advertising package for Professionals & Companies allow to publish an unlimited number of ads within the limit of 2 ads simultaneously accessible to visitors during 2 months. Include professional & company presentation page listed in all multi-lingual real estate related companies international directory for Unlimited Time.', 1, 3, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (6, N'Plus Extra', 120, 99.0000, N'Advertising package for Professionals & Companies allow to publish an unlimited number of ads within the limit of 7 ads simultaneously accessible to visitors during 4 months. Include professional & company presentation page listed in all multi-lingual real estate related companies international directory for Unlimited Time.', 1, 6, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (7, N'Pro', 180, 139.0000, N'Advertising package for Professionals & Companies allow to publish an unlimited number of ads within the limit of 12 ads simultaneously accessible to visitors during 6 months. Include professional & company presentation page listed in all multi-lingual real estate related companies international directory for Unlimited Time.', 0, 9, 0)
INSERT [dbo].[Ad_Package] ([Package_Id], [Name_AdPackage], [Period], [Price], [Description], [StatusBuy], [PostNumber], [isDelete]) VALUES (10, N'testtttt', 100, 1000.0000, N'aaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, 12, 1)
SET IDENTITY_INSERT [dbo].[Ad_Package] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'Admin', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'SuperAdmin', N'SuperAdmin', N'SuperAdmin', N'SuperAdmin')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'User', N'User', N'User', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'25e04923-6142-4141-a33d-dafbac6102d2', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce6c43e2-f480-498d-b1f2-f942e88c13bb', N'SuperAdmin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd50858af-1fcb-4045-b59f-feb419a44f22', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dd1617df-0c6b-4111-8119-4c0f9c709364', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eaf78e06-54e0-46da-be8d-f0b8a5064334', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec40cc37-2754-442a-84e1-7eddc5b6ccf0', N'SuperAdmin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fb682263-5120-430d-9b55-037c1bb3a364', N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'25e04923-6142-4141-a33d-dafbac6102d2', N'thaisonbk2019', N'THAISONBK2019', N'thaisonbk2019@gmail.com', N'THAISONBK2019@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO6a+XcBvzoytxbdxpeb38XiumQZpLM7PIfqV4+5u4sxfGj/JkGyeqUN5u66GCvC8Q==', N'EUGBYTH7S4PUMAKJYAVZYBBJTNT62QWD', N'af007931-8890-417f-a543-d0f5c8070c83', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'ce6c43e2-f480-498d-b1f2-f942e88c13bb', N'thaisonbk2020', N'THAISONBK2020', N'thaisonbk2020@gmail.com', N'THAISONBK2020@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIXZGO3UqVwu9a46EZefWdVwGs+bZaQnEFJLTfa1wodYoVJUmKnEz5BkYQtlk/U6DA==', N'XOP2KHJ6MNX32HS3RNU4OJPR2KRE5DHC', N'f7758377-9097-43e8-ae38-55afb5a8afa4', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'd50858af-1fcb-4045-b59f-feb419a44f22', N'customer1000', N'CUSTOMER1000', N'ntannh.vn@gmail.com', N'NTANNH.VN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOa3Z566TJ67r4k9RqlMjKWY/rY6SaPxAN20SQ0AKnkYb+9YHB4VsSFxUooOAN92RA==', N'3NCBKOKMAAHLRC5ANFGTKL7Y2K46YY36', N'55b7d04d-f54c-49a1-9ceb-12fe3cad8f07', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'dd1617df-0c6b-4111-8119-4c0f9c709364', N'viettestdemo', N'VIETTESTDEMO', N'viettestdemo@gmail.com', N'VIETTESTDEMO@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELbVcwgl2uI3H+eCKfbZZ8Di//yIEFtpqy5tdEjcTBJylyPoBDvfeGfQO0jQ/sncyA==', N'FJLHFZHYMOC5VXQQQPAZT33ROIXZ3NMJ', N'd89d947f-ac88-472f-a23d-e5cac1f93b52', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'eaf78e06-54e0-46da-be8d-f0b8a5064334', N'vietnguyen', N'VIETNGUYEN', N'vietnguyen0444@gmail.com', N'VIETNGUYEN0444@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEI/DAxa3GOGbLtg+0HnEKnyyoelFQCp1UwaHWADL30B6EKD2keX+xqxlu9r+wWp5bA==', N'QMWJ5XSSUMGYSFXID3XTK2BJ6J2YPQSC', N'e003b827-b130-4d76-b5fa-485f3ca8ca09', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'ec40cc37-2754-442a-84e1-7eddc5b6ccf0', N'manager', N'MANAGER', N'manager@mail.com', N'MANAGER@MAIL.COM', 1, N'AQAAAAEAACcQAAAAEBhtvhpZocy3dsIulseC1GgKCWUCz7FA4a2l2QwZ00seKBy2Dw63zJOttzzzRJEy+w==', N'4SSTRCSTOE3WYNFXFVCDX3VK5HGCGJFT', N'606b6ad9-0558-4bf4-ba28-a0ef1c544bf0', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'fb682263-5120-430d-9b55-037c1bb3a364', N'agentpham', N'AGENTPHAM', N'AgentPham@gmail.com', N'AGENTPHAM@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBe0JzlVwGizBaHzj22bPpjPIOQnk3EW6FNNIro+eWpTa5NitiKkZl/IWv3GoMZJwg==', N'OJTC5E5IDWMZOENR5LZGHQLJOWXB5YK5', N'82f75169-094c-4380-bda5-37d84708ea58', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (1, N'Office Space', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (2, N'Shops', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (3, N'Commercial Land', 0)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (4, N'Industrial', 0)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (5, N'House', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (6, N'Apartments', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (7, N'Villas', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (8, N'Businesses for Sale', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (9, N'Rent and Lease', 1)
INSERT [dbo].[Category] ([Category_Id], [Name], [isShow]) VALUES (10, N'new property category', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (1, N'Ho Chi Minh City', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (2, N'Hanoi', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (3, N'Haiphong', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (4, N'Can Tho', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (5, N'Bien Hoa', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (6, N'Quang Ha', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (7, N'Bac Ninh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (8, N'Hai Duong', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (9, N'Vinh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (10, N'Hue', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (11, N'Thanh Hoa', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (12, N'Nha Trang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (13, N'Nam Dinh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (14, N'Buon Ma Thuot', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (15, N'Thai Nguyen', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (16, N'Vung Tau', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (17, N'Ca Mau', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (18, N'Quy Nhon', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (19, N'Soc Trang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (20, N'Long Xuyen', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (21, N'Viet Tri', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (22, N'Thai Binh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (23, N'Quang Ngai', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (24, N'Ap Da Loi', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (25, N'Rach Gia', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (26, N'Thu Dau Mot', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (27, N'Tuy Hoa', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (28, N'Bac Lieu', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (29, N'Sa Dec', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (30, N'Phan Thiet', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (31, N'Son Tay', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (32, N'Phan Rang-Thap Cham', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (33, N'Ha Long', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (34, N'Ha Tinh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (35, N'Dong Hoi', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (36, N'Chau Doc', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (37, N'Cam Pha', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (38, N'Cao Lanh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (39, N'Lang Son', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (40, N'Cam Ranh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (41, N'Pleiku', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (42, N'Tan An', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (43, N'Tra Vinh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (44, N'Ninh Binh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (45, N'My Tho', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (46, N'Tay Ninh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (47, N'Cam Ranh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (48, N'Hoi An', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (49, N'Hoa Binh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (50, N'Vinh Long', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (51, N'Yen Bai', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (52, N'Vi Thanh', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (53, N'Quang Tri', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (54, N'Lao Cai', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (55, N'Ben Tre', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (56, N'Bac Giang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (57, N'Cao Bang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (58, N'Ha Giang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (59, N'Tuyen Quang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (60, N'Bac Kan', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (61, N'Son La', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (62, N'Dong Ha', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (63, N'Da Nang', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (64, N'Hung Yen', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (65, N'Phu Ly', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (66, N'Vinh Yen', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (67, N'Tam Ky', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (68, N'Dien Bien Phu', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (69, N'Dong Xoai', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (70, N'Da Lat', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (71, N'Lai Chau', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (72, N'Kon Tum', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (73, N'Gia Nghia', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (74, N'Phu Quoc', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (75, N'Binh Long', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (76, N'Luan Chau', 1)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (77, N'Tokyo', 4)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (78, N'Kyoto', 4)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (79, N'Osaka', 4)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (80, N'New York', 3)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (81, N'Califonia', 3)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (82, N'Seoul', 2)
INSERT [dbo].[City] ([City_Id], [Name], [Country_Id]) VALUES (83, N'GangNam', 2)
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Country_Id], [Name], [Region_Id]) VALUES (1, N'VietNam', 1)
INSERT [dbo].[Country] ([Country_Id], [Name], [Region_Id]) VALUES (2, N'South Korea', 1)
INSERT [dbo].[Country] ([Country_Id], [Name], [Region_Id]) VALUES (3, N'America', 3)
INSERT [dbo].[Country] ([Country_Id], [Name], [Region_Id]) VALUES (4, N'Japan', 1)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[FAQ] ON 

INSERT [dbo].[FAQ] ([FAQ_Id], [Title], [Description]) VALUES (1, N'How can I build equity into my house?', N'You can build equity in three ways. First (and easiest) is from market appreciation. Second, when making your monthly mortgage payment, try to send a little bit more. This will go directly to the principal of the loan, rather than the interest. Be sure your lender knows to put the extra toward principal, and not the next month’s payment. Even an extra $50 per month can quickly build equity, as well as knock years off of your loan.')
INSERT [dbo].[FAQ] ([FAQ_Id], [Title], [Description]) VALUES (3, N'What are home inspections?', N'When purchasing a home, it is important to perform a thorough assessment of the home’s structure, equipment, and surroundings. Real estate purchase contracts provide appropriate language to protect buyers from purchasing a structurally unsound home, while at the same time protecting sellers from liability. An inspection can be made by an inspection service company, or a buyer may choose to inspect the home him or herself.')
INSERT [dbo].[FAQ] ([FAQ_Id], [Title], [Description]) VALUES (4, N'What are prepayment penalties?', N'A prepayment penalty is a penalty fee charged to the borrower for paying off a mortgage early, thus allowing banks (or owners, if they do the financing) to still make money off of the loan. Most loans these days do not have prepayment penalties, but it is advisable to check into this before signing any loan paperwork.')
INSERT [dbo].[FAQ] ([FAQ_Id], [Title], [Description]) VALUES (5, N'What is Homeowners Insurance?', N'Also known as “hazard insurance”, homeowners insurance covers losses caused by fire, hailstorms, or other casualty on the property. Lenders usually require the buyer to have insurance in an amount equal to or greater than the loan amount. Flood insurance is required by the lender if the property is in a flood hazard area/flood plain. Condominiums and townhomes are somewhat different, as certain items may be covered by the homeowner’s association fees.')
INSERT [dbo].[FAQ] ([FAQ_Id], [Title], [Description]) VALUES (6, N'What is meant by a debt-to-income ratio?', N'A debt-to-income ratio is important to your lender. To figure out where you stand on the ratio, you must first understand the meaning of the figure. Lenders use various ratios, but the most common is 28/36. The first number, (also known as the front-end-ratio) is the percentage of your gross monthly income that you could comfortably afford to spend on your housing payment. This figure includes escrow for taxes and insurance. The second number, (also known as the back-end-ratio) is the percentage of your gross monthly income that should be spent on all long-term monthly debts combined.')
INSERT [dbo].[FAQ] ([FAQ_Id], [Title], [Description]) VALUES (7, N'What are closing costs?', N'Closing costs are expenses incurred by buyers and sellers when the ownership of the property is transferred. These are usually negotiable items as to who will be responsible for their payment. Examples of closing costs include recording fees, documentary fees, real estate commission, taxes prorations, settlement fees, and title insurance.')
SET IDENTITY_INSERT [dbo].[FAQ] OFF
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (22, NULL, 7, N'02062021144441Ashampoo_Snap_2021.06.02_14h43m53s_004_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (23, NULL, 7, N'02062021144441Ashampoo_Snap_2021.06.02_14h43m26s_001_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (25, NULL, 7, N'02062021144441Ashampoo_Snap_2021.06.02_14h44m22s_005_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (26, NULL, 7, N'02062021144441Ashampoo_Snap_2021.06.02_14h43m43s_003_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (27, NULL, 7, N'02062021144606Ashampoo_Snap_2021.06.02_14h43m37s_002_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (28, NULL, 8, N'02062021150217Ashampoo_Snap_2021.06.02_15h01m30s_009_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (29, NULL, 8, N'02062021150217Ashampoo_Snap_2021.06.02_15h01m22s_008_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (30, NULL, 8, N'02062021150217Ashampoo_Snap_2021.06.02_15h00m48s_007_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (31, NULL, 8, N'02062021150217Ashampoo_Snap_2021.06.02_15h00m24s_006_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (32, NULL, 9, N'02062021150617Ashampoo_Snap_2021.06.02_15h05m35s_013_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (33, NULL, 9, N'02062021150617Ashampoo_Snap_2021.06.02_15h05m15s_011_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (34, NULL, 9, N'02062021150617Ashampoo_Snap_2021.06.02_15h04m52s_010_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (35, NULL, 9, N'02062021150617Ashampoo_Snap_2021.06.02_15h05m56s_014_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (36, NULL, 9, N'02062021150618Ashampoo_Snap_2021.06.02_15h05m27s_012_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (37, NULL, 10, N'02062021151026Ashampoo_Snap_2021.06.02_15h10m01s_018_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (38, NULL, 10, N'02062021151026Ashampoo_Snap_2021.06.02_15h09m44s_016_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (39, NULL, 10, N'02062021151026Ashampoo_Snap_2021.06.02_15h10m06s_019_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (40, NULL, 10, N'02062021151026Ashampoo_Snap_2021.06.02_15h09m07s_015_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (41, NULL, 10, N'02062021151026Ashampoo_Snap_2021.06.02_15h09m57s_017_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (42, NULL, 11, N'02062021151314Ashampoo_Snap_2021.06.02_15h12m11s_020_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (43, NULL, 11, N'02062021151314Ashampoo_Snap_2021.06.02_15h12m55s_023_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (44, NULL, 11, N'02062021151314Ashampoo_Snap_2021.06.02_15h12m34s_022_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (45, NULL, 11, N'02062021151314Ashampoo_Snap_2021.06.02_15h12m28s_021_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (46, NULL, 12, N'02062021151531Ashampoo_Snap_2021.06.02_15h14m51s_025_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (47, NULL, 12, N'02062021151531Ashampoo_Snap_2021.06.02_15h15m01s_026_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (48, NULL, 12, N'02062021151531Ashampoo_Snap_2021.06.02_15h14m42s_024_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (49, NULL, 12, N'02062021151531Ashampoo_Snap_2021.06.02_15h15m09s_027_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (50, NULL, 13, N'02062021151858Ashampoo_Snap_2021.06.02_15h18m18s_029_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (51, NULL, 13, N'02062021151858Ashampoo_Snap_2021.06.02_15h18m39s_031_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (52, NULL, 13, N'02062021151858Ashampoo_Snap_2021.06.02_15h18m07s_028_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (53, NULL, 13, N'02062021151858Ashampoo_Snap_2021.06.02_15h18m25s_030_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (54, NULL, 14, N'02062021152130Ashampoo_Snap_2021.06.02_15h20m26s_033_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (55, NULL, 14, N'02062021152130Ashampoo_Snap_2021.06.02_15h20m13s_032_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (56, NULL, 14, N'02062021152130Ashampoo_Snap_2021.06.02_15h20m39s_034_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (57, NULL, 15, N'02062021152539Ashampoo_Snap_2021.06.02_15h23m45s_035_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (58, NULL, 15, N'02062021152539Ashampoo_Snap_2021.06.02_15h25m01s_037_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (59, NULL, 15, N'02062021152539Ashampoo_Snap_2021.06.02_15h25m10s_038_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (60, NULL, 15, N'02062021152539Ashampoo_Snap_2021.06.02_15h25m21s_039_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (61, NULL, 16, N'02062021152930Ashampoo_Snap_2021.06.02_15h29m14s_044_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (62, NULL, 16, N'02062021152930Ashampoo_Snap_2021.06.02_15h28m22s_040_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (63, NULL, 16, N'02062021152930Ashampoo_Snap_2021.06.02_15h28m38s_041_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (64, NULL, 16, N'02062021152930Ashampoo_Snap_2021.06.02_15h28m57s_042_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (65, NULL, 16, N'02062021152930Ashampoo_Snap_2021.06.02_15h29m06s_043_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (66, NULL, 17, N'02062021153236Ashampoo_Snap_2021.06.02_15h32m22s_050_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (67, NULL, 17, N'02062021153236Ashampoo_Snap_2021.06.02_15h31m45s_046_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (68, NULL, 17, N'02062021153236Ashampoo_Snap_2021.06.02_15h31m19s_045_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (69, NULL, 17, N'02062021153236Ashampoo_Snap_2021.06.02_15h31m51s_047_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (70, NULL, 17, N'02062021153236Ashampoo_Snap_2021.06.02_15h32m13s_049_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (71, NULL, 17, N'02062021153236Ashampoo_Snap_2021.06.02_15h32m05s_048_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (72, NULL, 18, N'02062021153534Ashampoo_Snap_2021.06.02_15h34m36s_053_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (73, NULL, 18, N'02062021153534Ashampoo_Snap_2021.06.02_15h34m10s_051_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (74, NULL, 18, N'02062021153534Ashampoo_Snap_2021.06.02_15h34m31s_052_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (75, NULL, 18, N'02062021153534Ashampoo_Snap_2021.06.02_15h34m43s_054_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (76, NULL, 18, N'02062021153534Ashampoo_Snap_2021.06.02_15h35m17s_056_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (77, NULL, 18, N'02062021153535Ashampoo_Snap_2021.06.02_15h35m01s_055_.png')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (79, 40, NULL, N'03062021170434pexels-jason-boyd-3209045.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (80, 40, NULL, N'03062021170434pexels-naim-benjelloun-2029694.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (81, 40, NULL, N'03062021170434pexels-curtis-adams-3288100.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (82, 40, NULL, N'03062021170434pexels-curtis-adams-3288103.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (83, 40, NULL, N'03062021170434pexels-binyamin-mellish-1396132.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (84, 41, NULL, N'03062021170541pexels-pixabay-164558.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (85, 41, NULL, N'03062021170541pexels-tamil-king-3214064.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (86, 41, NULL, N'03062021170541pexels-vecislavas-popa-1571470.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (87, 41, NULL, N'03062021170541pexels-pixabay-210617.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (88, 41, NULL, N'03062021170541pexels-tamil-king-5043866.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (110, 28, NULL, N'02062021015404pexels-curtis-adams-3288100.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (111, 28, NULL, N'02062021015404pexels-curtis-adams-3288102.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (112, 29, NULL, N'02062021015932pexels-jason-boyd-3209045.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (113, 29, NULL, N'02062021015932pexels-naim-benjelloun-2029694.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (114, 29, NULL, N'02062021015932pexels-jason-boyd-3209035.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (115, 29, NULL, N'02062021015932pexels-binyamin-mellish-1396122.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (116, 29, NULL, N'02062021015932pexels-pixabay-210617.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (117, 32, NULL, N'02062021020233pexels-vecislavas-popa-1571470.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (118, 32, NULL, N'02062021020233pexels-pixabay-164558.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (119, 32, NULL, N'02062021020233pexels-tamil-king-3214064.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (120, 32, NULL, N'02062021020233pexels-tamil-king-5043866.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (121, 32, NULL, N'02062021020233pexels-pixabay-210617.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (122, 37, NULL, N'02062021020612pexels-tamil-king-3214064.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (123, 37, NULL, N'02062021020612pexels-curtis-adams-3288102.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (124, 37, NULL, N'02062021020612pexels-curtis-adams-3288104.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (125, 37, NULL, N'02062021020612pexels-jason-boyd-3209045.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (126, 37, NULL, N'02062021020612pexels-tamil-king-5043840.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (127, 31, NULL, N'02062021090226pexels-jason-boyd-3209035.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (128, 31, NULL, N'02062021090226pexels-curtis-adams-3288104.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (129, 31, NULL, N'02062021090226pexels-tamil-king-5043840.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (130, 31, NULL, N'02062021090227pexels-curtis-adams-3935333.jpg')
INSERT [dbo].[Image] ([Image_Id], [Property_Id], [News_Id], [Name]) VALUES (131, 31, NULL, N'02062021090227pexels-tamil-king-5043866.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Invoice_Id], [Name], [Package_Id], [Created], [Total], [Payment_Method], [Payment_Card], [Payment_Code], [Member_Id]) VALUES (4, N'viet nguyen', 6, CAST(N'2021-06-03' AS Date), 99.0000, N'paypal', N'GLTNKEGRSDUWQ', N'PAYID-MC4OB7I5TK10619PG724982W', 29)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
SET IDENTITY_INSERT [dbo].[Mailbox] ON 

INSERT [dbo].[Mailbox] ([Mail_Id], [FullName], [Phone], [Message], [Property_Id], [isRead], [Time], [Email]) VALUES (1, N'Lucas', N'0564354545', N'I want to take more information of this property', NULL, 1, CAST(N'2021-05-05' AS Date), N'thisismymail@gmail.com')
INSERT [dbo].[Mailbox] ([Mail_Id], [FullName], [Phone], [Message], [Property_Id], [isRead], [Time], [Email]) VALUES (2, N'John', N'0146578614', N'i want that too', NULL, 1, CAST(N'2021-10-15' AS Date), N'notmymail@gmail.com')
INSERT [dbo].[Mailbox] ([Mail_Id], [FullName], [Phone], [Message], [Property_Id], [isRead], [Time], [Email]) VALUES (3, N'my name', N'0156454454', N'We need to talk', NULL, 1, CAST(N'2021-06-03' AS Date), N'thaisonbk2020@gmail.com')
INSERT [dbo].[Mailbox] ([Mail_Id], [FullName], [Phone], [Message], [Property_Id], [isRead], [Time], [Email]) VALUES (4, N'viettest', N'04876874564', N'okokoko', NULL, 0, CAST(N'2021-06-03' AS Date), N'thaisonbk2020@gmail.com')
INSERT [dbo].[Mailbox] ([Mail_Id], [FullName], [Phone], [Message], [Property_Id], [isRead], [Time], [Email]) VALUES (5, N'my name', N'01654654457', N'my name', 29, 0, CAST(N'2021-06-04' AS Date), N'thaisonbk2020@gmail.com')
SET IDENTITY_INSERT [dbo].[Mailbox] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (12, N'dd1617df-0c6b-4111-8119-4c0f9c709364', N'Private Seller', N'viettestdemo@gmail.com', N'Admin', N'viettestdemo', N'viettest', NULL, NULL, 1, N'avatar.png', CAST(N'2021-05-31' AS Date), 1)
INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (14, N'fb682263-5120-430d-9b55-037c1bb3a364', N'Agent', N'AgentPham@gmail.com', N'Admin', N'agentpham', N'agentPham', NULL, NULL, 1, N'avatar.png', CAST(N'2021-05-05' AS Date), 1)
INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (21, N'ec40cc37-2754-442a-84e1-7eddc5b6ccf0', N'', N'manager@mail.com', N'SuperAdmin', N'manager', N'manager', N'test', NULL, 1, N'avatar.png', CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (27, N'eaf78e06-54e0-46da-be8d-f0b8a5064334', N'Agent', N'vietnguyen0444@gmail.com', N'Admin', N'vietnguyen', N'vietnguyen', NULL, NULL, 1, N'avatar.png', CAST(N'2021-06-03' AS Date), 1)
INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (28, N'ce6c43e2-f480-498d-b1f2-f942e88c13bb', N'Agent', N'thaisonbk2020@gmail.com', N'SuperAdmin', N'thaisonbk2020', N'Luke Reeder', N'With over 20 years of sales experience, I began my real estate career in 2000. I am a 
Luxury Relocation Specialist focusing on working with the buyer and seller who need the
best service available to make a smooth transition from one community to the next.
', N'054878784848', 1, N'03062021183402Ashampoo_Snap_2021.06.03_12h57m24s_003_.png', CAST(N'2021-06-03' AS Date), 1)
INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (29, N'25e04923-6142-4141-a33d-dafbac6102d2', N'Agent', N'thaisonbk2019@gmail.com', N'Admin', N'thaisonbk2019', N'Sign Up', N'dasdadadasdas', N'05165465454', 1, N'avatar.png', CAST(N'2021-06-03' AS Date), 1)
INSERT [dbo].[Member] ([Member_Id], [AccountId], [Position], [Email], [Role_Id], [Username], [FullName], [Description], [Phone], [Status], [Photo], [Create_Date], [isShowMail]) VALUES (30, N'd50858af-1fcb-4045-b59f-feb419a44f22', N'Customer', N'ntannh.vn@gmail.com', N'User', N'customer1000', N'Sign Up', NULL, NULL, 1, N'avatar.png', CAST(N'2021-06-04' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Member_Package_Detail] ON 

INSERT [dbo].[Member_Package_Detail] ([M_P_Detail_Id], [Member_Id], [Package_Id], [Expiry_Date]) VALUES (3, 29, 6, CAST(N'2021-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Member_Package_Detail] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (7, N'Home Inspections: How They Can Benefit Home Buyers and Sellers', N'<h3 style="box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: #252525; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: #ffffff;"><span style="color: #000000;">Aenean egestas porta tristique</span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">In dictum velit tortor, sit amet commodo urna consectetur eget. Vivamus non nibh sapien. Praesent dui ante, cursus eget risus vel, pulvinar male suada nisi. Aenean pulvinar diam nisi, sit amet maximus diam accumsan sed. Aenean viverra maximus libero. Ut in risus orci.</span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">Nam ipsum lorem, bibendum vel bibendum ac, dictum non metus. Fusce dictum libero dui, non tempus dui imperdiet a. Donec fermentum sapien velit, eu porta turpis scelerisque eget. Donec dictum nisl a venenatis finibus. Aliquam ut urna quis est tincidunt scelerisque. Integer eu viverra ante, vel auctor lectus. <span class="bold">Vivamus id<span style="box-sizing: border-box;">&nbsp;convallis nulla</span>. Etiam at dictum enim.</span></span></p>
<blockquote>
<p style="box-sizing: border-box; margin: 0px; quotes: ''&ldquo;'' ''&rdquo;'' ''&lsquo;'' ''&rsquo;'';"><span style="color: #000000;">Quisque pretium tincidunt viverra. Donec sit amet odio sed sem rhoncus accumsan non sed ante. Vestibulum aliquet ac erat a aliquet. Aliquam laoreet viverra dapibus.</span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">Etiam ut leo sodales, tincidunt sapien ut, eleifend dui. Nulla facilisi. Suspendisse potenti. Vestibulum efficitur mauris et libero accumsan sagittis. Nunc sed faucibus tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</span></p>
</blockquote>
<h3 style="box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: #252525; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: #ffffff;"><span style="color: #000000;">Proin tincidunt ornare pellentesque.</span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">Praesent et feugiat quam. Sed congue velit et hendrerit sollicitudin. Pellentesque hendrerit at sem vel tristique. Fusce in rhoncus neque, nec tempus justo. Sed non faucibus ante.</span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">Nullam semper diam libero, quis eleifend est imperdiet a. Fusce nulla nibh, volutpat ut hendrerit vel, auctor in urna. Etiam&nbsp;<span style="box-sizing: border-box;">tincidunt et felis a posuere</span>. Etiam ac consectetur mauris, sit amet mattis justo rhoncus egestas erat. Vivamus non nibh sapien. Praesent dui ante, cursus eget risus vel, pulvinar malesuada nisi. Aenean pulvinar diam nisi, sit amet maximus diam accumsan sed.</span></p>
<h3 style="box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-weight: 300; line-height: 1.1; color: #252525; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: #ffffff;"><span style="color: #000000;">Praesent cursus</span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">Enim augue, sit amet semper nisi tempus et. Nunc vehicula orci eu imperdiet sollicitudin. Vestibulum at scelerisque odio, nec rhoncus sapien. Mauris dapibus auctor eros, nec elementum dolor ornare non. Etiam euismod elit a neque consequat, non efficitur ante aliquet.<span class="bold"> Quisque pretium tincidunt viverra.</span></span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #959595; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><span style="color: #000000;">Etiam ut leo sodales, tincidunt sapien ut, eleifend dui. Nulla facilisi. Suspendisse potenti. Vestibulum efficitur mauris et libero accumsan sagittis. Nunc sed faucibus tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</span></p>', 16, CAST(N'2021-06-02' AS Date), N'draft')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (8, N'U.S. Home Prices Surge, Scaring Off Some Potential Buyers', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">U.S. home prices rose nearly everywhere in the first quarter, a rapid price appreciation that shows little sign of fading soon with limited housing inventory and robust demand.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The median sales price for existing single-family homes was higher in the quarter compared with a year earlier for 182 of the 183 metro areas tracked by the National Association of Realtors, the group said Tuesday. In 89% of those metro areas, median prices rose by more than 10% from a year earlier.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">This week&rsquo;s price data was the latest confirmation that the pandemic continues to reshape how and where many Americans want to live. Remote work prompted buyers to seek out more space, while pandemic-related restrictions made vacation houses more desirable, real-estate agents said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/articles/the-pandemic-ignited-a-housing-boombut-its-different-from-the-last-one-11615824558?mod=realtor" target="_blank" rel="noopener noreferrer">housing boom has been unusually widespread</a>, with low mortgage rates fueling strong buyer interest across the U.S., especially for high-end properties.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">But first-time buyers in particular have struggled to keep up with soaring prices, and those with limited budgets are often losing out to cash buyers. The&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/articles/housing-market-stays-tight-as-homeowners-stay-put-11611226802?mod=realtor" target="_blank" rel="noopener noreferrer">length of time U.S. homeowners stay put</a>, meanwhile, has been steadily rising. Some have decided not to move, or they postponed selling because of concerns about letting buyers into their homes during a pandemic.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/articles/u-s-housing-market-is-nearly-4-million-homes-short-of-buyer-demand-11618484400?mod=realtor" target="_blank" rel="noopener noreferrer">shortage of homes on the market</a>&nbsp;is affecting home shoppers around the country. The number of active listings on Realtor.com was down 52% from a year earlier in the week ended May 1. (&nbsp;<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/market-data/quotes/NWS?mod=realtor">News Corp</a>,&nbsp;parent of The Wall Street Journal, operates Realtor.com.)</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;The record-high home prices are happening across nearly all markets, big and small, even in those metros that have long been considered off the radar in prior years for many home seekers,&rdquo; said Lawrence Yun, NAR&rsquo;s chief economist.</p>
</div>', 17, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (9, N'Home-Builder Confidence Remains Strong, but Buyers Should Expect Rising Prices', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">The numbers:</span>&nbsp;Despite a multitude of factors making construction more challenging, home builders remained confident in the state of the housing market, according to an industry trade group.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The National Association of Home Builders&rsquo;&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.nahb.org/news-and-economics/housing-economics/indices/Housing-Market-Index" rel="noopener noreferrer">monthly confidence index</a>&nbsp;held steady at a reading of 83 in May, the trade group said Monday.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Index readings over 50 are a sign of improving confidence. A year ago, the onset of the pandemic caused the index to drop below 50 in April and May, but confidence quickly rebounded as many Americans opted to resume their search for a new home last summer.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Low interest rates are supporting housing affordability in a market where the cost of most materials is rising,&rdquo; said Robert Dietz, chief economist for the National Association of Home Builders (NAHB), in the report.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">What happened:&nbsp;</span>Of the three underlying components to the broader monthly report, the gauge of builders&rsquo; expectations for home sales in the next six months improved. The index measuring builders&rsquo; attitudes toward current sales conditions remained the same, while the component that measures traffic of prospective buyers decreased slightly.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">On a regional basis, builder confidence improved in the South and held steady in the West, but decreased in the Northeast and Midwest to the lowest levels since August.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">The big picture:&nbsp;</span>The lack of existing homes for sale and the continuation of the low-rate environment are supporting interest in the market for new homes. But buyers and builders alike are facing price pressure that could complicate the feasibility of sales.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The aggregate material costs for home construction are up 12% compared to a year ago, and builders have indicated that they expect prices to move even higher. The short supply of lumber and steel used to construct homes is a major driver of these higher material costs, in particular.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Builders also face challenges in securing lots and labor in many markets, the NAHB warned. &ldquo;Some builders are slowing sales to manage their own supply-chains, which means growing affordability challenges for a market in critical need of more inventory,&rdquo; Dietz said, adding that buyers should expect rising prices.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">What they&rsquo;re saying: &ldquo;The trend in homebuilding should remain upward due to rising employment, still-low interest rates, and a record-low supply of available&nbsp;homes&nbsp;in the resale market,&rdquo; said Sal Guatieri, senior economist at BMO Capital Markets, in a research note.</p>
<blockquote>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">Market reaction:</span>&nbsp;While the Dow Jones Industrial Average&nbsp;and the S&amp;P 500 moved lower Monday morning, home builder stocks, including Lennar Corp.,&nbsp;&nbsp;Toll Brothers Inc.,&nbsp;&nbsp;D.R. Horton Inc.&nbsp; and PulteGroup Inc.,&nbsp;&nbsp;saw larger declines immediately after the report&rsquo;s release.</p>
</blockquote>
</div>', 18, CAST(N'2021-06-02' AS Date), N'draft')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (10, N'The Mortgage Boom Is Fading', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">The housing market is as hot as ever. The mortgage market, though, is losing steam.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Homes are selling at a blistering pace unseen since before the financial crisis,&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/articles/the-housing-market-is-crazier-than-its-been-since-2006-11617422403?mod=realtor" rel="noopener noreferrer">pushing up home values</a>&nbsp;in nearly every U.S. ZIP Code. Yet lenders are preparing for mortgage demand to cool in the coming months, the result of rising interest rates that make refinancing less attractive for a huge chunk of borrowers.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The anticipated decline in mortgage volume is setting off price wars across the industry. That is driving down profit margins and spooking the shareholders of mortgage firms that went public closer to the height of the lending boom.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><a style="box-sizing: border-box; background-color: transparent; outline: 0px; color: #3377cc !important;" href="https://www.wsj.com/market-data/quotes/RKT?mod=realtor">Rocket</a>&nbsp;Cos., the parent of Quicken Loans, said last week that it expects its gain-on-sale margin, a measure of how much lenders earn when they sell loans, to decline in the second quarter. The profit margin would be the company&rsquo;s narrowest since before the mortgage boom. The forecast drove shares of several nonbank lenders to double-digit losses last week, analysts said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;The message from all the companies that have reported financials publicly is that competition has increased significantly,&rdquo; said Guy Cecala, chief executive of Inside Mortgage Finance.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Last year was a banner one for the mortgage business. Lenders originated a record $3.83 trillion in home loans in 2020, according to the Mortgage Bankers Association.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Mortgage rates that dipped below 3% for the first time and changes in the ways Americans work and live pushed up demand for both refinancings and purchase loans to levels that&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/articles/lenders-are-deluged-with-refinance-requests-as-coronavirus-sends-rates-lower-11584351003?mod=realtor" rel="noopener noreferrer">strained many lenders</a>. To stem the influx of applications, lenders raised rates. But their own borrowing costs stood still. Profit margins rose sharply.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">This year, total originations are expected to fall to $3.3 trillion, a 14.2% decline. Still, at that level, 2021 would rank among the best years on record.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;This year is still expected to be a great year, probably the second-best year in history,&rdquo; said KBW analyst Bose George. &ldquo;But it&rsquo;s just that directionally, [mortgage volume] is going down.&rdquo;</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">A drop in refinancing activity is a big reason why. With the 30-year mortgage rate near 2.97%, about 14.5 million Americans could lower their monthly mortgage payments through a refinancing, according to mortgage-data firm&nbsp;<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/market-data/quotes/BKI?mod=realtor">Black Knight</a>&nbsp;Inc. That is down from 18.7 million near the start of the year, when mortgage rates reached a record low of 2.65%.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Still, the good news for borrowers is that lenders are now vying for customers by lowering the rates they charge.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">That translates into lower profits for lenders. When lenders make mortgages cheaper, the gap between the rate they charge for the loan and how much it costs them to make it shrinks. Loans with smaller gaps are worth less when sold to investors in the secondary market. That reduces the gain-on-sale margin, or the amount lenders earn on each loan they sell.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Competition among lenders in the wholesale mortgage channel, where borrowers secure loans through individual mortgage brokers instead of banks or nonbank mortgage lenders directly, is driving much of the decline in lending margins, analysts said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Lenders that extend mortgages directly to borrowers are under less pressure. Lenders in the retail channel, as it is known, tend to have higher margins than their wholesale counterparts because they don&rsquo;t share the gains with brokers.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Rocket reported a margin of 3.74% in the first three months of the year, down from 4.41% in the fourth quarter of 2020. It also said it expects the measure to fall to a range between 2.65% and 2.95% in the second quarter.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;We&rsquo;re kind of back to some of the historical longer-term margins that we&rsquo;ve experienced, which on our platform are still very profitable,&rdquo; Rocket Chief Executive Jay Farner said during a call with analysts.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Rocket&rsquo;s stock price fell nearly 17% to $19.01 the day after the company&rsquo;s earnings report.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Shares of&nbsp;<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.wsj.com/market-data/quotes/UWMC?mod=realtor">UWM Holdings</a>&nbsp;Corp.&nbsp;closed at a record low last week after Rocket&rsquo;s earnings. UWM, the country&rsquo;s largest wholesale lender, reports first-quarter results Monday.</p>
</div>', 19, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (11, N'Most Americans Now Believe It’s a Good Time To Buy a Home, Despite Soaring House Prices—Here’s Why', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Despite skyrocketing home prices, a majority of Americans believe now is a good time to buy a home, according to a new survey from Gallup.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Some 53% of Americans believe it is a good time to buy,&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://news.gallup.com/poll/349607/americans-expect-home-prices-rise-divided-buying.aspx" rel="noopener noreferrer">Gallup reported Tuesday</a>, citing the results of a survey of nearly 1,000 U.S. adults conducted in April.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Last year,&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.marketwatch.com/story/gallup-only-50-of-americans-believe-its-a-good-time-to-buy-a-home-2020-04-24?mod=realtor" rel="noopener noreferrer">only 50% of people</a>&nbsp;felt this way, marking a record low since Gallup began tracking Americans&rsquo; sentiment on the housing market in the 1970s</p>
<blockquote style="box-sizing: border-box; padding: 0px 14px; margin: 0px 0px 20px 24px; font-size: 17.5px; border-left-width: 1px; border-left-color: #d92228; width: auto;">
<h3 style="box-sizing: border-box; font-weight: 500; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 10px; font-size: 18px;">53% of Americans believe now is a good time to buy a home, according to Gallup.</h3>
</blockquote>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">At the time, people were responding to the sudden slowdown in real-estate transactions as the economy shut down at the beginning of the coronavirus pandemic.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Demographic shifts and the pandemic-fueled move to remote working caused demand among home buyers to jump.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">As people rushed into the market and quickly scooped up properties, the inventory of homes for sale has dropped to a record low in recent months.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">To an extent, this supply gap is a reflection of years of under-building following the Great Recession.</p>
<blockquote>
<h3 style="box-sizing: border-box; font-weight: 500; line-height: 1.1; color: inherit; margin-top: 0px; margin-bottom: 10px; font-size: 18px;">Gallup found that 71% of Americans believe that home prices are going to increase over the next year in their local market.</h3>
</blockquote>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">So what&rsquo;s going on? House prices may have soared over the last year, but most people expect that tend to continue.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The situation has caused home prices to reach record highs across much of the country, and Americans have taken notice. Gallup&rsquo;s survey found that 71% of Americans believe that home prices are going to increase over the next year in their local market.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">This is the highest reading since Gallup began tracking this data point, though it is not statistically different from 2005&rsquo;s measure of 70%. A year ago, only 40% of people expected home prices to increase.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Expectations of rising home prices were essentially universal across the country, regardless of whether the survey respondents lived in a major city, suburb or rural area.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The quick increase in home prices is making Americans more pessimistic about housing than they&rsquo;ve been in recent years. Historically, people&rsquo;s feelings on the housing market have changed in response to market conditions.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Slim majorities also said it was a good time to buy a house in 1978, a time of high inflation and high mortgage interest rates, and in the mid-2000s housing bubble era,&rdquo; Gallup noted. &ldquo;Americans were most bullish on home buying in 2003, when home prices were rising sharply and 81% said it was a good time to buy a home.&rdquo;</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Other data has pointed to Americans&rsquo; wariness about the housing market currently. A record number of people have searched on Google&nbsp;<a class="icon none" style="background-color: transparent; box-sizing: border-box; text-decoration-line: none; color: #3377cc !important;" href="https://www.marketwatch.com/story/is-the-u-s-housing-market-heading-for-a-crash-heres-what-the-experts-say-11619023745?mod=realtor" rel="noopener noreferrer">to find out whether real estate is poised for another crash</a>&nbsp;like the one the country experienced in the run-up to the last recession..</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Nevertheless, Americans continue to prefer homeownership to other long-term investments. Gallup found that 41% of people believe real estate is the best long-term investment, up from 35% last year. Stocks and mutual funds came in second at 26%, followed by gold (18%). Only 3% of people thought bonds were the best investment tool.</p>
</div>', 20, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (12, N'Bad News for House Hunters: Hiring Has Slowed for Construction Workers', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px;">Homebuilders have slowed their hiring pace, even as buyers are clamoring for properties to purchase.</p>
<div class="first-letter-in-red" style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Analysts and economists say the slowdown is a reflection of the exceptional challenges construction firms are facing in sourcing building materials.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Employment in the broader construction sector was flat in April,&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.marketwatch.com/story/u-s-gains-disappointing-266-000-jobs-in-april-but-all-signs-still-point-to-faster-hiring-in-months-ahead-11620391689?mod=realtor" rel="noopener noreferrer">according to figures released Friday</a>&nbsp;by the Bureau of Labor Statistics. Drilling down to the residential side of the construction industry, the outlook is only slightly improved.</p>
<div class="ad-leaderboard bottom-ad custom-inline1-ads" style="box-sizing: border-box; text-align: center; margin: 10px 10px 60px 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff; min-height: 90px;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Around 4,400 specialty contractors who work on residential buildings were hired in April, a small uptick yet down from the nearly 19,000 jobs added in March. And March aside, the pace of hiring has slowed in 2021 thus far.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">It&rsquo;s a shift from earlier in the pandemic. While the residential construction sector saw large job losses in March and April of last year as the economy shut down in response to burgeoning COVID-19 case counts, it quickly rebounded.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Between February 2020 and April 2021, the sector has actually added more than 46,000 jobs.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">&ldquo;It&rsquo;s one of the few sectors that has posted some gains,&rdquo; said Robert Dietz, chief economist for the National Association of Home Builders.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">So why the recent slowdown? It largely relates back to the price of wood, experts say.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto; text-align: start;">Material shortages cause bottlenecks for homebuilders</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Labor shortfalls in other sectors &mdash; including logging &mdash; are affecting builders&rsquo; ability to hire. The number of Americans employed in the logging industry dropped slightly in April, according to the preliminary numbers from the Bureau of Labor Statistics, making for the third consecutive month of declines.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">The situation &ldquo;is creating a problem getting necessary building materials out of the factories and onto the job sites,&rdquo; said Carl Reichardt, Jr., a managing director and home-building analyst at investment bank BTIG.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">It&rsquo;s not just lumber, though &mdash; shortages of steel and appliances are also a factor. And while some of these goods and materials are produced in the U.S., most are imported from Canada or overseas.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">The material shortages are driving up the price of new homes, pushing the cost some $35,000 higher,&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://eyeonhousing.org/2021/04/higher-lumber-costs-add-more-than-35k-to-new-home-prices-119-to-monthly-rent/" rel="noopener noreferrer">according to research</a>&nbsp;from the National Association of Home Builders. More than that, it&rsquo;s dragging out the duration of construction projects. &ldquo;They&rsquo;re laying down a foundation, but they&rsquo;re not proceeding to frame the home,&rdquo; Dietz said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">With less work to do as builders wait for supplies to arrive, many have opted to hold off on taking many more new sales, or hiring more workers on the off-chance they aren&rsquo;t able to do the work.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Homebuilders also employ salespeople to handle the customer-facing side of the business. There, too, builders have remained hesitant to ramp up hiring. &ldquo;The large public builders have a tremendous order backlog right now,&rdquo; Reichardt said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">The bottlenecking caused by the supply shortage means that many companies are already at capacity, so boosting sales volumes isn&rsquo;t a concern. Consequently, builders aren&rsquo;t looking to increase their workforce of salespeople.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">&ldquo;We actually have been hiring very few salespeople over the last couple of quarters because sales have been very robust,&rdquo; Eric Lipar, CEO and chairman of LGI Homes,&nbsp;said during the company&rsquo;s quarterly earnings call this week.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto; text-align: start;">Prior to the pandemic, builders faced a shortfall of workers</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">The situation playing out in the construction sector is a major shift from before the pandemic. In an industry survey conducted in February 2020, more than 4 out of 5 builders said they expected to face serious challenges related to the cost and availability of labor, the National Association of Home Builders&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://nahbnow.com/2020/02/labor-shortages-remain-top-concern-for-builders/" rel="noopener noreferrer">reported</a>.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">&ldquo;As job losses were elevated for the rest of the economy in 2020 builders and remodelers took advantage of that and recruited individuals,&rdquo; Dietz said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Still, builders face limits on how many people they can hire from other industries since they rely on skilled labor. It takes time and money to train workers who are new to job. The industry also faces challenges diversifying its workforce to expand the range of people at its disposal.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">&ldquo;Only 3% of construction occupation &mdash; that is people swinging hammers and working on construction sites &mdash; are women,&rdquo; Dietz said. &ldquo;There a lot of work to be done in terms of recruitment efforts.&rdquo;</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto; text-align: start;">Homebuilders&rsquo; struggles will create more pain for buyers</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">The housing market is in dire need of a greater supply of homes. The number of properties for sale has fallen to record lows in recent months, in part because sellers have remained hesitant to list their homes for fear of finding themselves without a place to live.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Recent data from Realtor.com suggests that sellers are slowly beginning to return to the market, easing some of the supply constraints.</p>
<blockquote style="box-sizing: border-box; padding: 0px 14px; margin: 0px 0px 20px 24px; font-size: 17.5px; border-left-width: 1px; border-left-color: #d92228; width: auto; text-align: start;">
<p class="pullquote-content article__inset__pullquote__quote" style="box-sizing: border-box; margin: 0px 0px 8px; font-size: 20px; line-height: 28px; color: #000000; font-family: Roboto; font-style: italic; letter-spacing: 0px; width: auto;"><em style="box-sizing: border-box;">You may see some people throw in the towel and decide to wait until next year.</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;"><em style="box-sizing: border-box;"><small style="box-sizing: border-box; font-size: 12.8px; display: block; line-height: 1.42857; color: #888888;"><span class="inset-author article__inset__pullquote__author" style="box-sizing: border-box; font-family: Roboto; font-size: 14px; letter-spacing: 0px; line-height: 20px;">Mike Fratantoni, chief economist at the Mortgage Bankers Association</span></small></em></span></p>
</blockquote>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Decades of under-building has caught up with the housing market. Following the Great Recession, which hit homebuilders hard, construction firms maintained a very slow pace of fabricating new homes. Homebuilding did not keep up with the formation of new households, and now those households are looking for properties to buy.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Builders have ramped up the pace of construction last year, but the bottlenecks they are now facing will push home prices higher.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">&ldquo;With the lack of inventory and with price growth where we&rsquo;ve seen it, that probably is going to encourage people to broaden their search criteria,&rdquo; said Mike Fratantoni, chief economist at the Mortgage Bankers Association. &ldquo;Maybe they&rsquo;ll accept a little bit longer commute or a little bit different mix of attributes in a home if they&rsquo;re really determined to buy this year.&rdquo;</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">In time, many buyers may reach a breaking point, especially if mortgage rates start to rebound higher again and create affordability issues.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">&ldquo;You may see some people throw in the towel and decide to wait until next year,&rdquo; Fratantoni said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000; text-align: start;">Despite the disappointing jobs report, homebuilder stocks &mdash; including D.R. Horton,&nbsp;&nbsp;Lennar Corp. and PulteGroup&nbsp; &mdash; were all up in Friday afternoon trading, exceeding the gains of the S&amp;P 500 and the Dow Jones Industrial Average.</p>
<div id="div-gpt-ad-INLINE1" style="box-sizing: border-box;" data-google-query-id="CP6JoMa9-PACFWRBwgUdeqANiw"> </div>
</div>
</div>', 18, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (13, N'Complaints about mortgage servicers are soaring as millions of Americans still can’t make their monthly payments', N'<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: Lato, sans-serif; vertical-align: baseline; color: #2e2e2e;">Although the economy has shown significant signs of improvement in 2021 thus far, many homeowners continue to face financial challenges. A&nbsp;<a class="icon none" style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px; padding: 0px; border-width: 0px 0px 2px; border-image: initial; font: inherit; vertical-align: baseline; text-decoration-line: none; background-size: 30px 30px; background-repeat: no-repeat; border-color: initial initial #3677a8 initial; border-style: initial initial solid initial;" href="https://files.consumerfinance.gov/f/documents/cfpb_characteristics-mortgage-borrowers-during-covid-19-pandemic_report_2021-05.pdf" target="_blank" rel="noopener">new report</a>&nbsp;from the Consumer Financial Protection Bureau finds significant disparities among which Americans have encountered those hurdles.</p>
<div class="paywall is-loaded" style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: Lato, sans-serif; vertical-align: baseline; color: #2e2e2e;">
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">As of March, around 4.7% of all active mortgage loans remained in forbearance, the CFPB estimated, while roughly 0.5% of loans were believed to be 60 or more days delinquent. The forbearance programs put in place by federal lawmakers in 2020 allow mortgage borrowers to postpone making their monthly payments if they&rsquo;re experiencing financial hardship. At the end of forbearance, servicers are supposed to provide these homeowners with a range of options to handle the unpaid debt that accrued over during that time.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">Many homeowners who requested forbearance at the start of the pandemic have already resumed making their monthly payments. The remaining homeowners who are still taking advantage of the payment relief are more likely to be people of color, have less equity in their home and to have faced challenges paying off their debt prior to COVID-19.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">As&nbsp;<a class="icon none" style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px; padding: 0px; border-width: 0px 0px 2px; border-image: initial; font: inherit; vertical-align: baseline; text-decoration-line: none; background-size: 30px 30px; background-repeat: no-repeat; border-color: initial initial #3677a8 initial; border-style: initial initial solid initial;" href="https://www.marketwatch.com/story/the-housing-emergency-most-harms-people-of-color-black-americans-face-an-unequal-housing-market-and-coronavirus-could-make-it-worse-2020-06-03" target="_blank" rel="noopener">with other financial indicators</a>, the CFPB found there were significant disparities based on race and ethnicity in whether a borrower was likely to still be in forbearance on their home loan as of March. More than 9% of Black mortgage borrowers were in forbearance, while the same was true of more than 8% of Hispanic borrowers. In both cases, that&rsquo;s significantly higher than the forbearance rate among white borrowers, of whom less than 4% are in forbearance.</p>
<div class="
          media-object
          type-InsetPullQuote
            inline
    scope-web|mobileapps
  article__inset
          article__inset--type-InsetPullQuote
            article__inset--inline
  " style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 32px auto 27px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: baseline; width: 780px; position: relative; clear: both; z-index: 0; background: #ffffff;" data-layout="inline
                " data-layout-mobile="">
<div class="wsj-article-pullquote article__inset__pullquote " style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px auto; padding: 20px 0px; border-width: 1px 0px; border-style: solid; border-color: #e1e1e1; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: serif; vertical-align: baseline; color: #333333; text-align: center;">
<p class="pullquote-content article__inset__pullquote__quote" style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 1.71429rem; line-height: 1.375; font-family: Lato, sans-serif; vertical-align: baseline; color: #3677a8;">Over 9% of Black mortgage borrowers were still in forbearance as of March, as compared with less than 4% of their white peers.</p>
</div>
</div>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">&ldquo;Tract-level characteristics also matter, with forbearance and delinquency being significantly more likely in majority-minority census tracts and in tracts with lower relative income,&rdquo; the CFPB researchers wrote.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">&ldquo;Some consumers expressed frustration that servicers did not communicate clearly about which relief options would be available when their forbearance period ended,&rdquo; the report noted. &ldquo;In particular, some of these consumers were concerned about what would happen to forborne payments and about whether they could extend a forbearance period.&rdquo;</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">Consumers also reported experiencing delays or denials for certain relief options at the end of forbearance, including loan modifications. In some cases, mortgage servicers told the CFPB that the denials or delays were the result of receiving incomplete information from the borrower to process their request or because the borrowers did not meet the necessary specifications to receive that relief.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;">The CFPB has taken steps in recent months to boost protections for struggling homeowners. In April, the agency proposed a rule that would prevent servicers from starting foreclosure proceedings until 2022, while streamlining the loan-modification and loss-mitigation options and processes for borrowers. The bureau has also signaled that it will keep a close eye on servicers to ensure they are meeting borrowers&rsquo; needs, suggesting that the companies ramp up their hiring to ensure they have enough staff to handle requests.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">But the group of borrowers who were most likely to be in forbearance as of March were those who were already behind on their mortgage payments before the pandemic began. The CFPB found that 18.6% of borrowers who were 30 or more days delinquent on their loans as of February 2020 were in forbearance as of March 2021. That&rsquo;s more than four times higher than the percentage of borrowers who are now in forbearance but were current on their mortgage before the pandemic.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">Additionally, homeowners who have less equity built up in their home were more likely to still be in distress. More than 15% of borrowers who had a loan-to-value ratio above 95% were in forbearance on their mortgage, while nearly 9% of borrowers with a loan-to-value ratio of between 80% and 95% were in the same situation. In many cases, these borrowers likely took advantage of programs that allowed them to purchase homes with a small down payment, including the FHA program that only requires a 3.5% down payment.</p>
<h6 style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 0.3em; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 1.71429rem; line-height: 1.125; font-family: Muli, sans-serif; vertical-align: baseline;">Consumer complaints about their mortgages are rising</h6>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">A&nbsp;<a class="icon none" style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px; padding: 0px; border-width: 0px 0px 2px; border-image: initial; font: inherit; vertical-align: baseline; text-decoration-line: none; background-size: 30px 30px; background-repeat: no-repeat; border-color: initial initial #3677a8 initial; border-style: initial initial solid initial;" href="https://files.consumerfinance.gov/f/documents/cfpb_mortgage-forbearance-issues_complaint-bulletin_2021-05.pdf" target="_blank" rel="noopener">separate report from the CFPB</a>, meanwhile, showed that consumer complaints regarding mortgages had risen significantly in March to the highest volume in nearly three years.</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">&ldquo;Mortgage complaint volume has remained relatively steady since January 2020, averaging around 2,500 complaints per month,&rdquo; the agency stated in the bulletin. &ldquo;In March 2021, however, the volume of mortgage complaints increased to more than 3,400 &mdash; the greatest monthly mortgage complaint volume since April 2018.&rdquo;</p>
<p style="box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 0px 0px 1.5em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">&nbsp;One of the more common topics cited in these complaints was concern about communications from mortgage servicers to borrowers who were still in forbearance.</p>
</div>', 17, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (14, N'Waterfront Homeowners Weather High Insurance Costs After Major Storms', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Calvin and Elizabeth Moore weren&rsquo;t worried when they learned their coastal Pensacola, Fla., home was in the path of Hurricane Sally. They had upgraded its roof and windows after Hurricane Ivan damaged the property in 2004.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">But the 2020 storm was stronger than expected, and they ended up with significant damage from a leaking roof, said Mr. Moore, 79, a retired real-estate broker. They were able to have their antiques, art and furniture safely removed and stored while workers repainted and dealt with mold inside the house. They spent months sleeping in the sitting area off their kitchen.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">To cover the roughly $300,000 in repair costs on their 4,000-square-foot home, which faces the water on three sides, the couple added their own funds to payouts from the insurer they finally switched to after the previous storm and after a second insurer they picked stopped covering their area. Their $1.5 million Pure policy, including a rider for flood damage, covered about $200,000 in damages. Mr. Moore said he paid a $37,000 wind deductible to the builder and plans to spend $70,000 to repair his torn-up backyard, which isn&rsquo;t covered.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;It&rsquo;s a work in progress,&rdquo; he said.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The Moores were diligent about adequate coverage, which costs them about $28,000 annually. The typical home-insurance policy doesn&rsquo;t always cover costly storm damage, such as flooding, for high-end coastal and waterfront properties. Many luxury homeowners, like the Moores, are turning to a small but growing sector of private insurers that offer additional policies to fill the gaps.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;It&rsquo;s a very bad experience for consumers; a lot of houses [are] put into unfair situations,&rdquo; says Nick Steffey, chief executive of ShoreOne Insurance Managers in Dedham, Mass. The company, launched in 2019, offers coastal homes flood insurance, typically as a supplement to their homeowners policy.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Currently, most homeowners in FEMA-designated flood zones get coverage through the National Flood Insurance Program, managed by the Federal Emergency Management Agency. It covers up to $250,000 in damages. FEMA makes additional funds available if a disaster is declared.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The program cap, however, means high-end homeowners are often left with significant out-of-pocket costs. Many also end up underinsured because FEMA&rsquo;s risk estimates can ignore damage from nearby bodies of water or from strong storms, says Jeremy Porter, head of research and development at First Street Foundation, a nonprofit that advocates for more transparency in flood risk and climate change.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;One of the biggest problems is assessing flood risk,&rdquo; said Dr. Porter. In the next 30 years, economic damage due to changing environmental conditions is estimated to jump to 7.5 times the current average insurance payout, up from 4.5 times, according to data from First Street Foundation.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Tom and Kim DiBacco spent months working with Tower Hill, their insurance company, on repairs to their 6,000-square-foot Panama City Beach, Fla., home after 160 mph winds from Hurricane Michael blew off their chimney, letting water inside. The exterior damage to the home, which is valued at $1.3 million, included having to replace parts of their pool, said Mr. DiBacco, 58, a wine and spirits distributor, who bought the home in 1997 for $515,000.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;This was not welcome,&rdquo; he said. &ldquo;It was kind of a frenzy.&rdquo;</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The couple already had replaced the roof and flooring after a 2016 storm. Those repairs included converting a study to a wine cellar.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">After negotiating over their insurance, which had separate riders for flood and windstorm coverage, the couple received nearly $245,000 for damages, including living expenses when they had to move out of their house while work was completed. They rebuilt the fireplace and wall that had shifted in their two-story living room, installed new windows and repaired the water damage in the home&rsquo;s main bathroom.</p>
</div>', 21, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (15, N'Pending Home Sales Sink as the Housing Market Falls Back to Earth', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">The numbers:&nbsp;</span>An indicator of existing-home sales fell in April, suggesting that the housing market could be cooling in the face of high home prices.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Pending home sales dropped 4.4% in April compared with March, the National Association of Realtors&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.nar.realtor/research-and-statistics/housing-statistics/pending-home-sales" rel="noopener noreferrer">reported Thursday</a>.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">On an annual basis pending home sales were up nearly 52%, but at this time last year, pending sales had fallen to a record low as the onset of the COVID-19 pandemic brought real-estate transactions to an abrupt halt.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Contract signings are approaching pre-pandemic levels after the big surge due to the lack of sufficient supply of affordable homes,&rdquo; said Lawrence Yun, NAR&rsquo;s chief economist. &ldquo;The upper-end market is still moving sharply as inventory is more plentiful there.&rdquo;</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The pending home sales index measures real-estate transactions where a contract was signed for a previously owned home but the sale had not yet closed, benchmarked to contract-signing activity in 2001. Economists polled by MarketWatch had projected a 1% increase for pending home sales in April.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">What happened:&nbsp;</span>Every region experienced a monthly decrease in pending home sales, except for the Midwest, where contract signings increased 3.5% on a monthly basis. Yun noted that the Midwest has the most affordable housing in the country, and suggested the increase there could be a sign that people are flocking to the region from pricier markets on the coasts.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The Northeast experienced the biggest downturn in pending sales, with a nearly 13% drop.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">The big picture:&nbsp;</span>The decline in pending sales is another sign that high home prices are making matters tough for home buyers. The market has continued to see record home-price gains &mdash; a reflection of the lengths that buyers are willing to go to in order to appeal to sellers. With so many buyers in the market and so few homes to go around, it&rsquo;s natural for prices to rise as fast as they are.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">But the latest pending sales report offers reason for caution. Buyers who have been unable to get into a contract for a home may eventually opt to give up and wait, hoping the market will be less competitive. That could throw cold water on the hot housing market, which could have ripple effects across other parts of the economy.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">What they&rsquo;re saying:</span>&nbsp;&rdquo;Pending home sales, or contract signings, are an early indicator of existing home sales in coming months because they mark the point in time where a buyer and seller reach an agreement on price and terms. Today&rsquo;s data shows that a ferociously competitive housing market is not making it easy for home buyers,&rdquo; said Danielle Hale, chief economist at Realtor.com.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;"><span style="box-sizing: border-box; font-weight: bold;">Market reaction:</span>&nbsp;The Dow Jones Industrial Average and the S&amp;P 500&nbsp;were both up slightly in Thursday morning trading.</p>
</div>', 22, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (16, N'5 Things You Didn’t Know a VA Loan Could Do for You', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Because of the bravery and sacrifices of veterans and active military, the rest of the country&rsquo;s civilians can live the American dream in safety. As one tangible way to say &ldquo;thank you for your service,&rdquo; current and former members of the military&nbsp;have access to Veterans&nbsp;Affairs home loans. These unique mortgage options allow veterans and those still serving to&nbsp;own a piece of the American dream by potentially qualifying for homes they might have thought were out of reach.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Veterans, active-duty service personnel, and select Reservists or National Guard members are among those who can quality for VA loans. (<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.benefits.va.gov/homeloans/purchaseco_eligibility.asp" rel="noopener noreferrer">Find specific eligibility requirements here</a>.) Wondering what some of the benefits of a VA loan might be? Here are&nbsp;five to consider.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto; letter-spacing: 0px;">1. No down payment</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">This is one of the most valuable and touted benefits&mdash;and for good reason. Saving enough for a down payment can be the biggest obstacle to buying a home. But a VA loan eliminates that roadblock.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Most of the buyers I work with don&rsquo;t have extra resources available, so the fact that they can purchase a home with zero down makes the transaction feasible,&rdquo; says&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Benny Dinsmore</span>, a Realtor&reg; with Coldwell Banker in Frisco, TX.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">In most parts of the country, qualified buyers can purchase up to $424,100 before factoring&nbsp;in the cost of a down payment. In pricier areas, borrowers can go beyond that threshold.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">But beware: The &ldquo;no money down&rdquo; aspect of a VA loan&nbsp;shouldn&rsquo;t be confused with &ldquo;<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.realtor.com/advice/buy/va-loans-home-buying-costs/" target="_blank" rel="noopener noreferrer">no money out of pocket</a>,&rdquo;&nbsp;a common misconception, notes&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Michael Garcia</span>, broker and owner of TQS Realty in Palm Beach, FL.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">A VA loan still requires closing costs and the earnest money deposit (a negotiated amount of money that the buyer puts in escrow to&nbsp;essentially &ldquo;hold&rdquo; the house).</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;However, that money will often come back at the closing, when the title company will write a check back to the veteran on the spot for the total amount that was put into escrow,&rdquo; Garcia says.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">2. More lenient loan requirements</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">The&nbsp;<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.realtor.com/advice/finance/what-is-a-good-credit-score/" target="_blank" rel="noopener noreferrer">required credit score</a>&nbsp;for a VA loan can be lower than for a conventional loan&mdash;around 620 for a VA loan compared&nbsp;with a range of 650 to 700 for most conventional loans.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">In addition, the required debt-to-income ratio for VA loans is often more flexible than for conventional mortgages.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;It allows someone with less-than-perfect credit and some debt to still be able to qualify for a loan,&rdquo; Dinsmore says.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">3. No&nbsp;mortgage insurance</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Most conventional&nbsp;buyers have to pay private mortgage insurance if they put less than 20% down. FHA loans come with their own forms of mortgage insurance. But a VA loan waives that insurance requirement.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">And trust us&mdash;this one&rsquo;s important.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;This can be a big savings in monthly payments, since PMI typically runs around $200 a month,&rdquo; says Realtor&reg;&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Twila Lukavich</span>&nbsp;with Russell Real Estate Services in Cleveland.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Even though there&rsquo;s no mortgage insurance, there is a &ldquo;funding fee&rdquo;&mdash;an upfront cost applied to every purchase loan or refinance. The proceeds help the VA cover losses on the few loans that go into default. But borrowers can roll it into their monthly payment, or pay it all at once. Plus, it&rsquo;s tax-deductible.&nbsp;And veterans with a service-connected disability don&rsquo;t have to pay the funding fee at all.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">4. Limited&nbsp;closing costs</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Legally, veterans are allowed to pay for certain closing costs, which include the following:</p>
<ul style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 18px; width: 740px;">
<li style="box-sizing: border-box; line-height: 24px; margin-bottom: 8px;">Appraisal</li>
<li style="box-sizing: border-box; line-height: 24px; margin-bottom: 8px;">Credit report</li>
<li style="box-sizing: border-box; line-height: 24px; margin-bottom: 8px;">Origination fee</li>
<li style="box-sizing: border-box; line-height: 24px; margin-bottom: 8px;">Recording fee</li>
<li style="box-sizing: border-box; line-height: 24px; margin-bottom: 8px;">Survey</li>
<li style="box-sizing: border-box; line-height: 24px; margin-bottom: 8px;">Title insurance</li>
</ul>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">But there are some fees that veterans are not allowed to pay. And the VA allows lenders to charge no more than 1% to cover the costs of originating and underwriting the loan.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">So for example, if the purchase price is $280,000, the veteran might offer $300,000 and ask for 3% back to cover the closing costs.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;In this way the veteran is essentially financing their closing costs into the loan, meaning less out of pocket at the start,&rdquo; Dinsmore explains.</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">5. Extra assistance with appraisals</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">When a home that a veteran is considering purchasing is having&nbsp;<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://www.realtor.com/advice/buy/va-buyers-property-requirements/?guide_ref=223057" target="_blank" rel="noopener noreferrer">trouble reaching the purchase price during the appraisal process</a>, buyers and lenders can ask the VA appraiser to consider adjusting the valuation before making a final determination.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Appraisers notify lenders in the event the appraised value is likely to come in low, giving buyers and real estate agents&nbsp;48 hours to supply additional information that the appraiser&nbsp;might not be aware of to help justify the home&rsquo;s value.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Typically I assemble an itemized list of upgrades and improvements that the seller has performed on the home in the past three years that the appraiser didn&rsquo;t know about, and therefore didn&rsquo;t include in the home value,&rdquo; Lukavich says.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">This process&nbsp;&ldquo;gives the agents an opportunity to assist the appraiser in making sure they have the whole picture of the home and gives the local agent an opening to help an appraiser be educated on specific local values,&rdquo; she adds.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">It&rsquo;s&nbsp;just another&nbsp;benefit of VA loans aimed at helping&nbsp;our service men and women buy the home of their dreams.</p>
</div>', 23, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (17, N'Yard Maintenance Tasks for Children of All Ages, From Youngsters to Young Adults', N'<p style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Americans looking to buy a condominium or co-op this spring should factor in the cost of insurance before signing on the dotted line. And a new analysis shows that where you choose to live will greatly influence how much you can expect to pay to protect yourself.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">A new report from&nbsp;<a class="icon none" style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #3377cc !important;" href="https://advisorsmith.com/data/average-condo-insurance-cost/" target="_blank" rel="noopener noreferrer">insurance website AdvisorSmith</a>&nbsp;calculated the average cost of condo insurance, or HO-6 insurance, in each state. The analysis found that Florida was by far the most expensive state for condo insurance.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Residents of condos and co-ops in the Sunshine State pay $964 a year for condo insurance on average. That&rsquo;s nearly double the national average of $506, and well over three times costlier than the least expensive state, Utah, where condo residents only pay $269 a year on average. AdvisorSmith&rsquo;s analysis was based on data from the National Association of Insurance Commissioners.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Overall, residents of the South pay far more to insurance their condo and co-op residences than people living in other states. The AdvisorSmith analysis found that 11 of the 15 most expensive states for this form of insurance were located in the South, including the other four states in the top five besides Florida: Texas ($790), Louisiana ($748), Oklahoma ($631) and Mississippi ($600).</p>
<h2 style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">Prone to severe weather events</h2>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;There are certainly many factors taken into account when determining condo insurance, but the location of these particular states seems to play a major role,&rdquo; the report noted. In particular, all of these states are highly prone to severe weather events, including hurricanes and tornados. As the report explained, most of the top 10 natural catastrophes, in terms of the cost of damage, were hurricanes that affected Southern states.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Meanwhile, the least expensive states were ones that were less prone to disastrous weather events, as well as less populated regions. Besides Utah, other affordable states for condo insurance were Wisconsin ($280) and Iowa ($295).</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Of course, other factors influence the cost of HO-6 insurance, including the size of deductible, features in the condo development and the homeowner&rsquo;s association&rsquo;s own insurance policy.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Unlike traditional homeowner&rsquo;s insurance, an HO-6 policy only covers what&rsquo;s inside the walls of your unit and not the structure itself. As such, it&rsquo;s designed to mesh with the development&rsquo;s own insurance policy, so a condo building with a more protective policy will allow for more affordable individual policies for each of its residents.</p>
</div>', 25, CAST(N'2021-06-02' AS Date), N'public')
INSERT [dbo].[News] ([News_Id], [Title], [Description], [Category_Id], [Created_Date], [Status]) VALUES (18, N'Yard Maintenance Tasks for Children of All Ages, From Youngsters to Young Adults', N'<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; font-size: 16px; line-height: 24px; font-family: Roboto, sans-serif; background-color: #ffffff;">Parents, you know that summer vacation is upon us, and that means your kids will be antsy to tackle new activities. So there&rsquo;s no better time to teach them a thing or two about gardening.</p>
<div class="first-letter-in-red" style="box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Many of us turned to creating a garden as one of our quarantine hobbies in 2020,&rdquo; says&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Bailey Carson</span>, home expert at Angi, the home improvement recommendation site. &ldquo;It&rsquo;s a great time to include your kids in your garden&rsquo;s revival and maintenance.&rdquo;</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Teaching your kids about lawn and yard maintenance can occupy hours and instill in them a sense of responsibility and accomplishment. Plus, it&rsquo;s an activity the whole family can partake in.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Of course, we&rsquo;re not suggesting you simply set the children loose to trample on and bust up your garden. Try out the following age-appropriate yard maintenance activities together at first, and see if your kids take a liking to them. Best-case scenario? They&rsquo;ll continue to help you tidy up outside!</p>
<h2 class="p1" style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">Elementary school-age children</h2>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Children of this age require smaller jobs they can do with an adult. But experts say, let them have a chance to take the lead and feel a part of the task.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;This is an opportunity for you to teach them the very basics of gardening while also having fun,&rdquo; says Carson. &ldquo;Try to turn yard cleanup and maintenance tasks into fun games like how many sticks can you pick up in a minute.&rdquo;</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Carson says other ideas for gardening tasks include watering plants, repotting plants, digging holes with plastic shovels, helping plant a window garden, and picking outdoor flowers and turning them into indoor flower arrangements.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Even at a young age, getting kids involved in the garden and allowing them to be part of the process from start to finish promotes creativity and a positive connection to nature,&rdquo; says&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Dave Thompson</span>&nbsp;of&nbsp;<span class="s1" style="box-sizing: border-box;">Seeds of Change, an organic seed and food company</span>.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Thompson says young helpers can also assist with picking out different vegetable, herb, or flower seed varieties for the garden.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Allowing them to pick out their favorite produce and watching the plants grow will make them more excited to eat the vegetables when it&rsquo;s time to harvest,&rdquo; he says.</p>
<h2 class="p1" style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">Middle school-age children</h2>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Children in middle school can often handle more independent tasks, including those that require low-risk tools like rakes and pruning shears to help bag leaves or prune plants.</p>
<p class="p3" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Thompson says to teach kids at this age about the different gardening tools, and encourage them to take responsibility for a specific section or area of the garden.</p>
<p class="p3" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;You can also teach middle school-age children about the importance of pollinators, and even plant a&nbsp;<span class="s1" style="box-sizing: border-box;">butterfly garden</span>&nbsp;to attract beautiful and helpful pollinators to your backyard,&rdquo; says Thompson.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;At this age, you can give kids an incentive to help you out by giving them an allowance to do yard chores,&rdquo; says&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Ashley Renne Nsonwu</span>, host of &ldquo;<span class="s1" style="box-sizing: border-box;">Ashley Renne&rdquo;</span>&nbsp;on the Smart Healthy Green Living streaming service.</p>
<p style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Composting is one way to make a nutrient-rich solution that can be used on your lawn, and it&rsquo;s also a great eco-conscious project to involve middle school-age children.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Teach your kids how to effectively use their food scraps for something useful for your yard. You can buy or build a compost bin together and show them how to layer kitchen scraps and green plant matter into the bin,&rdquo; says Nsonwu. Then task your kid to regularly maintain the layers until the pile degrades into finished compost for your grass.</p>
<h2 class="p1" style="box-sizing: border-box; line-height: 32px; margin: 32px 0px; font-size: 24px; width: 720px; font-family: Roboto;">High school-age children</h2>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">High schoolers can handle even more responsibility and can be taught how to properly use a lawn mower, weed trimmer, or hedge shears.</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Show them how the tools work and keep an eye on them the first few times, until you&rsquo;re all comfortable with them doing the job on their own,&rdquo; says Carson. &ldquo;Teenagers can also take on some gardening jobs that require a little heavy lifting.&rdquo;</p>
<p class="p1" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">High school-age kids can also handle chores that require attention to detail, such as edging the lawn.<span class="Apple-converted-space" style="box-sizing: border-box;">&nbsp;</span></p>
<p class="p3" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">Thompson says kids this age can take on even more ownership in the upkeep of a backyard garden. He recommends getting them involved with building a raised garden bed. And if your high schoolers enjoy cooking, encourage them to plan out an area of the garden that has their favorite herbs and vegetables that they can tend to and then use in the kitchen.</p>
<p class="p3" style="box-sizing: border-box; margin: 0px 0px 35px; line-height: 24px; color: #000000;">&ldquo;Teaching them to grow their own food supply<em style="box-sizing: border-box;">&nbsp;</em>not only fosters a connection to nature but also encourages them to have an appreciation for their favorite healthy foods,&rdquo; says Thompson.</p>
</div>', 25, CAST(N'2021-06-02' AS Date), N'public')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[News_Category] ON 

INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (6, N'New Category', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (7, N'New category 2 3 4', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (8, N'New Category', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (9, N'new new1212', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (10, N'new category', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (11, N'test category', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (12, N'test category 2', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (13, N'my new category', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (14, N'yeah yeah', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (15, N'New categfory 1', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (16, N'Gallery, House', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (17, N'Daily news', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (18, N'Home builder confidence', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (19, N'Mortgage rates', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (20, N'Home prices', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (21, N'Home insurance', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (22, N'Pending home sale', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (23, N'VA Loan', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (24, N'Homeowner insurance', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (25, N'Home improvement', 1)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (26, N'', 0)
INSERT [dbo].[News_Category] ([News_Category_Id], [Name], [isShow]) VALUES (27, N'', 0)
SET IDENTITY_INSERT [dbo].[News_Category] OFF
SET IDENTITY_INSERT [dbo].[Property] ON 

INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (28, N'GRAVITAS ARISUGAWA – A NEW BUILDING SPECTACULAR BRAND-NEW LUXURY RESIDENCE111', 66, N'sadfsadf111', NULL, 12311.0000, 12311, 12311, N'Rent/Sale', 12311, NULL, CAST(N'2021-06-03' AS Date), NULL, 1, 7, 12, N'<p>aaaaaaaaaaaaaaaaaaaa</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (29, N'property 1', 1, N'asdfsdfsadfsadfsdfsdfdsfs', NULL, 3333.0000, 12123, 12, N'Rent', 3333, NULL, CAST(N'2021-06-03' AS Date), NULL, 1, 7, 12, N'<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdf</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (31, N'property 2', 1, N'asdfsdfsadfsadfsdfsdfdsfs', NULL, 3333.0000, 12123, 12, N'Rent', 3333, NULL, CAST(N'2021-05-31' AS Date), NULL, 1, 7, 12, N'<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdf</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (32, N'property 3', 5, N'asdfsdfsadfsadfsdfsdfdsfs', NULL, 3333.0000, 12123, 12, N'Rent', 3333, NULL, CAST(N'2021-06-03' AS Date), NULL, 1, 7, 12, N'<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdf</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (37, N'GRAVITAS ARISUGAWA – A NEW BUILDING SPECTACULAR BRAND-NEW LUXURY RESIDENCE', 4, N'asdf', NULL, 234.0000, 234, 234, N'Rent/Sale', 234, NULL, CAST(N'2021-06-03' AS Date), NULL, 1, 2, 12, N'<p>aaaaaaaaaaaaaaaaa</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (40, N'GRAVITAS ARISUGAWA – A NEW BUILDING SPECTACULAR BRAND-NEW LUXURY RESIDENCE', 1, N'22 Phan Liem, Phuong Da Kao, Q1', NULL, 1234.0000, 3, 5, N'Sale', 1234, NULL, CAST(N'2021-06-03' AS Date), NULL, 4, 7, 27, N'<p>description</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (41, N'Nick Scali family buy 10.5ha Southern Highlands estate', 2, N'22 Phan Liem, Phuong Da Kao, Q1', NULL, 1111.0000, 4, 7, N'Rent', 500, NULL, CAST(N'2021-06-03' AS Date), NULL, 4, 5, 27, N'<p>descrption</p>')
INSERT [dbo].[Property] ([Property_Id], [Title], [City_Id], [Address], [GoogleMap], [Price], [Bed_Number], [Room_Number], [Type], [Area], [Sold_Date], [Upload_Date], [Build_Year], [Status_Id], [Category_Id], [Member_Id], [Description]) VALUES (42, N'New post New post ', 14, N'4sa65ac', NULL, 3.0000, 2, 12, N'Sale', 10, NULL, CAST(N'2021-06-03' AS Date), NULL, 4, 5, 29, N'<h2>asdasdasdas</h2>')
SET IDENTITY_INSERT [dbo].[Property] OFF
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Region_Id], [Name]) VALUES (1, N'Asia')
INSERT [dbo].[Region] ([Region_Id], [Name]) VALUES (2, N'Europe')
INSERT [dbo].[Region] ([Region_Id], [Name]) VALUES (3, N'America')
INSERT [dbo].[Region] ([Region_Id], [Name]) VALUES (4, N'Australia')
INSERT [dbo].[Region] ([Region_Id], [Name]) VALUES (5, N'Africa')
SET IDENTITY_INSERT [dbo].[Region] OFF
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([Setting_Id], [NumTopProperty], [NumPopularLocation], [NumNews], [NumPopularAgent], [NumProperty], [NumMaxImageProperty], [NumMaxImageNews], [NumSatisfiedCustomer], [Phone], [Email], [Address], [Description], [Services], [AboutUsTitle], [ThumbnailWebsite], [ThumbnailAboutUs], [ThumbnailHome], [Reviews]) VALUES (1, 5, 8, 6, 9, 10, 205, 10, 5000, N'0486487487,+1-2345-2345,1-1920-305-3', N'info@demolink.org,realeaste@gmail.com,contactus@gmail.com', N'410 S Missouri St, Indianapolis, IN 46225, USA', N'Estancy is a full-service, luxury real estate brokerage and lifestyle company representing clients worldwide in a broad spectrum of classes, including residential, new development, resort real estate, residential leasing and luxury vacation rentals.', N'abc,xyz,ukm', N'lorem 1', N'0306202112033902062021155004Ashampoo_Snap_2021.06.02_15h49m13s_057_.png', N'0306202112033902062021155004Ashampoo_Snap_2021.06.02_15h49m31s_058_.png', N'0306202112033902062021155004Ashampoo_Snap_2021.06.02_15h49m44s_059_.png', N'2705202110285168751600_515592842581180_98185044035633152_n.jpg')
SET IDENTITY_INSERT [dbo].[Setting] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Status_Id], [Name]) VALUES (1, N'Ativate')
INSERT [dbo].[Status] ([Status_Id], [Name]) VALUES (2, N'Deactivate')
INSERT [dbo].[Status] ([Status_Id], [Name]) VALUES (4, N'Pending')
INSERT [dbo].[Status] ([Status_Id], [Name]) VALUES (5, N'Sold')
INSERT [dbo].[Status] ([Status_Id], [Name]) VALUES (7, N'Rented')
SET IDENTITY_INSERT [dbo].[Status] OFF
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
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Country_Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Region] FOREIGN KEY([Region_Id])
REFERENCES [dbo].[Region] ([Region_Id])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Region]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_News] FOREIGN KEY([News_Id])
REFERENCES [dbo].[News] ([News_Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_News]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Property] FOREIGN KEY([Property_Id])
REFERENCES [dbo].[Property] ([Property_Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Property]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Ad_Package] FOREIGN KEY([Package_Id])
REFERENCES [dbo].[Ad_Package] ([Package_Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Ad_Package]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Member]
GO
ALTER TABLE [dbo].[Mailbox]  WITH CHECK ADD  CONSTRAINT [FK_Mailbox_Property] FOREIGN KEY([Property_Id])
REFERENCES [dbo].[Property] ([Property_Id])
GO
ALTER TABLE [dbo].[Mailbox] CHECK CONSTRAINT [FK_Mailbox_Property]
GO
ALTER TABLE [dbo].[Member_Package_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Member_Package_Detail_Ad_Package] FOREIGN KEY([Package_Id])
REFERENCES [dbo].[Ad_Package] ([Package_Id])
GO
ALTER TABLE [dbo].[Member_Package_Detail] CHECK CONSTRAINT [FK_Member_Package_Detail_Ad_Package]
GO
ALTER TABLE [dbo].[Member_Package_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Member_Package_Detail_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Member_Package_Detail] CHECK CONSTRAINT [FK_Member_Package_Detail_Member]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_News_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[News_Category] ([News_Category_Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_News_Category]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Category_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Category]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_City] FOREIGN KEY([City_Id])
REFERENCES [dbo].[City] ([City_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_City]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Member]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Status] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Status] ([Status_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Status]
GO
USE [master]
GO
ALTER DATABASE [ProjectSem3DB] SET  READ_WRITE 
GO