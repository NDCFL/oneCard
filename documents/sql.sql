USE [master]
GO
/****** Object:  Database [HSData]    Script Date: 12/02/2017 17:17:47 ******/
CREATE DATABASE [HSData] ON  PRIMARY
( NAME = N'HSData', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HSData.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON
( NAME = N'HSData_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HSData_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HSData] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HSData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HSData] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HSData] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HSData] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HSData] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HSData] SET ARITHABORT OFF
GO
ALTER DATABASE [HSData] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HSData] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HSData] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HSData] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HSData] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HSData] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HSData] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HSData] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HSData] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HSData] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HSData] SET  ENABLE_BROKER
GO
ALTER DATABASE [HSData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HSData] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HSData] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HSData] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HSData] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HSData] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HSData] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HSData] SET  READ_WRITE
GO
ALTER DATABASE [HSData] SET RECOVERY FULL
GO
ALTER DATABASE [HSData] SET  MULTI_USER
GO
ALTER DATABASE [HSData] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HSData] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'HSData', N'ON'
GO
USE [HSData]
GO
/****** Object:  Table [dbo].[Zzinfo]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zzinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Zzname] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Zzinfo] PRIMARY KEY CLUSTERED
(
	[Zzname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zyinfo]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zyinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Zyname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Zyinfo] PRIMARY KEY CLUSTERED
(
	[Zyname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zcinfo]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zcinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Zcname] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Zcinfo] PRIMARY KEY CLUSTERED
(
	[Zcname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Yhfa]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Yhfa](
	[fa] [varchar](50) NULL,
	[xzje] [numeric](18, 2) NULL,
	[sx] [numeric](18, 2) NULL,
	[xx] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ygxsinfo]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ygxsinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Ygname] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Ygxsinfo] PRIMARY KEY CLUSTERED
(
	[Ygname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YgDcc]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YgDcc](
	[kh] [bigint] NOT NULL,
	[xm] [nvarchar](20) NULL,
	[ygh] [nvarchar](20) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[rq] [datetime] NOT NULL,
	[xq] [nvarchar](10) NULL,
	[zaoc] [smallint] NULL,
	[czaoc] [smallint] NULL,
	[zc] [smallint] NULL,
	[czc] [smallint] NULL,
	[wc] [smallint] NULL,
	[cwc] [smallint] NULL,
	[yc] [smallint] NULL,
	[cyc] [smallint] NULL,
	[bz] [nvarchar](50) NULL,
	[flag] [smallint] NULL,
 CONSTRAINT [PK_YgDcc] PRIMARY KEY CLUSTERED
(
	[kh] ASC,
	[ygh] ASC,
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YgDc_jl]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YgDc_jl](
	[kh] [bigint] NOT NULL,
	[xm] [nvarchar](20) NULL,
	[ygh] [nvarchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[rq] [datetime] NOT NULL,
	[xq] [nvarchar](10) NULL,
	[cc] [varchar](20) NULL,
	[flag] [int] NULL,
 CONSTRAINT [PK_YgDc_jl] PRIMARY KEY CLUSTERED
(
	[kh] ASC,
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Yg_H_Card]    Script Date: 12/02/2017 17:17:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Yg_H_Card](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[kh] [bigint] NULL,
	[xm] [varchar](50) NULL,
	[xlh] [varchar](50) NULL,
	[xje] [numeric](18, 2) NULL,
	[bzj] [numeric](18, 2) NULL,
	[rq] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Xzjbinfo]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Xzjbinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Xzjb] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Xzjbinfo] PRIMARY KEY CLUSTERED
(
	[Xzjb] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Xlinfo]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Xlinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Xlname] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Xlinfo] PRIMARY KEY CLUSTERED
(
	[Xlname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NOT NULL,
	[userCard] [varchar](30) NOT NULL,
	[userMoney] [decimal](10, 0) NOT NULL,
	[headIcon] [varchar](255) NULL,
	[phone] [varchar](11) NULL,
	[userid] [varchar](50) NULL,
	[openid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Userrz]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Userrz](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[username] [nvarchar](50) NULL,
	[rqsj] [datetime] NULL,
	[czdnao] [varchar](50) NULL,
	[czxm] [varchar](100) NULL,
	[bz] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Syspram]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Syspram](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[username] [nvarchar](50) NULL,
	[ymima] [varchar](12) NULL,
	[mima] [varchar](12) NULL,
	[mimb] [varchar](12) NULL,
	[qybz] [int] NULL,
	[qyjb] [int] NULL,
	[qyxj] [int] NULL,
	[qyxc] [int] NULL,
	[qybd] [int] NULL,
	[qysx] [int] NULL,
	[qyid] [int] NULL,
	[zaoc] [int] NULL,
	[zc] [int] NULL,
	[wc] [int] NULL,
	[yc] [int] NULL,
	[idno] [char](10) NULL,
	[qycb] [int] NULL,
	[qyltk] [int] NULL,
	[ycsd] [int] NULL,
	[qybzqb] [int] NULL,
	[qyql] [int] NULL,
	[btrq] [int] NULL,
 CONSTRAINT [PK_Syspram] PRIMARY KEY CLUSTERED
(
	[xh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderTemp]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderTemp](
	[xh] [int] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [nvarchar](20) NULL,
	[ygh] [nvarchar](15) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[dcrq] [datetime] NOT NULL,
	[xq] [nvarchar](10) NULL,
	[dccc] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_OrderTemp] PRIMARY KEY CLUSTERED
(
	[kh] ASC,
	[dcrq] ASC,
	[dccc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderitems]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderitems](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userCard] [varchar](30) NOT NULL,
	[money] [decimal](10, 0) NOT NULL,
	[status] [int] NOT NULL,
	[createTime] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mzinfo]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mzinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Mzname] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Mzinfo] PRIMARY KEY CLUSTERED
(
	[Mzname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mody_Info]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mody_Info](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NULL,
	[kh] [bigint] NULL,
	[xm] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varbinary](50) NULL,
	[bm3] [varchar](50) NULL,
	[xgq] [varchar](50) NULL,
	[xgh] [varchar](50) NULL,
	[xgxm] [varchar](50) NULL,
	[czy] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mnuright]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mnuright](
	[username] [char](20) NOT NULL,
	[mnusn] [varchar](10) NOT NULL,
	[mnuname] [nvarchar](30) NULL,
	[mnucaption] [nvarchar](30) NULL,
	[aduse] [smallint] NULL,
	[flag] [smallint] NOT NULL,
 CONSTRAINT [PK_mnuright] PRIMARY KEY CLUSTERED
(
	[username] ASC,
	[mnusn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mj_Records]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mj_Records](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[wek] [varchar](50) NULL,
	[kh] [varchar](50) NOT NULL,
	[ygh] [varchar](50) NULL,
	[xm] [varchar](50) NULL,
	[bm1] [varchar](50) NULL,
	[sydd] [varchar](50) NULL,
	[jqh] [int] NOT NULL,
	[bz] [varchar](100) NULL,
	[jczt] [varchar](50) NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Mj_Records] PRIMARY KEY CLUSTERED
(
	[rq] ASC,
	[kh] ASC,
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mac_Para]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mac_Para](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[jqh] [bigint] NOT NULL,
	[zaoctime1] [datetime] NULL,
	[zaoctime2] [datetime] NULL,
	[zaocxe] [bigint] NULL,
	[zaocxc] [int] NULL,
	[zaocd1] [numeric](18, 2) NULL,
	[zaocd2] [numeric](18, 2) NULL,
	[zaocqy] [int] NULL,
	[zctime1] [datetime] NULL,
	[zctime2] [datetime] NULL,
	[zcxe] [bigint] NULL,
	[zcxc] [int] NULL,
	[zcd1] [numeric](18, 2) NULL,
	[zcd2] [numeric](18, 2) NULL,
	[zcqy] [int] NULL,
	[wctime1] [datetime] NULL,
	[wctime2] [datetime] NULL,
	[wcxe] [bigint] NULL,
	[wcxc] [int] NULL,
	[wcd1] [numeric](18, 2) NULL,
	[wcd2] [numeric](18, 2) NULL,
	[wcqy] [int] NULL,
	[yctime1] [datetime] NULL,
	[yctime2] [datetime] NULL,
	[ycxe] [bigint] NULL,
	[ycxc] [int] NULL,
	[ycd1] [numeric](18, 2) NULL,
	[ycd2] [numeric](18, 2) NULL,
	[ycqy] [int] NULL,
 CONSTRAINT [PK_Mac_Para] PRIMARY KEY CLUSTERED
(
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mac_Meun]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mac_Meun](
	[jqh] [int] NOT NULL,
	[bh] [int] NOT NULL,
	[je] [numeric](18, 2) NULL,
	[Meun] [varchar](50) NULL,
 CONSTRAINT [PK_Mac_Meun] PRIMARY KEY CLUSTERED
(
	[jqh] ASC,
	[bh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kqsj]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kqsj](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fa] [varchar](50) NOT NULL,
	[fh] [varchar](10) NOT NULL,
	[sj] [datetime] NOT NULL,
	[kstime] [datetime] NULL,
	[jstime] [datetime] NULL,
	[sx] [int] NULL,
	[dk] [int] NULL,
	[krfs] [int] NULL,
	[xh] [int] NULL,
 CONSTRAINT [PK_kqsj] PRIMARY KEY CLUSTERED
(
	[fa] ASC,
	[fh] ASC,
	[sj] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kqjl_mj]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kqjl_mj](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rqsj] [datetime] NOT NULL,
	[rq] [datetime] NULL,
	[sj] [datetime] NULL,
	[xq] [varchar](10) NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[kh] [bigint] NOT NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[jqh] [int] NULL,
	[sydd] [varchar](50) NULL,
	[czy] [varchar](50) NULL,
	[Verified] [int] NULL,
	[DoorID] [int] NULL,
	[EventType] [int] NULL,
	[InOutState] [int] NULL,
 CONSTRAINT [PK_kqjl_mj] PRIMARY KEY CLUSTERED
(
	[rqsj] ASC,
	[ygh] ASC,
	[xm] ASC,
	[kh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kqjl]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kqjl](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rqsj] [datetime] NOT NULL,
	[rq] [datetime] NULL,
	[sj] [datetime] NULL,
	[xq] [varchar](10) NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[kh] [bigint] NOT NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[jqh] [int] NULL,
	[sydd] [varchar](50) NULL,
	[czy] [varchar](50) NULL,
	[jlzt] [int] NULL,
	[flag] [int] NULL,
 CONSTRAINT [PK_kqjl] PRIMARY KEY CLUSTERED
(
	[rqsj] ASC,
	[ygh] ASC,
	[xm] ASC,
	[kh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kqfa]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kqfa](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[fa] [varchar](50) NOT NULL,
	[fh] [varchar](10) NOT NULL,
	[kt] [int] NULL,
	[xq1] [int] NULL,
	[xq2] [int] NULL,
	[xq3] [int] NULL,
	[xq4] [int] NULL,
	[xq5] [int] NULL,
	[xq6] [int] NULL,
	[xq7] [int] NULL,
	[zfs] [int] NULL,
	[xxs] [int] NULL,
	[jb] [int] NULL,
	[jbfs] [int] NULL,
 CONSTRAINT [PK_kqfa] PRIMARY KEY CLUSTERED
(
	[fa] ASC,
	[fh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kqbb]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kqbb](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[rq] [datetime] NOT NULL,
	[xq] [varchar](20) NULL,
	[kqfa] [varchar](50) NULL,
	[kqclass] [varchar](50) NULL,
	[kqzt] [varchar](100) NULL,
	[sj1] [varchar](10) NULL,
	[zt1] [int] NULL,
	[sj2] [varchar](10) NULL,
	[zt2] [int] NULL,
	[sj3] [varbinary](10) NULL,
	[zt3] [int] NULL,
	[sj4] [varchar](10) NULL,
	[zt4] [int] NULL,
	[sj5] [varchar](10) NULL,
	[zt5] [int] NULL,
	[sj6] [varchar](10) NULL,
	[zt6] [int] NULL,
	[sj7] [varchar](10) NULL,
	[zt7] [int] NULL,
	[sj8] [varchar](10) NULL,
	[zt8] [int] NULL,
	[sj9] [varchar](10) NULL,
	[zt9] [int] NULL,
	[sj10] [varbinary](10) NULL,
	[zt10] [int] NULL,
	[yd] [int] NULL,
	[sd] [int] NULL,
	[cdcs] [int] NULL,
	[cdfz] [int] NULL,
	[ztcs] [int] NULL,
	[ztfz] [int] NULL,
	[jbcs] [int] NULL,
	[jbfz] [int] NULL,
	[qjcs] [int] NULL,
	[qjfz] [int] NULL,
	[jjcs] [int] NULL,
	[txcs] [int] NULL,
	[bkcs] [int] NULL,
	[gccs] [int] NULL,
	[gcfz] [int] NULL,
	[xxfz] [int] NULL,
	[kg] [int] NULL,
	[zgs] [int] NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Kqbb] PRIMARY KEY CLUSTERED
(
	[ygh] ASC,
	[xm] ASC,
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_Tx]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_Tx](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NULL,
	[yxrq] [datetime] NOT NULL,
	[xxrq] [datetime] NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[yx] [int] NULL,
	[yy] [varchar](1000) NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Kq_Tx] PRIMARY KEY CLUSTERED
(
	[yxrq] ASC,
	[ygh] ASC,
	[xm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_RgBk]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_RgBk](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [varchar](50) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[yy] [varchar](1000) NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Kq_RgBk] PRIMARY KEY CLUSTERED
(
	[rq] ASC,
	[ygh] ASC,
	[xm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_Rg_Yd]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_Rg_Yd](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ygh] [varchar](20) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[rq] [datetime] NOT NULL,
	[ydxm] [varchar](50) NOT NULL,
	[ydq] [varchar](50) NULL,
	[ydh] [varchar](50) NULL,
	[ydrr] [varchar](100) NOT NULL,
	[yx] [int] NULL,
	[yy] [varchar](100) NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Kq_Rg_Yd] PRIMARY KEY CLUSTERED
(
	[ygh] ASC,
	[xm] ASC,
	[rq] ASC,
	[ydxm] ASC,
	[ydrr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_Qj]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_Qj](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[jsrq] [datetime] NULL,
	[jqmc] [varchar](50) NULL,
	[xm] [varchar](50) NOT NULL,
	[ygh] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[yx] [int] NULL,
	[ts] [int] NULL,
	[pjfz] [int] NULL,
	[czy] [varchar](20) NULL,
	[yy] [varchar](1000) NULL,
 CONSTRAINT [PK_Kq_Qj] PRIMARY KEY CLUSTERED
(
	[rq] ASC,
	[xm] ASC,
	[ygh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_Jj]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_Jj](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[mc] [varchar](50) NOT NULL,
	[rq] [datetime] NOT NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Kq_Jj] PRIMARY KEY CLUSTERED
(
	[mc] ASC,
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_Jb]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_Jb](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[kjrq] [datetime] NOT NULL,
	[jjrq] [datetime] NULL,
	[fzs] [int] NULL,
	[yx] [int] NULL,
	[ss] [int] NULL,
	[yy] [varchar](1000) NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Kq_Jb] PRIMARY KEY CLUSTERED
(
	[rq] ASC,
	[ygh] ASC,
	[xm] ASC,
	[kjrq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kq_Gc]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kq_Gc](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[jsrq] [datetime] NULL,
	[gcmc] [varchar](50) NULL,
	[xm] [varchar](50) NOT NULL,
	[ygh] [varchar](50) NOT NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[yx] [int] NULL,
	[ts] [int] NULL,
	[pjfz] [int] NULL,
	[czy] [varchar](20) NULL,
	[yy] [varchar](1000) NULL,
 CONSTRAINT [PK_Kq_Gc] PRIMARY KEY CLUSTERED
(
	[rq] ASC,
	[xm] ASC,
	[ygh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jqsd]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jqsd](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[jqh] [int] NOT NULL,
	[qy] [int] NULL,
	[lx] [nvarchar](20) NOT NULL,
	[sydd] [nvarchar](20) NULL,
	[txfs] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
	[ckh] [int] NULL,
 CONSTRAINT [PK_jqsd] PRIMARY KEY CLUSTERED
(
	[jqh] ASC,
	[lx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jginfo]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jginfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Jgname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Jginfo] PRIMARY KEY CLUSTERED
(
	[Jgname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_xfjl_ff]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ID_xfjl_ff](
	[kh] [bigint] NOT NULL,
	[sj] [datetime] NOT NULL,
	[xm] [nvarchar](20) NULL,
	[ygh] [varchar](15) NULL,
	[xb] [char](10) NULL,
	[jqh] [int] NOT NULL,
	[sydd] [nvarchar](50) NULL,
	[bm1] [nvarchar](50) NULL,
	[bm2] [nvarchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[cc] [nvarchar](10) NULL,
	[je] [numeric](18, 2) NULL,
	[je1] [numeric](18, 2) NULL,
	[bz] [nvarchar](50) NULL,
 CONSTRAINT [PK_ID_xfjl_ff] PRIMARY KEY CLUSTERED
(
	[kh] ASC,
	[sj] ASC,
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_xfjl_back]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ID_xfjl_back](
	[kh] [bigint] NULL,
	[xzsj] [datetime] NULL,
	[sj] [varchar](50) NULL,
	[xm] [nvarchar](20) NULL,
	[ygh] [varchar](15) NULL,
	[xb] [char](10) NULL,
	[jqh] [int] NULL,
	[sydd] [nvarchar](50) NULL,
	[bm1] [nvarchar](50) NULL,
	[bm2] [nvarchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[cc] [nvarchar](10) NULL,
	[je] [numeric](18, 2) NULL,
	[je1] [numeric](18, 2) NULL,
	[bz] [nvarchar](50) NULL,
	[czy] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_xfjl]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ID_xfjl](
	[kh] [bigint] NOT NULL,
	[sj] [datetime] NOT NULL,
	[xm] [nvarchar](20) NULL,
	[ygh] [varchar](15) NULL,
	[xb] [char](10) NULL,
	[jqh] [int] NOT NULL,
	[sydd] [nvarchar](50) NULL,
	[bm1] [nvarchar](50) NULL,
	[bm2] [nvarchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[cc] [nvarchar](10) NULL,
	[je] [numeric](18, 2) NULL,
	[je1] [numeric](18, 2) NULL,
	[bz] [nvarchar](50) NULL,
 CONSTRAINT [PK_ID_xfjl] PRIMARY KEY CLUSTERED
(
	[kh] ASC,
	[sj] ASC,
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_Tc_jqsd]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ID_Tc_jqsd](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[jqh] [int] NOT NULL,
	[qy] [int] NULL,
	[lx] [nvarchar](20) NOT NULL,
	[sydd] [nvarchar](20) NULL,
	[txfs] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
	[ckh] [int] NULL,
	[sx] [varchar](10) NULL,
	[qydr] [int] NULL,
	[kssj1] [datetime] NULL,
	[jssj1] [datetime] NULL,
	[qycr] [int] NULL,
	[kssj2] [datetime] NULL,
	[jssj2] [datetime] NULL,
	[bz] [varbinary](200) NULL,
 CONSTRAINT [PK_ID_Tc_jqsd] PRIMARY KEY CLUSTERED
(
	[jqh] ASC,
	[lx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_jqsd_Js]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ID_jqsd_Js](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[jqh] [int] NOT NULL,
	[qy] [int] NULL,
	[lx] [nvarchar](20) NOT NULL,
	[sydd] [nvarchar](20) NULL,
	[txfs] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
	[ckh] [nvarchar](10) NULL,
 CONSTRAINT [PK_ID_jqsd_Js] PRIMARY KEY CLUSTERED
(
	[jqh] ASC,
	[lx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_jqsd]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ID_jqsd](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[jqh] [int] NOT NULL,
	[qy] [int] NULL,
	[lx] [nvarchar](20) NOT NULL,
	[sydd] [nvarchar](20) NULL,
	[txfs] [varchar](50) NULL,
	[ip] [varchar](50) NULL,
	[ckh] [int] NULL,
 CONSTRAINT [PK_ID_jqsd] PRIMARY KEY CLUSTERED
(
	[jqh] ASC,
	[lx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_dcsd]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID_dcsd](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cc] [nvarchar](50) NULL,
	[time1] [datetime] NULL,
	[time2] [datetime] NULL,
 CONSTRAINT [PK_ID_dcsd] PRIMARY KEY CLUSTERED
(
	[xh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ID_ccsd]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID_ccsd](
	[xh] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cc] [nvarchar](50) NULL,
	[time1] [datetime] NULL,
	[time2] [datetime] NULL,
	[je] [numeric](18, 2) NULL,
	[je1] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ID_ccsd] PRIMARY KEY CLUSTERED
(
	[xh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hyinfo]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hyinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hyname] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Hyinfo] PRIMARY KEY CLUSTERED
(
	[hyname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gwinfo]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gwinfo](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Gwname] [varchar](20) NOT NULL,
	[bzrs] [int] NULL,
 CONSTRAINT [PK_Gwinfo] PRIMARY KEY CLUSTERED
(
	[Gwname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Door_NameList]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Door_NameList](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[kh] [bigint] NOT NULL,
	[sn] [varchar](50) NOT NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[jqh] [int] NOT NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Door_NameList] PRIMARY KEY CLUSTERED
(
	[kh] ASC,
	[sn] ASC,
	[ygh] ASC,
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Depar]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Depar](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[js] [bigint] NULL,
	[depname] [varchar](50) NOT NULL,
	[sx] [bigint] NULL,
 CONSTRAINT [PK_Depar] PRIMARY KEY CLUSTERED
(
	[depname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataDown_Rq]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataDown_Rq](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[rq] [datetime] NULL,
	[jqh] [int] NULL,
	[jls] [bigint] NULL,
	[zje] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientSet]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientSet](
	[name] [char](20) NOT NULL,
	[nr] [varchar](50) NULL,
 CONSTRAINT [PK_ClientSet] PRIMARY KEY CLUSTERED
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cc_info]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cc_info](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cc] [varchar](20) NOT NULL,
	[time1] [datetime] NULL,
	[time2] [datetime] NULL,
	[grje] [numeric](18, 2) NULL,
	[gsje] [numeric](18, 2) NULL,
	[czy] [varchar](20) NULL,
 CONSTRAINT [PK_Cc_info] PRIMARY KEY CLUSTERED
(
	[cc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cash_Flow]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cash_Flow](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[jqh] [int] NULL,
	[je] [numeric](18, 2) NULL,
	[ye] [numeric](18, 2) NULL,
	[sx] [varchar](20) NULL,
	[czy] [varchar](20) NULL,
	[sydd] [varchar](50) NULL,
 CONSTRAINT [PK_Cash_Flow] PRIMARY KEY CLUSTERED
(
	[rq] ASC,
	[kh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CardNo_Ls]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CardNo_Ls](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[kh] [bigint] NULL,
	[ygh] [varchar](20) NULL,
	[xm] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[djh] [bigint] NULL,
	[sn] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Zhbb]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card_Zhbb](
	[rq] [datetime] NOT NULL,
	[khsl] [bigint] NULL,
	[yjje] [numeric](18, 2) NULL,
	[xjsl] [bigint] NULL,
	[xjje] [numeric](18, 2) NULL,
	[bzsl] [bigint] NULL,
	[bzje] [numeric](18, 2) NULL,
	[ftcs] [bigint] NULL,
	[ftje] [numeric](18, 2) NULL,
	[cscs] [bigint] NULL,
	[csje] [numeric](18, 2) NULL,
	[hksl] [bigint] NULL,
	[hkfy] [numeric](18, 2) NULL,
	[tksl] [bigint] NULL,
	[tkfy] [numeric](18, 2) NULL,
	[tkyj] [numeric](18, 2) NULL,
	[kye] [numeric](18, 2) NULL,
	[rxj] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Zhbb] PRIMARY KEY CLUSTERED
(
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card_Xfjl_Quite]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Xfjl_Quite](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[xzrq] [datetime] NULL,
	[rq] [datetime] NULL,
	[weeky] [char](10) NULL,
	[rqsj] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [nvarchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[cc] [varchar](20) NULL,
	[xfje] [numeric](18, 2) NOT NULL,
	[xfye] [numeric](18, 2) NOT NULL,
	[btje] [numeric](18, 2) NULL,
	[xfdd] [varchar](50) NULL,
	[jqh] [bigint] NULL,
	[xfflag] [bigint] NULL,
	[flag] [bigint] NULL,
	[czy] [varchar](20) NULL,
	[bz] [varchar](50) NULL,
	[xffs] [int] NULL,
 CONSTRAINT [PK_Card_Xfjl_Quite] PRIMARY KEY CLUSTERED
(
	[rqsj] ASC,
	[kh] ASC,
	[xfje] ASC,
	[xfye] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Xfjl_back]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Xfjl_back](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NULL,
	[weeky] [char](10) NULL,
	[rqsj] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[cc] [varchar](20) NULL,
	[xfje] [numeric](18, 2) NULL,
	[xfye] [numeric](18, 2) NULL,
	[xfdd] [varchar](50) NULL,
	[jqh] [bigint] NULL,
	[czy] [varchar](20) NULL,
	[sfzh] [int] NULL,
 CONSTRAINT [PK_Card_Xfjl_back] PRIMARY KEY CLUSTERED
(
	[rqsj] ASC,
	[kh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Xfjl]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Xfjl](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[xzrq] [datetime] NULL,
	[rq] [datetime] NULL,
	[weeky] [char](10) NULL,
	[rqsj] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [nvarchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[cc] [varchar](20) NULL,
	[xfje] [numeric](18, 2) NOT NULL,
	[xfye] [numeric](18, 2) NOT NULL,
	[btje] [numeric](18, 2) NULL,
	[xfdd] [varchar](50) NULL,
	[jqh] [bigint] NULL,
	[xfflag] [bigint] NULL,
	[flag] [bigint] NULL,
	[czy] [varchar](20) NULL,
	[bz] [varchar](50) NULL,
	[xffs] [int] NULL,
 CONSTRAINT [PK_Card_Xfjl] PRIMARY KEY CLUSTERED
(
	[rqsj] ASC,
	[kh] ASC,
	[xfje] ASC,
	[xfye] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Sydd_Tj2]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Sydd_Tj2](
	[sydd] [varchar](50) NOT NULL,
	[zaoc] [bigint] NULL,
	[je1] [numeric](18, 2) NULL,
	[bz1] [numeric](18, 2) NULL,
	[zc] [bigint] NULL,
	[je2] [numeric](18, 2) NULL,
	[bz2] [numeric](18, 2) NULL,
	[wc] [bigint] NULL,
	[je3] [numeric](18, 2) NULL,
	[bz3] [numeric](18, 2) NULL,
	[yc] [bigint] NULL,
	[je4] [numeric](18, 2) NULL,
	[bz4] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Sydd_Tj2] PRIMARY KEY CLUSTERED
(
	[sydd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Sydd_Tj1]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Sydd_Tj1](
	[sydd] [varchar](50) NOT NULL,
	[cc] [varchar](20) NULL,
	[sl] [bigint] NULL,
	[je] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Sydd_Tj1] PRIMARY KEY CLUSTERED
(
	[sydd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Open]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Open](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[khje] [numeric](18, 2) NULL,
	[gbf] [numeric](18, 2) NULL,
	[czy] [varchar](20) NULL,
	[bzje] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Open] PRIMARY KEY CLUSTERED
(
	[kh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Jqh_Tj2]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card_Jqh_Tj2](
	[jqh] [bigint] NOT NULL,
	[zaoc] [bigint] NULL,
	[je1] [numeric](18, 2) NULL,
	[bz1] [numeric](18, 2) NULL,
	[zc] [bigint] NULL,
	[je2] [numeric](18, 2) NULL,
	[bz2] [numeric](18, 2) NULL,
	[wc] [bigint] NULL,
	[je3] [numeric](18, 2) NULL,
	[bz3] [numeric](18, 2) NULL,
	[yc] [bigint] NULL,
	[je4] [numeric](18, 2) NULL,
	[bz4] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Jq_Tj2] PRIMARY KEY CLUSTERED
(
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card_Jqh_Tj1]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Jqh_Tj1](
	[jqh] [int] NOT NULL,
	[cc] [varchar](20) NULL,
	[sl] [bigint] NULL,
	[je] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Jqh_Tj1] PRIMARY KEY CLUSTERED
(
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Hsjl]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Hsjl](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NULL,
	[kh] [bigint] NULL,
	[xm] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[tkje] [numeric](18, 2) NULL,
	[tgbf] [numeric](18, 2) NULL,
	[czy] [varchar](20) NULL,
	[bzje] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Hkjl]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Hkjl](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[kh] [bigint] NULL,
	[rq] [datetime] NULL,
	[kye] [numeric](18, 2) NULL,
	[hkfy] [numeric](18, 2) NULL,
	[czy] [nvarchar](50) NULL,
	[xkh] [bigint] NULL,
	[ygh] [varchar](20) NULL,
	[xm] [nvarchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[flag] [int] NULL,
	[bzje] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Hkjl] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Grtjb]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Grtjb](
	[ygh] [varchar](20) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[bm1] [varchar](50) NULL,
	[bmmc] [varchar](50) NULL,
	[cc] [varchar](20) NOT NULL,
	[sl] [bigint] NULL,
	[je] [numeric](18, 2) NULL,
	[bzje] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Grtjb] PRIMARY KEY CLUSTERED
(
	[ygh] ASC,
	[xm] ASC,
	[cc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_GrTj3]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_GrTj3](
	[ygh] [varchar](20) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[bm1] [varchar](20) NULL,
	[bmmc] [varchar](50) NULL,
	[zaoc] [bigint] NULL,
	[zc] [bigint] NULL,
	[wc] [bigint] NULL,
	[yc] [bigint] NULL,
	[zcc] [bigint] NULL,
 CONSTRAINT [PK_Card_GrTj3] PRIMARY KEY CLUSTERED
(
	[ygh] ASC,
	[xm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_GrTj2]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_GrTj2](
	[ygh] [varchar](20) NOT NULL,
	[xm] [varchar](50) NOT NULL,
	[bm1] [varchar](20) NULL,
	[bmmc] [varchar](50) NULL,
	[zaoc] [bigint] NULL,
	[je1] [numeric](18, 2) NULL,
	[bz1] [numeric](18, 2) NULL,
	[zc] [bigint] NULL,
	[je2] [numeric](18, 2) NULL,
	[bz2] [numeric](18, 2) NULL,
	[wc] [bigint] NULL,
	[je3] [numeric](18, 2) NULL,
	[bz3] [numeric](18, 2) NULL,
	[yc] [bigint] NULL,
	[je4] [numeric](18, 2) NULL,
	[bz4] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_GrTj2] PRIMARY KEY CLUSTERED
(
	[ygh] ASC,
	[xm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Employee]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Employee](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cardno] [bigint] NOT NULL,
	[sn] [char](10) NULL,
	[djh] [bigint] NULL,
	[name] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[opentime] [datetime] NULL,
	[cardzt] [bigint] NULL,
	[sfbz] [bigint] NULL,
	[sfxz] [bigint] NULL,
	[kye] [numeric](18, 2) NULL,
	[zjxftime] [datetime] NULL,
	[xp] [image] NULL,
	[kjb] [bigint] NULL,
	[gbf] [numeric](18, 2) NULL,
	[bz] [varchar](250) NULL,
	[mz] [varchar](50) NULL,
	[hy] [varchar](20) NULL,
	[xl] [varchar](50) NULL,
	[jg] [varchar](50) NULL,
	[zc] [varchar](50) NULL,
	[zw] [varchar](50) NULL,
	[xzjb] [varchar](50) NULL,
	[ygxs] [varchar](50) NULL,
	[zy] [varchar](50) NULL,
	[zztt] [varchar](50) NULL,
	[sfjb] [int] NULL,
	[sfxj] [int] NULL,
	[xjqk] [char](10) NULL,
	[sfbd] [int] NULL,
	[bdje] [numeric](18, 2) NULL,
	[sfqx] [int] NULL,
	[sxsj] [char](10) NULL,
	[Bf_Kqk] [varchar](20) NULL,
	[sn2] [varchar](10) NULL,
	[rzrq] [datetime] NULL,
	[kqfa] [varchar](50) NULL,
	[kqclass] [varchar](50) NULL,
	[bzje] [numeric](18, 2) NULL,
	[btxfrq] [datetime] NULL,
	[qyql] [int] NULL,
	[btrq] [int] NULL,
 CONSTRAINT [PK_Card_Employee] PRIMARY KEY CLUSTERED
(
	[cardno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Dt_Opertion]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Dt_Opertion](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NOT NULL,
	[xq] [varchar](10) NULL,
	[khcs] [int] NULL,
	[khje] [numeric](18, 2) NULL,
	[sgbf] [numeric](18, 2) NULL,
	[czcs] [int] NULL,
	[czje] [numeric](18, 2) NULL,
	[hkcs] [int] NULL,
	[hkfy] [numeric](18, 2) NULL,
	[tkcs] [int] NULL,
	[tkje] [numeric](18, 2) NULL,
	[tgbf] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Dt_Opertion] PRIMARY KEY CLUSTERED
(
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Day_Tj3]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Day_Tj3](
	[rq] [datetime] NOT NULL,
	[xq] [varchar](20) NULL,
	[zaoc] [bigint] NULL,
	[zc] [bigint] NULL,
	[wc] [bigint] NULL,
	[yc] [bigint] NULL,
	[zcc] [bigint] NULL,
 CONSTRAINT [PK_Card_Day_Tj3] PRIMARY KEY CLUSTERED
(
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Day_Tj2]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Day_Tj2](
	[rq] [datetime] NOT NULL,
	[xq] [varchar](20) NULL,
	[zaoc] [bigint] NULL,
	[je1] [numeric](18, 2) NULL,
	[bz1] [numeric](18, 2) NULL,
	[zc] [bigint] NULL,
	[je2] [numeric](18, 2) NULL,
	[bz2] [numeric](18, 2) NULL,
	[wc] [bigint] NULL,
	[je3] [numeric](18, 2) NULL,
	[bz3] [numeric](18, 2) NULL,
	[yc] [bigint] NULL,
	[je4] [numeric](18, 2) NULL,
	[bz4] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Rq_Tj2] PRIMARY KEY CLUSTERED
(
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Day_Tj1]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Day_Tj1](
	[rq] [datetime] NOT NULL,
	[xq] [varchar](20) NULL,
	[cc] [varchar](20) NULL,
	[sl] [bigint] NULL,
	[je] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_Day_Tj1] PRIMARY KEY CLUSTERED
(
	[rq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_CzList_Ls]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_CzList_Ls](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[czrq] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[xb] [char](10) NULL,
	[czqje] [numeric](18, 2) NULL,
	[czje] [numeric](18, 2) NULL,
	[czhje] [numeric](18, 2) NULL,
	[lx] [varchar](50) NOT NULL,
	[czy] [varchar](20) NULL,
 CONSTRAINT [PK_Card_CzList_Ls] PRIMARY KEY CLUSTERED
(
	[czrq] ASC,
	[kh] ASC,
	[lx] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_CzList]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_CzList](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[czrq] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [varchar](20) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[xb] [char](10) NULL,
	[czqje] [numeric](18, 2) NULL,
	[czje] [numeric](18, 2) NULL,
	[czhje] [numeric](18, 2) NULL,
	[czflag] [bigint] NULL,
	[czy] [varchar](20) NULL,
	[czdd] [varchar](50) NULL,
	[jqh] [int] NOT NULL,
 CONSTRAINT [PK_Card_CzList] PRIMARY KEY CLUSTERED
(
	[czrq] ASC,
	[kh] ASC,
	[jqh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Bz_Lq]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Bz_Lq](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[xzrq] [datetime] NULL,
	[rq] [datetime] NULL,
	[weeky] [char](10) NULL,
	[rqsj] [datetime] NOT NULL,
	[kh] [bigint] NOT NULL,
	[xm] [varchar](20) NULL,
	[ygh] [nvarchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[lqje] [numeric](18, 2) NOT NULL,
	[ye] [numeric](18, 2) NOT NULL,
	[lqdd] [varchar](50) NULL,
	[jqh] [bigint] NULL,
	[czy] [varchar](20) NULL,
 CONSTRAINT [PK_Card_Bz_Lq] PRIMARY KEY CLUSTERED
(
	[rqsj] ASC,
	[kh] ASC,
	[lqje] ASC,
	[ye] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_Bz_List]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_Bz_List](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[kh] [bigint] NULL,
	[ygh] [varchar](50) NOT NULL,
	[xm] [varchar](50) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[nf] [bigint] NOT NULL,
	[yf] [int] NOT NULL,
	[bzje] [numeric](18, 2) NULL,
	[fs] [int] NULL,
	[lq] [int] NULL,
	[czy] [varchar](50) NULL,
 CONSTRAINT [PK_Card_Bz_List] PRIMARY KEY CLUSTERED
(
	[ygh] ASC,
	[nf] ASC,
	[yf] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_BmTj2]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_BmTj2](
	[bm1] [varchar](20) NULL,
	[bmmc] [varchar](50) NOT NULL,
	[zaoc] [bigint] NULL,
	[je1] [numeric](18, 2) NULL,
	[bz1] [numeric](18, 2) NULL,
	[zc] [bigint] NULL,
	[je2] [numeric](18, 2) NULL,
	[bz2] [numeric](18, 2) NULL,
	[wc] [bigint] NULL,
	[je3] [numeric](18, 2) NULL,
	[bz3] [numeric](18, 2) NULL,
	[yc] [bigint] NULL,
	[je4] [numeric](18, 2) NULL,
	[bz4] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_BmTj2] PRIMARY KEY CLUSTERED
(
	[bmmc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card_BmTj1]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card_BmTj1](
	[bm1] [varchar](20) NULL,
	[bmmc] [varchar](50) NOT NULL,
	[cc] [varchar](20) NULL,
	[sl] [bigint] NULL,
	[je] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Card_BmTj1] PRIMARY KEY CLUSTERED
(
	[bmmc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BzCzMx]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BzCzMx](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ks] [datetime] NOT NULL,
	[js] [datetime] NOT NULL,
	[bzj] [numeric](18, 2) NULL,
	[ygh] [varchar](20) NULL,
	[xm] [nvarchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[flag] [int] NULL,
	[nf] [int] NULL,
	[yf] [int] NULL,
 CONSTRAINT [PK_BzCzMx] PRIMARY KEY CLUSTERED
(
	[ks] ASC,
	[js] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Black_List]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Black_List](
	[id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rq] [datetime] NULL,
	[kh] [bigint] NOT NULL,
	[ygh] [varchar](20) NULL,
	[xm] [varchar](20) NULL,
	[xb] [char](10) NULL,
	[bm1] [varchar](50) NULL,
	[bm2] [varchar](50) NULL,
	[bm3] [varchar](50) NULL,
	[czy] [varchar](20) NULL,
	[bz] [varchar](50) NULL,
 CONSTRAINT [PK_Black_List] PRIMARY KEY CLUSTERED
(
	[kh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 12/02/2017 17:17:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NULL,
	[Description] [nvarchar](20) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_YgDc_jl_flag]    Script Date: 12/02/2017 17:17:49 ******/
ALTER TABLE [dbo].[YgDc_jl] ADD  CONSTRAINT [DF_YgDc_jl_flag]  DEFAULT ((0)) FOR [flag]
GO
/****** Object:  Default [DF__users__headIcon__7755B73D]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [headIcon]
GO
/****** Object:  Default [DF__users__phone__7849DB76]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [phone]
GO
/****** Object:  Default [DF__users__userid__793DFFAF]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [userid]
GO
/****** Object:  Default [DF_qybz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qybz]  DEFAULT ((0)) FOR [qybz]
GO
/****** Object:  Default [DF_qyjb]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qyjb]  DEFAULT ((0)) FOR [qyjb]
GO
/****** Object:  Default [DF_qyxj]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qyxj]  DEFAULT ((0)) FOR [qyxj]
GO
/****** Object:  Default [DF_qyxc]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qyxc]  DEFAULT ((0)) FOR [qyxc]
GO
/****** Object:  Default [DF_qybd]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qybd]  DEFAULT ((0)) FOR [qybd]
GO
/****** Object:  Default [DF_qysx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qysx]  DEFAULT ((0)) FOR [qysx]
GO
/****** Object:  Default [DF_qyid]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_qyid]  DEFAULT ((0)) FOR [qyid]
GO
/****** Object:  Default [DF_Syspram_zc]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_zc]  DEFAULT ((0)) FOR [zaoc]
GO
/****** Object:  Default [DF_Syspram_zc_1]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_zc_1]  DEFAULT ((0)) FOR [zc]
GO
/****** Object:  Default [DF_Syspram_wc]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_wc]  DEFAULT ((0)) FOR [wc]
GO
/****** Object:  Default [DF_Syspram_yc]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_yc]  DEFAULT ((0)) FOR [yc]
GO
/****** Object:  Default [DF_Syspram_idno]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_idno]  DEFAULT ((0)) FOR [idno]
GO
/****** Object:  Default [DF_Syspram_qycb]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_qycb]  DEFAULT ((0)) FOR [qycb]
GO
/****** Object:  Default [DF_Syspram_qyltk]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_qyltk]  DEFAULT ((0)) FOR [qyltk]
GO
/****** Object:  Default [DF_Syspram_ycsd]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_ycsd]  DEFAULT ((0)) FOR [ycsd]
GO
/****** Object:  Default [DF_Syspram_qybzqb]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_qybzqb]  DEFAULT ((0)) FOR [qybzqb]
GO
/****** Object:  Default [DF_Syspram_qyql]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_qyql]  DEFAULT ((0)) FOR [qyql]
GO
/****** Object:  Default [DF_Syspram_btrq]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Syspram] ADD  CONSTRAINT [DF_Syspram_btrq]  DEFAULT ((1)) FOR [btrq]
GO
/****** Object:  Default [DF__orderitem__creat__7E02B4CC]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[orderitems] ADD  DEFAULT (getdate()) FOR [createTime]
GO
/****** Object:  Default [DF_kqsj_sx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqsj] ADD  CONSTRAINT [DF_kqsj_sx]  DEFAULT ((0)) FOR [sx]
GO
/****** Object:  Default [DF_kqsj_dk]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqsj] ADD  CONSTRAINT [DF_kqsj_dk]  DEFAULT ((0)) FOR [dk]
GO
/****** Object:  Default [DF_kqsj_krfs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqsj] ADD  CONSTRAINT [DF_kqsj_krfs]  DEFAULT ((0)) FOR [krfs]
GO
/****** Object:  Default [DF_kqsj_xh]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqsj] ADD  CONSTRAINT [DF_kqsj_xh]  DEFAULT ((0)) FOR [xh]
GO
/****** Object:  Default [DF_kqjl_jlzt]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqjl] ADD  CONSTRAINT [DF_kqjl_jlzt]  DEFAULT ((0)) FOR [jlzt]
GO
/****** Object:  Default [DF_kqjl_flag]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqjl] ADD  CONSTRAINT [DF_kqjl_flag]  DEFAULT ((0)) FOR [flag]
GO
/****** Object:  Default [DF_kqfa_kt]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_kt]  DEFAULT ((0)) FOR [kt]
GO
/****** Object:  Default [DF_kqfa_xq1]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq1]  DEFAULT ((0)) FOR [xq1]
GO
/****** Object:  Default [DF_kqfa_xq2]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq2]  DEFAULT ((0)) FOR [xq2]
GO
/****** Object:  Default [DF_kqfa_xq3]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq3]  DEFAULT ((0)) FOR [xq3]
GO
/****** Object:  Default [DF_kqfa_xq4]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq4]  DEFAULT ((0)) FOR [xq4]
GO
/****** Object:  Default [DF_kqfa_xq5]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq5]  DEFAULT ((0)) FOR [xq5]
GO
/****** Object:  Default [DF_kqfa_xq6]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq6]  DEFAULT ((0)) FOR [xq6]
GO
/****** Object:  Default [DF_kqfa_xq7]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xq7]  DEFAULT ((0)) FOR [xq7]
GO
/****** Object:  Default [DF_kqfa_zfs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_zfs]  DEFAULT ((0)) FOR [zfs]
GO
/****** Object:  Default [DF_kqfa_xxs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_xxs]  DEFAULT ((0)) FOR [xxs]
GO
/****** Object:  Default [DF_kqfa_jb]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_jb]  DEFAULT ((0)) FOR [jb]
GO
/****** Object:  Default [DF_kqfa_jbfs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[kqfa] ADD  CONSTRAINT [DF_kqfa_jbfs]  DEFAULT ((0)) FOR [jbfs]
GO
/****** Object:  Default [DF_Kqbb_zt1]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt1]  DEFAULT ((0)) FOR [zt1]
GO
/****** Object:  Default [DF_Kqbb_zt2]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt2]  DEFAULT ((0)) FOR [zt2]
GO
/****** Object:  Default [DF_Kqbb_zt3]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt3]  DEFAULT ((0)) FOR [zt3]
GO
/****** Object:  Default [DF_Kqbb_zt4]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt4]  DEFAULT ((0)) FOR [zt4]
GO
/****** Object:  Default [DF_Kqbb_zt5]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt5]  DEFAULT ((0)) FOR [zt5]
GO
/****** Object:  Default [DF_Kqbb_zt6]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt6]  DEFAULT ((0)) FOR [zt6]
GO
/****** Object:  Default [DF_Kqbb_zt7]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt7]  DEFAULT ((0)) FOR [zt7]
GO
/****** Object:  Default [DF_Kqbb_zt8]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt8]  DEFAULT ((0)) FOR [zt8]
GO
/****** Object:  Default [DF_Kqbb_zt9]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt9]  DEFAULT ((0)) FOR [zt9]
GO
/****** Object:  Default [DF_Kqbb_zt10]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zt10]  DEFAULT ((0)) FOR [zt10]
GO
/****** Object:  Default [DF_Kqbb_yd]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_yd]  DEFAULT ((0)) FOR [yd]
GO
/****** Object:  Default [DF_Kqbb_sd]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_sd]  DEFAULT ((0)) FOR [sd]
GO
/****** Object:  Default [DF_Kqbb_cdcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_cdcs]  DEFAULT ((0)) FOR [cdcs]
GO
/****** Object:  Default [DF_Kqbb_cdfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_cdfz]  DEFAULT ((0)) FOR [cdfz]
GO
/****** Object:  Default [DF_Kqbb_ztcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_ztcs]  DEFAULT ((0)) FOR [ztcs]
GO
/****** Object:  Default [DF_Kqbb_ztfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_ztfz]  DEFAULT ((0)) FOR [ztfz]
GO
/****** Object:  Default [DF_Kqbb_jbcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_jbcs]  DEFAULT ((0)) FOR [jbcs]
GO
/****** Object:  Default [DF_Kqbb_jbfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_jbfz]  DEFAULT ((0)) FOR [jbfz]
GO
/****** Object:  Default [DF_Kqbb_qjcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_qjcs]  DEFAULT ((0)) FOR [qjcs]
GO
/****** Object:  Default [DF_Kqbb_qjfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_qjfz]  DEFAULT ((0)) FOR [qjfz]
GO
/****** Object:  Default [DF_Kqbb_jjcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_jjcs]  DEFAULT ((0)) FOR [jjcs]
GO
/****** Object:  Default [DF_Kqbb_txcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_txcs]  DEFAULT ((0)) FOR [txcs]
GO
/****** Object:  Default [DF_Kqbb_bkcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_bkcs]  DEFAULT ((0)) FOR [bkcs]
GO
/****** Object:  Default [DF_Kqbb_gccs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_gccs]  DEFAULT ((0)) FOR [gccs]
GO
/****** Object:  Default [DF_Kqbb_gcfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_gcfz]  DEFAULT ((0)) FOR [gcfz]
GO
/****** Object:  Default [DF_Kqbb_xxfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_xxfz]  DEFAULT ((0)) FOR [xxfz]
GO
/****** Object:  Default [DF_Kqbb_kg]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_kg]  DEFAULT ((0)) FOR [kg]
GO
/****** Object:  Default [DF_Kqbb_zgs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kqbb] ADD  CONSTRAINT [DF_Kqbb_zgs]  DEFAULT ((0)) FOR [zgs]
GO
/****** Object:  Default [DF_Kq_Tx_yx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Tx] ADD  CONSTRAINT [DF_Kq_Tx_yx]  DEFAULT ((0)) FOR [yx]
GO
/****** Object:  Default [DF_Kq_Rg_Yd_yx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Rg_Yd] ADD  CONSTRAINT [DF_Kq_Rg_Yd_yx]  DEFAULT ((0)) FOR [yx]
GO
/****** Object:  Default [DF_Kq_Qj_yx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Qj] ADD  CONSTRAINT [DF_Kq_Qj_yx]  DEFAULT ((0)) FOR [yx]
GO
/****** Object:  Default [DF_Kq_Qj_ts]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Qj] ADD  CONSTRAINT [DF_Kq_Qj_ts]  DEFAULT ((1)) FOR [ts]
GO
/****** Object:  Default [DF_Kq_Qj_pjfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Qj] ADD  CONSTRAINT [DF_Kq_Qj_pjfz]  DEFAULT ((480)) FOR [pjfz]
GO
/****** Object:  Default [DF_Kq_Jb_fzs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Jb] ADD  CONSTRAINT [DF_Kq_Jb_fzs]  DEFAULT ((0)) FOR [fzs]
GO
/****** Object:  Default [DF_Kq_Jb_yx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Jb] ADD  CONSTRAINT [DF_Kq_Jb_yx]  DEFAULT ((1)) FOR [yx]
GO
/****** Object:  Default [DF_Kq_Jb_ss]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Jb] ADD  CONSTRAINT [DF_Kq_Jb_ss]  DEFAULT ((1)) FOR [ss]
GO
/****** Object:  Default [DF_Kq_Gc_yx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Gc] ADD  CONSTRAINT [DF_Kq_Gc_yx]  DEFAULT ((0)) FOR [yx]
GO
/****** Object:  Default [DF_Kq_Gc_ts]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Gc] ADD  CONSTRAINT [DF_Kq_Gc_ts]  DEFAULT ((1)) FOR [ts]
GO
/****** Object:  Default [DF_Kq_Gc_pjfz]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Kq_Gc] ADD  CONSTRAINT [DF_Kq_Gc_pjfz]  DEFAULT ((480)) FOR [pjfz]
GO
/****** Object:  Default [DF_ID_Tc_jqsd_qydr]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[ID_Tc_jqsd] ADD  CONSTRAINT [DF_ID_Tc_jqsd_qydr]  DEFAULT ((0)) FOR [qydr]
GO
/****** Object:  Default [DF_ID_Tc_jqsd_qycr]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[ID_Tc_jqsd] ADD  CONSTRAINT [DF_ID_Tc_jqsd_qycr]  DEFAULT ((0)) FOR [qycr]
GO
/****** Object:  Default [DF_Gwinfo_bzrs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Gwinfo] ADD  CONSTRAINT [DF_Gwinfo_bzrs]  DEFAULT ((0)) FOR [bzrs]
GO
/****** Object:  Default [DF_Cc_info_grje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Cc_info] ADD  CONSTRAINT [DF_Cc_info_grje]  DEFAULT ((0)) FOR [grje]
GO
/****** Object:  Default [DF_Cc_info_gsje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Cc_info] ADD  CONSTRAINT [DF_Cc_info_gsje]  DEFAULT ((0)) FOR [gsje]
GO
/****** Object:  Default [DF_Card_Xfjl_Quite_xffs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Xfjl_Quite] ADD  CONSTRAINT [DF_Card_Xfjl_Quite_xffs]  DEFAULT ((0)) FOR [xffs]
GO
/****** Object:  Default [DF_Card_Xfjl_back_sfzh]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Xfjl_back] ADD  CONSTRAINT [DF_Card_Xfjl_back_sfzh]  DEFAULT ((0)) FOR [sfzh]
GO
/****** Object:  Default [DF_Card_Xfjl_xffs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Xfjl] ADD  CONSTRAINT [DF_Card_Xfjl_xffs]  DEFAULT ((0)) FOR [xffs]
GO
/****** Object:  Default [DF_Card_Open_bzje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Open] ADD  CONSTRAINT [DF_Card_Open_bzje]  DEFAULT ((0)) FOR [bzje]
GO
/****** Object:  Default [DF_Card_Hkjl_rq]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Hkjl] ADD  CONSTRAINT [DF_Card_Hkjl_rq]  DEFAULT (getdate()) FOR [rq]
GO
/****** Object:  Default [DF_Card_Hkjl_flag]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Hkjl] ADD  CONSTRAINT [DF_Card_Hkjl_flag]  DEFAULT ((0)) FOR [flag]
GO
/****** Object:  Default [DF_Card_Employee_zztt]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_zztt]  DEFAULT ((0)) FOR [zztt]
GO
/****** Object:  Default [DF_Card_Employee_sfjb]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_sfjb]  DEFAULT ((0)) FOR [sfjb]
GO
/****** Object:  Default [DF_Card_Employee_sfxj]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_sfxj]  DEFAULT ((0)) FOR [sfxj]
GO
/****** Object:  Default [DF_Card_Employee_xjqk]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_xjqk]  DEFAULT ((0)) FOR [xjqk]
GO
/****** Object:  Default [DF_Card_Employee_sfbd]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_sfbd]  DEFAULT ((0)) FOR [sfbd]
GO
/****** Object:  Default [DF_Card_Employee_bdje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_bdje]  DEFAULT ((0)) FOR [bdje]
GO
/****** Object:  Default [DF_Card_Employee_sfqx]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_sfqx]  DEFAULT ((0)) FOR [sfqx]
GO
/****** Object:  Default [DF_Card_Employee_sxsj]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_sxsj]  DEFAULT ((991231)) FOR [sxsj]
GO
/****** Object:  Default [DF_Card_Employee_bzje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_bzje]  DEFAULT ((0)) FOR [bzje]
GO
/****** Object:  Default [DF_Card_Employee_qyql]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_qyql]  DEFAULT ((0)) FOR [qyql]
GO
/****** Object:  Default [DF_Card_Employee_btrq]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Employee] ADD  CONSTRAINT [DF_Card_Employee_btrq]  DEFAULT ((1)) FOR [btrq]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_khcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_khcs]  DEFAULT ((0)) FOR [khcs]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_khje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_khje]  DEFAULT ((0)) FOR [khje]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_sgbf]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_sgbf]  DEFAULT ((0)) FOR [sgbf]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_czcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_czcs]  DEFAULT ((0)) FOR [czcs]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_czje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_czje]  DEFAULT ((0)) FOR [czje]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_hkcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_hkcs]  DEFAULT ((0)) FOR [hkcs]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_hkfy]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_hkfy]  DEFAULT ((0)) FOR [hkfy]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_tkcs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_tkcs]  DEFAULT ((0)) FOR [tkcs]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_tkje]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_tkje]  DEFAULT ((0)) FOR [tkje]
GO
/****** Object:  Default [DF_Card_Dt_Opertion_tgbf]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Dt_Opertion] ADD  CONSTRAINT [DF_Card_Dt_Opertion_tgbf]  DEFAULT ((0)) FOR [tgbf]
GO
/****** Object:  Default [DF_Card_CzList_jqh]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_CzList] ADD  CONSTRAINT [DF_Card_CzList_jqh]  DEFAULT ((0)) FOR [jqh]
GO
/****** Object:  Default [DF_Card_Bz_List_fs]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Bz_List] ADD  CONSTRAINT [DF_Card_Bz_List_fs]  DEFAULT ((0)) FOR [fs]
GO
/****** Object:  Default [DF_Card_Bz_List_lq]    Script Date: 12/02/2017 17:17:50 ******/
ALTER TABLE [dbo].[Card_Bz_List] ADD  CONSTRAINT [DF_Card_Bz_List_lq]  DEFAULT ((0)) FOR [lq]
GO
