USE [master]
GO
/****** Object:  Database [DB42]    Script Date: 4/14/2019 3:41:01 AM ******/
CREATE DATABASE [DB42]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB42', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB42.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB42_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB42_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB42] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB42].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB42] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB42] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB42] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB42] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB42] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB42] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB42] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB42] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB42] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB42] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB42] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB42] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB42] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB42] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB42] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB42] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB42] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB42] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB42] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB42] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB42] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB42] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB42] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB42] SET  MULTI_USER 
GO
ALTER DATABASE [DB42] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB42] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB42] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB42] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB42] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB42] SET QUERY_STORE = OFF
GO
USE [DB42]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DB42]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/14/2019 3:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 4/14/2019 3:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [nvarchar](10) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyID] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[CompanyAdddress] [nvarchar](max) NOT NULL,
	[CompanyContact] [float] NOT NULL,
	[CompanyEmail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dealer]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealer](
	[DealerID] [int] NOT NULL,
	[DealerName] [nvarchar](50) NOT NULL,
	[DAddress] [nvarchar](max) NOT NULL,
	[MobileNo] [float] NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[E-mail] [nvarchar](50) NOT NULL,
	[CompanyID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DealerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [nvarchar](10) NOT NULL,
	[[Product Name] [nvarchar](50) NOT NULL,
	[CompanyID] [nvarchar](50) NOT NULL,
	[BatchNo] [nchar](10) NOT NULL,
	[Price] [money] NOT NULL,
	[ProductType] [nvarchar](30) NOT NULL,
	[Mgf_Rate] [datetime] NOT NULL,
	[Exp_Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[Pur_ID] [int] NOT NULL,
	[DealerID] [int] NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[PurDate] [datetime] NOT NULL,
	[Quatity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Total Amount] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pur_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesID] [nvarchar](50) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Total Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffDetail]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffDetail](
	[UserName] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](15) NOT NULL,
	[StaffID] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Contact] [float] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffSalery]    Script Date: 4/14/2019 3:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffSalery](
	[Salarey_ID] [int] NOT NULL,
	[StaffID] [nchar](10) NOT NULL,
	[Salery] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Salarey_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 4/14/2019 3:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StockID] [nvarchar](15) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([CompanyID])
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD FOREIGN KEY([DealerID])
REFERENCES [dbo].[Dealer] ([DealerID])
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[StaffSalery]  WITH CHECK ADD FOREIGN KEY([StaffID])
REFERENCES [dbo].[StaffDetail] ([StaffID])
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
USE [master]
GO
ALTER DATABASE [DB42] SET  READ_WRITE 
GO
