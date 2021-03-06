USE [master]
GO
/****** Object:  Database [DataManagement]    Script Date: 17/02/2020 9:36:26 AM ******/
CREATE DATABASE [DataManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DataManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DataManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DataManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DataManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DataManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DataManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DataManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DataManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DataManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DataManagement] SET  MULTI_USER 
GO
ALTER DATABASE [DataManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DataManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DataManagement] SET QUERY_STORE = OFF
GO
USE [DataManagement]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 17/02/2020 9:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Employer_ID] [int] NOT NULL,
	[Department_ID] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTIme] [datetime] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 17/02/2020 9:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17/02/2020 9:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](50) NULL,
	[LastName] [nchar](50) NULL,
	[Gender] [nchar](10) NULL,
	[Gmail] [nchar](100) NULL,
	[Phone] [int] NULL,
	[Address] [nchar](100) NULL,
	[Employer_ID] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 17/02/2020 9:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nchar](100) NULL,
	[EmployerName] [nchar](100) NULL,
	[Gmail] [nchar](100) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([ID], [Employee_ID], [Employer_ID], [Department_ID], [StartTime], [EndTIme]) VALUES (1, 2, 2, 2, CAST(N'2020-01-01T01:00:00.000' AS DateTime), CAST(N'2020-01-01T01:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([ID], [Employee_ID], [Employer_ID], [Department_ID], [StartTime], [EndTIme]) VALUES (2, 1, 2, 3, CAST(N'2020-02-01T08:00:00.000' AS DateTime), CAST(N'2020-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([ID], [Employee_ID], [Employer_ID], [Department_ID], [StartTime], [EndTIme]) VALUES (3, 2, 3, 3, CAST(N'2020-01-04T08:00:00.000' AS DateTime), CAST(N'2020-01-04T15:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Attendance] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([ID], [Name], [Description]) VALUES (1, N'Accounts                                                                                            ', N'The data about financial status of the company is issuedby this department.                         ')
INSERT [dbo].[Department] ([ID], [Name], [Description]) VALUES (2, N'Administration                                                                                      ', N'The admin staff have to look over the management, supplies, distributive related jobs of the company')
INSERT [dbo].[Department] ([ID], [Name], [Description]) VALUES (3, N'Information Technology                                                                              ', N'The work related to technology, software and websites are handled by this group.                    ')
INSERT [dbo].[Department] ([ID], [Name], [Description]) VALUES (4, N'Marketing                                                                                           ', N'advertisement and marketing through social media are done by this department                        ')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Gmail], [Phone], [Address], [Employer_ID]) VALUES (1, N'Susmita                                           ', N'Kumari                                            ', N'Female    ', N'mishrasusmita560@gmail.com                                                                          ', 2041800146, N'portage road, papatoetoe                                                                            ', 1)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Gmail], [Phone], [Address], [Employer_ID]) VALUES (2, N'Pranshu                                           ', N'kashyap                                           ', N'Male      ', N'pranshu12@gmail.com                                                                                 ', 215478965, N'XYZ Takanini, Auckland, New Zealand                                                                 ', 0)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Gmail], [Phone], [Address], [Employer_ID]) VALUES (3, N'Randeep                                           ', N'Kaur                                              ', N'Female    ', N'randeep12@gmail.com                                                                                 ', 20456987, N'ABC Shirley Road Papatoetoe                                                                         ', 0)
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Gender], [Gmail], [Phone], [Address], [Employer_ID]) VALUES (4, N'Raman                                             ', N'Cheema                                            ', N'Female    ', N'raman123@gmail.com                                                                                  ', 2020455224, N'XYZ coronation road, Papatoetoe                                                                     ', 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Employer] ON 

INSERT [dbo].[Employer] ([ID], [CompanyName], [EmployerName], [Gmail], [Phone]) VALUES (2, N'Activate training center                                                                            ', N'ABC                                                                                                 ', N'abc12@gmail.com                                                                                     ', 2014785964)
INSERT [dbo].[Employer] ([ID], [CompanyName], [EmployerName], [Gmail], [Phone]) VALUES (3, N'Trainme Safety                                                                                      ', N'Xyz                                                                                                 ', N'xyz12@gmail.com                                                                                     ', 2014569871)
INSERT [dbo].[Employer] ([ID], [CompanyName], [EmployerName], [Gmail], [Phone]) VALUES (4, N'Vision college                                                                                      ', N'HJKL                                                                                                ', N'hjkl12@gmail.com                                                                                    ', 2012465325)
SET IDENTITY_INSERT [dbo].[Employer] OFF
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Department] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Department]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Employee] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Employee]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Employer] FOREIGN KEY([Employer_ID])
REFERENCES [dbo].[Employer] ([ID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Employer]
GO
USE [master]
GO
ALTER DATABASE [DataManagement] SET  READ_WRITE 
GO
