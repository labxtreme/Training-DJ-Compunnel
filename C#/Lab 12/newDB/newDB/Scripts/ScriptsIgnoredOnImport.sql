﻿
USE [master]
GO

/****** Object:  Database [testDB]    Script Date: 8/31/2019 12:38:17 PM ******/
CREATE DATABASE [testDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\testDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\testDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [testDB] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [testDB] SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [testDB] SET ANSI_NULLS OFF
GO

ALTER DATABASE [testDB] SET ANSI_PADDING OFF
GO

ALTER DATABASE [testDB] SET ANSI_WARNINGS OFF
GO

ALTER DATABASE [testDB] SET ARITHABORT OFF
GO

ALTER DATABASE [testDB] SET AUTO_CLOSE ON
GO

ALTER DATABASE [testDB] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [testDB] SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [testDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [testDB] SET CURSOR_DEFAULT  GLOBAL
GO

ALTER DATABASE [testDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO

ALTER DATABASE [testDB] SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [testDB] SET QUOTED_IDENTIFIER OFF
GO

ALTER DATABASE [testDB] SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [testDB] SET  ENABLE_BROKER
GO

ALTER DATABASE [testDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [testDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [testDB] SET TRUSTWORTHY OFF
GO

ALTER DATABASE [testDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [testDB] SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [testDB] SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [testDB] SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [testDB] SET RECOVERY SIMPLE
GO

ALTER DATABASE [testDB] SET  MULTI_USER
GO

ALTER DATABASE [testDB] SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [testDB] SET DB_CHAINING OFF
GO

ALTER DATABASE [testDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO

ALTER DATABASE [testDB] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO

ALTER DATABASE [testDB] SET DELAYED_DURABILITY = DISABLED
GO

ALTER DATABASE [testDB] SET QUERY_STORE = OFF
GO

USE [testDB]
GO

/****** Object:  Table [dbo].[persons]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [dbo].[Name]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[OrderHistory]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [dbo].[vOrders]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ARITHABORT ON
GO

SET CONCAT_NULL_YIELDS_NULL ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_WARNINGS ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

/****** Object:  Table [dbo].[book]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[book_borrow]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Book_cat]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[CustomerDuplicate]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Demo]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Employees$]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesAudit]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Shippers]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[student]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[AssignOrderID]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[spCTE]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[spGetAgeandName]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[uspTryCatchTest]    Script Date: 8/31/2019 12:38:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [master]
GO

ALTER DATABASE [testDB] SET  READ_WRITE
GO
