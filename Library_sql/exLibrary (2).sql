--CREATE DATABASE library
USE [Library]

--drop table Themes
--drop table Faculties
--drop table Departments
--drop table Categories
--drop table Authors
--drop table Press
--drop table Libs
--drop table Groups
--drop table Books
--drop table Teachers
--drop table T_Cards
--drop table Students
--drop table S_Cards

GO
CREATE TABLE [dbo].[Themes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Themes] ON
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (1, N'���� ������')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (2, N'����������������')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (3, N'����������� ������')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (4, N'������ ����������')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (5, N'�������������� ������')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (6, N'����')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (7, N'Web-������')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (8, N'Windows 2000')
INSERT [dbo].[Themes] ([Id], [Name]) VALUES (9, N'������������ �������')
SET IDENTITY_INSERT [dbo].[Themes] OFF
/****** Object:  Table [dbo].[Faculties]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (1, N'����������������')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (2, N'���-�������')
INSERT [dbo].[Faculties] ([Id], [Name]) VALUES (3, N'�����������������')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
/****** Object:  Table [dbo].[Departments]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'��������������')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'������� � �������')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (3, N'������ � �����������������')
SET IDENTITY_INSERT [dbo].[Departments] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'���� SQL')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'�������������� ������')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'C++ Builder')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Delphi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Visual Basic')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'3D Studio Max')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Mathcad')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Novell')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Perl')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'FrontPage')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'Visual FoxPro')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (12, N'Windows 2000')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'Unix')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (14, N'HTML')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Authors]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (1, N'������ �.', N'�����')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (2, N'������', N'����������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (3, N'������', N'�����')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (4, N'�����', N'������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (5, N'�������', N'�������������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (6, N'��������', N'������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (7, N'���������', N'��������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (8, N'������', N'��������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (9, N'�����', N'������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (10, N'���������', N'��������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (11, N'�������', N'����������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (12, N'�����', N'�������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (13, N'�����', N'��������')
INSERT [dbo].[Authors] ([Id], [FirstName], [LastName]) VALUES (14, N'����', N'�����')
SET IDENTITY_INSERT [dbo].[Authors] OFF
/****** Object:  Table [dbo].[Press]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Press](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Press] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Press] ON
INSERT [dbo].[Press] ([Id], [Name]) VALUES (1, N'DiaSoft')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (2, N'BHV')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (3, N'�����')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (4, N'�����')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (5, N'�����')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (6, N'�����-�����')
INSERT [dbo].[Press] ([Id], [Name]) VALUES (7, N'����������')
SET IDENTITY_INSERT [dbo].[Press] OFF
/****** Object:  Table [dbo].[Libs]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Libs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Libs] ON
INSERT [dbo].[Libs] ([Id], [FirstName], [LastName]) VALUES (1, N'������', N'����������')
INSERT [dbo].[Libs] ([Id], [FirstName], [LastName]) VALUES (2, N'�������', N'���������')
SET IDENTITY_INSERT [dbo].[Libs] OFF
/****** Object:  Table [dbo].[Groups]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Id_Faculty] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (2, N'9�1', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (3, N'9�2', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (4, N'9�', 3)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (5, N'9�', 2)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (6, N'14�', 3)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (7, N'19�1', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (8, N'18�2', 1)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (9, N'18�', 3)
INSERT [dbo].[Groups] ([Id], [Name], [Id_Faculty]) VALUES (10, N'19�', 2)
SET IDENTITY_INSERT [dbo].[Groups] OFF
/****** Object:  Table [dbo].[Books]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Pages] [int] NOT NULL,
	[YearPress] [int] NOT NULL,
	[Id_Themes] [int] NOT NULL,
	[Id_Category] [int] NOT NULL,
	[Id_Author] [int] NOT NULL,
	[Id_Press] [int] NOT NULL,
	[Comment] [varchar](50) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (1, N'SQL', 816, 2001, 1, 1, 1, 2, N'2-� �������', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (2, N'3D Studio Max 3', 640, 2000, 3, 6, 3, 3, N'������� ����', 3)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (3, N'100 ����������� ������ ���������� ���������� Delphi 5', 272, 1999, 2, 4, 5, 4, N'����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (4, N'Visual Basic 6', 416, 2000, 2, 5, 4, 3, N'����������� ����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (5, N'���� ��������������� �������', 328, 1990, 4, 2, 2, 5, N'1-� ���', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (6, N'���������� C++ Builder 5: 70 ����������� �����/������ ����������', 288, 2000, 2, 3, 5, 4, N'����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (7, N'��������������� ����� ����������', 272, 2000, 2, 3, 5, 4, N'����� ����������', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (8, N'������� ������� (Help) �� Delphi 5 �  Object Pascal', 32, 2000, 2, 4, 5, 4, N'����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (9, N'Visual Basic 6.0 for Application', 488, 2000, 2, 5, 6, 6, N'���������� � ���������', 3)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (10, N'Visual Basic 6', 576, 2000, 2, 5, 7, 2, N'����������� ������������ 1-� ���', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (11, N'Mathcad 2000', 416, 2000, 5, 7, 8, 2, N'������ �����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (12, N'Novell GroupWise 5.5 ������� ����������� ����� � ������������ ������', 480, 2000, 6, 8, 9, 2, N'������� ������', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (13, N'������ Windows 2000', 352, 2000, 9, 12, 13, 2, N'����������� ��� ��������������', 4)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (14, N'Unix ����������', 384, 1999, 9, 13, 12, 3, N'���������� �����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (15, N'����������� Visual FoxPro 6.0', 512, 1999, 1, 11, 11, 2, N'�����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (16, N'����������� FrontPage 2000', 512, 1999, 7, 10, 11, 2, N'�����������', 1)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (17, N'����������� Perl', 432, 2000, 2, 9, 10, 2, N'�����������', 2)
INSERT [dbo].[Books] ([Id], [Name], [Pages], [YearPress], [Id_Themes], [Id_Category], [Id_Author], [Id_Press], [Comment], [Quantity]) VALUES (18, N'HTML 3.2', 1040, 2000, 7, 14, 14, 2, N'�����������', 5)
SET IDENTITY_INSERT [dbo].[Books] OFF
/****** Object:  Table [dbo].[Teachers]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Id_Dep] [int] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (1, N'��������', N'����', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (2, N'�����', N'�������', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (3, N'������', N'����������', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (4, N'�������', N'���������', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (5, N'������', N'������', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (6, N'�����', N'��������', 3)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (7, N'��������', N'����������', 3)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (8, N'������', N'���������', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (9, N'������', N'������', 1)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (10, N'��������', N'������', 2)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (11, N'����', N'����������', 3)
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Id_Dep]) VALUES (12, N'���������', N'�������', 1)
SET IDENTITY_INSERT [dbo].[Teachers] OFF
/****** Object:  Table [dbo].[T_Cards]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Cards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Teacher] [int] NOT NULL,
	[Id_Book] [int] NOT NULL,
	[DateOut] [smalldatetime] NOT NULL,
	[DateIn] [smalldatetime] NULL,
	[Id_Lib] [int] NOT NULL,
 CONSTRAINT [PK_T_Cards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Cards] ON
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (1, 2, 13, CAST(0x8EAC0000 AS SmallDateTime), CAST(0x90D20000 AS SmallDateTime), 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (2, 10, 2, CAST(0x8EEA0000 AS SmallDateTime), NULL, 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (3, 6, 12, CAST(0x8F470000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (4, 3, 1, CAST(0x8FA40000 AS SmallDateTime), NULL, 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (5, 8, 8, CAST(0x8F290000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (6, 5, 18, CAST(0x903A0000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (7, 12, 17, CAST(0x90580000 AS SmallDateTime), NULL, 1)
INSERT [dbo].[T_Cards] ([Id], [Id_Teacher], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (8, 4, 18, CAST(0x8F630000 AS SmallDateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[T_Cards] OFF
/****** Object:  Table [dbo].[Students]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Id_Group] [int] NOT NULL,
	[Term] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (2, N'��������', N'�����', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (3, N'�����', N'��������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (4, N'�����', N'�������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (5, N'�����', N'���������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (6, N'������', N'��������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (7, N'����', N'������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (8, N'����', N'���������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (9, N'������', N'���������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (10, N'�����', N'������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (11, N'����', N'�������', 8, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (12, N'�������', N'������', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (13, N'�����', N'���������', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (14, N'�������', N'�������', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (15, N'�����', N'�������', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (16, N'��������', N'��������', 9, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (17, N'���������', N'�������', 10, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (18, N'�������', N'��������', 10, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (19, N'�����', N'�����������', 5, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (20, N'���������', N'��������', 7, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (21, N'�����', N'�����', 4, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (22, N'�����', N'�����������', 6, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (23, N'������', N'��������', 6, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (24, N'����', N'��������', 3, 2)
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Id_Group], [Term]) VALUES (25, N'�����', N'���������', 5, 2)
SET IDENTITY_INSERT [dbo].[Students] OFF
/****** Object:  Table [dbo].[S_Cards]    Script Date: 05/27/2016 23:51:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Cards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Student] [int] NOT NULL,
	[Id_Book] [int] NOT NULL,
	[DateOut] [smalldatetime] NOT NULL,
	[DateIn] [smalldatetime] NULL,
	[Id_Lib] [int] NOT NULL,
 CONSTRAINT [PK_S_Cards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[S_Cards] ON
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (1, 2, 1, CAST(0x90A20000 AS SmallDateTime), CAST(0x90BC0000 AS SmallDateTime), 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (2, 17, 18, CAST(0x8F360000 AS SmallDateTime), NULL, 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (3, 6, 3, CAST(0x90880000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (4, 21, 4, CAST(0x906E0000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (5, 3, 1, CAST(0x8F2B0000 AS SmallDateTime), CAST(0x907F0000 AS SmallDateTime), 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (6, 7, 11, CAST(0x90B20000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (7, 16, 14, CAST(0x90780000 AS SmallDateTime), NULL, 1)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (8, 11, 6, CAST(0x90960000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (9, 17, 2, CAST(0x912B0000 AS SmallDateTime), NULL, 2)
INSERT [dbo].[S_Cards] ([Id], [Id_Student], [Id_Book], [DateOut], [DateIn], [Id_Lib]) VALUES (10, 10, 13, CAST(0x90960000 AS SmallDateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[S_Cards] OFF
/****** Object:  ForeignKey [FK_Books_Authors]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([Id_Author])
REFERENCES [dbo].[Authors] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
/****** Object:  ForeignKey [FK_Books_Categories]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([Id_Category])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
/****** Object:  ForeignKey [FK_Books_Press]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Press] FOREIGN KEY([Id_Press])
REFERENCES [dbo].[Press] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Press]
GO
/****** Object:  ForeignKey [FK_Books_Themes]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Themes] FOREIGN KEY([Id_Themes])
REFERENCES [dbo].[Themes] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Themes]
GO
/****** Object:  ForeignKey [FK_Groups_Faculties]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Faculties] FOREIGN KEY([Id_Faculty])
REFERENCES [dbo].[Faculties] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Faculties]
GO
/****** Object:  ForeignKey [FK_S_Cards_Books]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[S_Cards]  WITH CHECK ADD  CONSTRAINT [FK_S_Cards_Books] FOREIGN KEY([Id_Book])
REFERENCES [dbo].[Books] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[S_Cards] CHECK CONSTRAINT [FK_S_Cards_Books]
GO
/****** Object:  ForeignKey [FK_S_Cards_Libs]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[S_Cards]  WITH CHECK ADD  CONSTRAINT [FK_S_Cards_Libs] FOREIGN KEY([Id_Lib])
REFERENCES [dbo].[Libs] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[S_Cards] CHECK CONSTRAINT [FK_S_Cards_Libs]
GO
/****** Object:  ForeignKey [FK_S_Cards_Students]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[S_Cards]  WITH CHECK ADD  CONSTRAINT [FK_S_Cards_Students] FOREIGN KEY([Id_Student])
REFERENCES [dbo].[Students] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[S_Cards] CHECK CONSTRAINT [FK_S_Cards_Students]
GO
/****** Object:  ForeignKey [FK_Students_Groups]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Groups] FOREIGN KEY([Id_Group])
REFERENCES [dbo].[Groups] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Groups]
GO
/****** Object:  ForeignKey [FK_T_Cards_Books]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[T_Cards]  WITH CHECK ADD  CONSTRAINT [FK_T_Cards_Books] FOREIGN KEY([Id_Book])
REFERENCES [dbo].[Books] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[T_Cards] CHECK CONSTRAINT [FK_T_Cards_Books]
GO
/****** Object:  ForeignKey [FK_T_Cards_Libs]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[T_Cards]  WITH CHECK ADD  CONSTRAINT [FK_T_Cards_Libs] FOREIGN KEY([Id_Lib])
REFERENCES [dbo].[Libs] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[T_Cards] CHECK CONSTRAINT [FK_T_Cards_Libs]
GO
/****** Object:  ForeignKey [FK_T_Cards_Teachers]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[T_Cards]  WITH CHECK ADD  CONSTRAINT [FK_T_Cards_Teachers] FOREIGN KEY([Id_Teacher])
REFERENCES [dbo].[Teachers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[T_Cards] CHECK CONSTRAINT [FK_T_Cards_Teachers]
GO
/****** Object:  ForeignKey [FK_Teachers_Departments]    Script Date: 05/27/2016 23:51:41 ******/
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Departments] FOREIGN KEY([Id_Dep])
REFERENCES [dbo].[Departments] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Departments]
GO

--�������:
--�������� ������������ � ����� ������� �� ������� �� ���.
--�������� ����� ���-�� ����, ������ ���������� ���������� '����������������'.
--������� ���-�� ���� � ����� ������� ���� ���� �� ������� �� ����������� '�����','�����' � '�����-�����'.
--������� ���������� � ����� �� ���������������� � ���������� ����������� �������.
--������� �� ����� ���-�� ������ ���� �� ������ �� ������.
--�������� ������������ � ����� ������ ����� ��� ������� �� ���.
--�������� �����, ������� ����� � ������������� � �������� (��������� ����������).
--�������� �������� ����� � ������������ ���-��� ������� �� ������� �� �����������.(� ������ ����� �������� �� �������������, ����� ���� ������� ���� ������ ������ ������ �� ������)
--�������� ������ ����� ���������� ����� � ���������.
--�������� ������� (department), ������� ����� ���������� ���-�� ����.
--�������� ��������, ����� ���������� ����� ��������������