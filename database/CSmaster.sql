/*
 Navicat Premium Data Transfer

 Source Server         : fitriyani
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : 192.168.0.75:1433
 Source Catalog        : CSmaster
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 06/03/2023 08:01:11
*/


-- ----------------------------
-- Table structure for MapAksesMenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MapAksesMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[MapAksesMenu]
GO

CREATE TABLE [dbo].[MapAksesMenu] (
  [IDAkses] bigint  NOT NULL,
  [IDMenu] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[MapAksesMenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MapAksesMenu
-- ----------------------------
INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'1', N'1')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'1', N'7')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'1', N'14')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'1', N'15')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'2', N'1')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'2', N'2')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'3', N'1')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'3', N'2')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'3', N'3')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'4', N'9')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'4', N'11')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'4', N'20')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'5', N'9')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'5', N'11')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'5', N'12')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'5', N'14')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'5', N'15')
GO

INSERT INTO [dbo].[MapAksesMenu] ([IDAkses], [IDMenu]) VALUES (N'5', N'20')
GO


-- ----------------------------
-- Table structure for MstAkses
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstAkses]') AND type IN ('U'))
	DROP TABLE [dbo].[MstAkses]
GO

CREATE TABLE [dbo].[MstAkses] (
  [IDAkses] bigint  IDENTITY(1,1) NOT NULL,
  [CreatedBy] int  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [IsDelete] smallint  NOT NULL,
  [ModifiedBy] int  NULL,
  [ModifiedDate] datetime2(7)  NULL,
  [NamaAkses] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IDDivisi] bigint  NULL
)
GO

ALTER TABLE [dbo].[MstAkses] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstAkses
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstAkses] ON
GO

INSERT INTO [dbo].[MstAkses] ([IDAkses], [CreatedBy], [CreatedDate], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaAkses], [IDDivisi]) VALUES (N'1', N'1', N'2023-03-05 07:02:58.0000000', N'1', NULL, NULL, N'NEW MEMBER', NULL)
GO

INSERT INTO [dbo].[MstAkses] ([IDAkses], [CreatedBy], [CreatedDate], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaAkses], [IDDivisi]) VALUES (N'2', N'1', N'2023-03-05 07:03:27.0000000', N'1', NULL, NULL, N'SALES STAFF', NULL)
GO

INSERT INTO [dbo].[MstAkses] ([IDAkses], [CreatedBy], [CreatedDate], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaAkses], [IDDivisi]) VALUES (N'3', N'1', N'2023-03-05 07:03:47.0000000', N'1', NULL, NULL, N'SALES MANAGER', NULL)
GO

INSERT INTO [dbo].[MstAkses] ([IDAkses], [CreatedBy], [CreatedDate], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaAkses], [IDDivisi]) VALUES (N'4', N'1', N'2023-03-05 20:07:59.0000000', N'1', NULL, NULL, N'FINANCE STAFF', NULL)
GO

INSERT INTO [dbo].[MstAkses] ([IDAkses], [CreatedBy], [CreatedDate], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaAkses], [IDDivisi]) VALUES (N'5', N'1', N'2023-03-05 20:21:51.0000000', N'1', NULL, NULL, N'FINANCE SPV', NULL)
GO

SET IDENTITY_INSERT [dbo].[MstAkses] OFF
GO


-- ----------------------------
-- Table structure for MstCategory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstCategory]') AND type IN ('U'))
	DROP TABLE [dbo].[MstCategory]
GO

CREATE TABLE [dbo].[MstCategory] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [CategoryName] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[MstCategory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstCategory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstCategory] ON
GO

INSERT INTO [dbo].[MstCategory] ([id], [CategoryName]) VALUES (N'1', N'Chair')
GO

SET IDENTITY_INSERT [dbo].[MstCategory] OFF
GO


-- ----------------------------
-- Table structure for MstDivisi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstDivisi]') AND type IN ('U'))
	DROP TABLE [dbo].[MstDivisi]
GO

CREATE TABLE [dbo].[MstDivisi] (
  [IDDivisi] bigint  IDENTITY(1,1) NOT NULL,
  [CreatedBy] int  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [DeskripsiDivisi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsDelete] smallint  NOT NULL,
  [KodeDivisi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModifiedBy] int  NULL,
  [ModifiedDate] datetime2(7)  NULL,
  [NamaDivisi] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MstDivisi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstDivisi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstDivisi] ON
GO

SET IDENTITY_INSERT [dbo].[MstDivisi] OFF
GO


-- ----------------------------
-- Table structure for MstEmployee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstEmployee]') AND type IN ('U'))
	DROP TABLE [dbo].[MstEmployee]
GO

CREATE TABLE [dbo].[MstEmployee] (
  [IDEmployee] bigint  IDENTITY(1,1) NOT NULL,
  [Email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FirstName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [LastName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MstEmployee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstEmployee
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstEmployee] ON
GO

SET IDENTITY_INSERT [dbo].[MstEmployee] OFF
GO


-- ----------------------------
-- Table structure for MstMenu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstMenu]') AND type IN ('U'))
	DROP TABLE [dbo].[MstMenu]
GO

CREATE TABLE [dbo].[MstMenu] (
  [IDMenu] bigint  IDENTITY(1,1) NOT NULL,
  [CreatedBy] int  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [EndPoints] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsDelete] smallint  NOT NULL,
  [ModifiedBy] int  NULL,
  [ModifiedDate] datetime2(7)  NULL,
  [NamaMenu] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PathMenu] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IDMenuHeader] bigint  NULL
)
GO

ALTER TABLE [dbo].[MstMenu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstMenu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstMenu] ON
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'1', N'1', N'2023-03-05 06:11:12.0000000', N'localhost:8080', N'1', NULL, NULL, N'CATEGORY', N'/api/menu/category', N'1')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'2', N'1', N'2023-03-05 06:11:30.0000000', N'localhost:8080', N'1', NULL, NULL, N'SALES TWO', N'/api/menu/salestwo', N'1')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'3', N'1', N'2023-03-05 06:12:27.0000000', N'localhost:8080', N'1', NULL, NULL, N'SALES THREE', N'/api/menu/salesthree', N'1')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'4', N'1', N'2023-03-05 06:12:37.0000000', N'localhost:8080', N'1', NULL, NULL, N'SALES FOUR', N'/api/menu/salesfour', N'1')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'5', N'1', N'2023-03-05 06:13:23.0000000', N'localhost:8080', N'1', NULL, NULL, N'HR ONE', N'/api/menu/hrone', N'2')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'6', N'1', N'2023-03-05 06:13:31.0000000', N'localhost:8080', N'1', NULL, NULL, N'HR TWO', N'/api/mennu/hrtwo', N'2')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'7', N'1', N'2023-03-05 06:14:09.0000000', N'localhost:8080', N'1', NULL, NULL, N'HR THREE', N'/api/menu/hrthree', N'2')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'8', N'1', N'2023-03-05 06:14:16.0000000', N'localhost:8080', N'1', NULL, NULL, N'HR FOUR', N'/api/menu/hrfour', N'2')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'9', N'1', N'2023-03-05 06:14:56.0000000', N'localhost:8080', N'1', NULL, NULL, N'VISI', N'/api/menu/visi', N'5')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'11', N'1', N'2023-03-05 06:15:07.0000000', N'localhost:8080', N'1', NULL, NULL, N'MISI', N'/api/menu/misi', N'5')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'12', N'1', N'2023-03-05 06:15:41.0000000', N'localhost:8080', N'1', NULL, NULL, N'SLOGAN', N'/api/menu/slogan', N'5')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'13', N'1', N'2023-03-05 06:16:07.0000000', N'localhost:8080', N'1', NULL, NULL, N'FINANCE FOUR', N'/api/menu/financefour', N'5')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'14', N'1', N'2023-03-05 06:17:07.0000000', N'localhost:8080', N'1', NULL, NULL, N'STUDENTS', N'/api/school//v1/students', N'4')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'15', N'1', N'2023-03-05 06:17:37.0000000', N'localhost:8080', N'1', NULL, NULL, N'PRODUCT', N'/api/', N'4')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'17', N'1', N'2023-03-05 06:18:12.0000000', N'localhost:8080', N'1', NULL, NULL, N'AKSES', N'/api/menu/akses', N'3')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'18', N'1', N'2023-03-05 06:18:55.0000000', N'localhost:8080', N'1', NULL, NULL, N'USER', N'/api/menu/usr', N'3')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'19', N'1', N'2023-03-05 06:19:29.0000000', N'localhost:8080', N'1', NULL, NULL, N'DIVISI', N'/api/menu/divisi', N'3')
GO

INSERT INTO [dbo].[MstMenu] ([IDMenu], [CreatedBy], [CreatedDate], [EndPoints], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenu], [PathMenu], [IDMenuHeader]) VALUES (N'20', N'1', N'2023-03-05 07:05:10.0000000', N'locallhost:8080', N'1', NULL, NULL, N'CONTACT', N'/api/menu/contact', N'6')
GO

SET IDENTITY_INSERT [dbo].[MstMenu] OFF
GO


-- ----------------------------
-- Table structure for MstMenuHeader
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstMenuHeader]') AND type IN ('U'))
	DROP TABLE [dbo].[MstMenuHeader]
GO

CREATE TABLE [dbo].[MstMenuHeader] (
  [IDMenuHeader] bigint  IDENTITY(1,1) NOT NULL,
  [CreatedBy] int  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [DeskripsiMenuHeader] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsDelete] smallint  NOT NULL,
  [ModifiedBy] int  NULL,
  [ModifiedDate] datetime2(7)  NULL,
  [NamaMenuHeader] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MstMenuHeader] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstMenuHeader
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstMenuHeader] ON
GO

INSERT INTO [dbo].[MstMenuHeader] ([IDMenuHeader], [CreatedBy], [CreatedDate], [DeskripsiMenuHeader], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenuHeader]) VALUES (N'1', N'1', N'2023-03-05 06:27:25.0000000', N'YANG BERHUBUNGAN DENGAN MODUL ', N'1', NULL, NULL, N'SALES')
GO

INSERT INTO [dbo].[MstMenuHeader] ([IDMenuHeader], [CreatedBy], [CreatedDate], [DeskripsiMenuHeader], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenuHeader]) VALUES (N'2', N'1', N'2023-03-05 06:27:52.0000000', N'YANG BERHUBUNGAN DENGAN MODUL HUMAN RESOURCE', N'1', NULL, NULL, N'HRD')
GO

INSERT INTO [dbo].[MstMenuHeader] ([IDMenuHeader], [CreatedBy], [CreatedDate], [DeskripsiMenuHeader], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenuHeader]) VALUES (N'3', N'1', N'2023-03-05 06:28:00.0000000', N'YANG BERHUBUNGAN DENGAN MODUL USER MANAGEMENT', N'1', NULL, NULL, N'USER MANAGEMENT')
GO

INSERT INTO [dbo].[MstMenuHeader] ([IDMenuHeader], [CreatedBy], [CreatedDate], [DeskripsiMenuHeader], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenuHeader]) VALUES (N'4', N'1', N'2023-03-05 06:28:50.0000000', N'UNTUK SAMPLE SAJA', N'1', NULL, NULL, N'PRODUCT')
GO

INSERT INTO [dbo].[MstMenuHeader] ([IDMenuHeader], [CreatedBy], [CreatedDate], [DeskripsiMenuHeader], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenuHeader]) VALUES (N'5', N'1', N'2023-03-05 06:29:11.0000000', N'YANG BERHUBUNGAN DENGAN MODUL PROFILE', N'1', NULL, NULL, N'PROFILE')
GO

INSERT INTO [dbo].[MstMenuHeader] ([IDMenuHeader], [CreatedBy], [CreatedDate], [DeskripsiMenuHeader], [IsDelete], [ModifiedBy], [ModifiedDate], [NamaMenuHeader]) VALUES (N'6', N'1', N'2023-03-05 06:29:26.0000000', N'UNTUK SEMUA USER', N'1', NULL, NULL, N'ABOUT')
GO

SET IDENTITY_INSERT [dbo].[MstMenuHeader] OFF
GO


-- ----------------------------
-- Table structure for MstStudent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstStudent]') AND type IN ('U'))
	DROP TABLE [dbo].[MstStudent]
GO

CREATE TABLE [dbo].[MstStudent] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [Email] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [FirstName] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [LastName] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MstStudent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstStudent
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstStudent] ON
GO

SET IDENTITY_INSERT [dbo].[MstStudent] OFF
GO


-- ----------------------------
-- Table structure for MstUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MstUser]') AND type IN ('U'))
	DROP TABLE [dbo].[MstUser]
GO

CREATE TABLE [dbo].[MstUser] (
  [IDUser] bigint  IDENTITY(1,1) NOT NULL,
  [CreatedBy] int  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [Email] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsDelete] smallint  NOT NULL,
  [LastLoginDate] datetime2(7)  NULL,
  [ModifiedBy] int  NULL,
  [ModifiedDate] datetime2(7)  NULL,
  [NamaLengkap] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NoHP] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PasswordCounter] int  NULL,
  [TanggalLahir] date  NULL,
  [Token] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TokenCounter] int  NULL,
  [UserName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IDAkses] bigint  NULL
)
GO

ALTER TABLE [dbo].[MstUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MstUser
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MstUser] ON
GO

INSERT INTO [dbo].[MstUser] ([IDUser], [CreatedBy], [CreatedDate], [Email], [IsDelete], [LastLoginDate], [ModifiedBy], [ModifiedDate], [NamaLengkap], [NoHP], [Password], [PasswordCounter], [TanggalLahir], [Token], [TokenCounter], [UserName], [IDAkses]) VALUES (N'1', N'1', N'2023-03-05 20:16:04.1320000', N'ramdan@gmail.com', N'1', N'2023-03-05 20:40:44.7810000', NULL, NULL, N'M. Esa Ramdani', N'12121313441', N'$2a$11$Rd9t1krU5G8DmWrd6MjWpejZhqdpKcHNYFeq3YuhuT0LxjwCqamDG', N'0', N'1992-12-25', N'$2a$11$unqpjkMYLn..ie/vLyBAjuWaCX5DvTPN8CZG8VoWsXFEvyf33s1d6', N'0', N'juaracoding1', N'5')
GO

INSERT INTO [dbo].[MstUser] ([IDUser], [CreatedBy], [CreatedDate], [Email], [IsDelete], [LastLoginDate], [ModifiedBy], [ModifiedDate], [NamaLengkap], [NoHP], [Password], [PasswordCounter], [TanggalLahir], [Token], [TokenCounter], [UserName], [IDAkses]) VALUES (N'2', N'1', N'2023-03-06 00:50:18.6190000', N'fitriyani07071@gmail.com', N'1', N'2023-03-06 07:47:38.8630000', NULL, NULL, N'Fitriyani', N'089507720776', N'$2a$11$GAkDP3RaamHWYZmzimKMieLymc/iiV2v5XRN8AuZ6PI3492DRTotO', N'0', N'2000-01-07', N'$2a$11$9vSYrlAg6toL2CLvRj8eC.nenrfftH5WS04IlOOA56aTrGl6GrJja', N'0', N'fitriyani07071', N'1')
GO

SET IDENTITY_INSERT [dbo].[MstUser] OFF
GO


-- ----------------------------
-- Table structure for SPRING_SESSION
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SPRING_SESSION]') AND type IN ('U'))
	DROP TABLE [dbo].[SPRING_SESSION]
GO

CREATE TABLE [dbo].[SPRING_SESSION] (
  [PRIMARY_ID] char(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SESSION_ID] char(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CREATION_TIME] bigint  NOT NULL,
  [LAST_ACCESS_TIME] bigint  NOT NULL,
  [MAX_INACTIVE_INTERVAL] int  NOT NULL,
  [EXPIRY_TIME] bigint  NOT NULL,
  [PRINCIPAL_NAME] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SPRING_SESSION] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SPRING_SESSION
-- ----------------------------
INSERT INTO [dbo].[SPRING_SESSION] ([PRIMARY_ID], [SESSION_ID], [CREATION_TIME], [LAST_ACCESS_TIME], [MAX_INACTIVE_INTERVAL], [EXPIRY_TIME], [PRINCIPAL_NAME]) VALUES (N'87a15e26-85be-4937-9df0-d8df3dc8cfd0', N'da635339-9408-4bd2-8138-55f0cd5850a1', N'1678062734173', N'1678064106025', N'1800', N'1678065906025', NULL)
GO


-- ----------------------------
-- Table structure for SPRING_SESSION_ATTRIBUTES
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SPRING_SESSION_ATTRIBUTES]') AND type IN ('U'))
	DROP TABLE [dbo].[SPRING_SESSION_ATTRIBUTES]
GO

CREATE TABLE [dbo].[SPRING_SESSION_ATTRIBUTES] (
  [SESSION_PRIMARY_ID] char(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ATTRIBUTE_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ATTRIBUTE_BYTES] image  NOT NULL
)
GO

ALTER TABLE [dbo].[SPRING_SESSION_ATTRIBUTES] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SPRING_SESSION_ATTRIBUTES
-- ----------------------------
INSERT INTO [dbo].[SPRING_SESSION_ATTRIBUTES] ([SESSION_PRIMARY_ID], [ATTRIBUTE_NAME], [ATTRIBUTE_BYTES]) VALUES (N'87a15e26-85be-4937-9df0-d8df3dc8cfd0', N'EMAIL', 0xACED0005740018666974726979616E69303730373140676D61696C2E636F6D)
GO

INSERT INTO [dbo].[SPRING_SESSION_ATTRIBUTES] ([SESSION_PRIMARY_ID], [ATTRIBUTE_NAME], [ATTRIBUTE_BYTES]) VALUES (N'87a15e26-85be-4937-9df0-d8df3dc8cfd0', N'HTML_MENU', 0xACED00057401763C6C693E3C6120687265663D2223223E50524F445543543C2F613E3C756C20636C6173733D226D656E752D64726F70646F776E223E3C6C693E3C6120687265663D222F6170692F7363686F6F6C2F2F76312F73747564656E7473223E53545544454E54533C2F613E3C2F6C693E3C6C693E3C6120687265663D222F6170692F223E50524F445543543C2F613E3C2F6C693E3C2F756C3E3C2F6C693E3C6C693E3C6120687265663D2223223E4852443C2F613E3C756C20636C6173733D226D656E752D64726F70646F776E223E3C6C693E3C6120687265663D222F6170692F6D656E752F68727468726565223E48522054485245453C2F613E3C2F6C693E3C2F756C3E3C2F6C693E3C6C693E3C6120687265663D2223223E53414C45533C2F613E3C756C20636C6173733D226D656E752D64726F70646F776E223E3C6C693E3C6120687265663D222F6170692F6D656E752F63617465676F7279223E43415445474F52593C2F613E3C2F6C693E3C2F756C3E3C2F6C693E)
GO

INSERT INTO [dbo].[SPRING_SESSION_ATTRIBUTES] ([SESSION_PRIMARY_ID], [ATTRIBUTE_NAME], [ATTRIBUTE_BYTES]) VALUES (N'87a15e26-85be-4937-9df0-d8df3dc8cfd0', N'NO_HP', 0xACED000574000C303839353037373230373736)
GO

INSERT INTO [dbo].[SPRING_SESSION_ATTRIBUTES] ([SESSION_PRIMARY_ID], [ATTRIBUTE_NAME], [ATTRIBUTE_BYTES]) VALUES (N'87a15e26-85be-4937-9df0-d8df3dc8cfd0', N'USR_ID', 0xACED00057372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002)
GO

INSERT INTO [dbo].[SPRING_SESSION_ATTRIBUTES] ([SESSION_PRIMARY_ID], [ATTRIBUTE_NAME], [ATTRIBUTE_BYTES]) VALUES (N'87a15e26-85be-4937-9df0-d8df3dc8cfd0', N'USR_NAME', 0xACED000574000E666974726979616E693037303731)
GO


-- ----------------------------
-- Uniques structure for table MapAksesMenu
-- ----------------------------
ALTER TABLE [dbo].[MapAksesMenu] ADD CONSTRAINT [UK61m8nb84ts4aymf0adi0hngv5] UNIQUE NONCLUSTERED ([IDAkses] ASC, [IDMenu] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstAkses
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstAkses]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table MstAkses
-- ----------------------------
ALTER TABLE [dbo].[MstAkses] ADD CONSTRAINT [PK__MstAkses__54B7D338EC9D3740] PRIMARY KEY CLUSTERED ([IDAkses])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstCategory
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstCategory]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table MstCategory
-- ----------------------------
ALTER TABLE [dbo].[MstCategory] ADD CONSTRAINT [PK__MstCateg__3213E83F1C91B6FA] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstDivisi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstDivisi]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table MstDivisi
-- ----------------------------
ALTER TABLE [dbo].[MstDivisi] ADD CONSTRAINT [PK__MstDivis__DF97AFD6C3E8676C] PRIMARY KEY CLUSTERED ([IDDivisi])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstEmployee
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstEmployee]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table MstEmployee
-- ----------------------------
ALTER TABLE [dbo].[MstEmployee] ADD CONSTRAINT [PK__MstEmplo__1348E88C719DDA0D] PRIMARY KEY CLUSTERED ([IDEmployee])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstMenu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstMenu]', RESEED, 20)
GO


-- ----------------------------
-- Primary Key structure for table MstMenu
-- ----------------------------
ALTER TABLE [dbo].[MstMenu] ADD CONSTRAINT [PK__MstMenu__089D3C2227882BA8] PRIMARY KEY CLUSTERED ([IDMenu])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstMenuHeader
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstMenuHeader]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table MstMenuHeader
-- ----------------------------
ALTER TABLE [dbo].[MstMenuHeader] ADD CONSTRAINT [PK__MstMenuH__37AECB62E5A268B3] PRIMARY KEY CLUSTERED ([IDMenuHeader])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstStudent
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstStudent]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table MstStudent
-- ----------------------------
ALTER TABLE [dbo].[MstStudent] ADD CONSTRAINT [PK__MstStude__3213E83FAC9C6224] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MstUser
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MstUser]', RESEED, 2)
GO


-- ----------------------------
-- Uniques structure for table MstUser
-- ----------------------------
ALTER TABLE [dbo].[MstUser] ADD CONSTRAINT [UK_oboap7j0f37yn6as1f4bdg8ge] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MstUser] ADD CONSTRAINT [UKoboap7j0f37yn6as1f4bdg8ge] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MstUser
-- ----------------------------
ALTER TABLE [dbo].[MstUser] ADD CONSTRAINT [PK__MstUser__EAE6D9DF2CE37520] PRIMARY KEY CLUSTERED ([IDUser])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table SPRING_SESSION
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [SPRING_SESSION_IX1]
ON [dbo].[SPRING_SESSION] (
  [SESSION_ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [SPRING_SESSION_IX2]
ON [dbo].[SPRING_SESSION] (
  [EXPIRY_TIME] ASC
)
GO

CREATE NONCLUSTERED INDEX [SPRING_SESSION_IX3]
ON [dbo].[SPRING_SESSION] (
  [PRINCIPAL_NAME] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table SPRING_SESSION
-- ----------------------------
ALTER TABLE [dbo].[SPRING_SESSION] ADD CONSTRAINT [SPRING_SESSION_PK] PRIMARY KEY CLUSTERED ([PRIMARY_ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SPRING_SESSION_ATTRIBUTES
-- ----------------------------
ALTER TABLE [dbo].[SPRING_SESSION_ATTRIBUTES] ADD CONSTRAINT [SPRING_SESSION_ATTRIBUTES_PK] PRIMARY KEY CLUSTERED ([SESSION_PRIMARY_ID], [ATTRIBUTE_NAME])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table MapAksesMenu
-- ----------------------------
ALTER TABLE [dbo].[MapAksesMenu] ADD CONSTRAINT [FKutfr2432txflhxixc2xot0cm] FOREIGN KEY ([IDMenu]) REFERENCES [dbo].[MstMenu] ([IDMenu]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[MapAksesMenu] ADD CONSTRAINT [FKia1giko3k3ge4a2kcikjxkpyg] FOREIGN KEY ([IDAkses]) REFERENCES [dbo].[MstAkses] ([IDAkses]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MstAkses
-- ----------------------------
ALTER TABLE [dbo].[MstAkses] ADD CONSTRAINT [FKgxejoj2u42dx4cgikmx46n21u] FOREIGN KEY ([IDDivisi]) REFERENCES [dbo].[MstDivisi] ([IDDivisi]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MstMenu
-- ----------------------------
ALTER TABLE [dbo].[MstMenu] ADD CONSTRAINT [FKj5kkux3pyvhfpewo2v2f5ei83] FOREIGN KEY ([IDMenuHeader]) REFERENCES [dbo].[MstMenuHeader] ([IDMenuHeader]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table MstUser
-- ----------------------------
ALTER TABLE [dbo].[MstUser] ADD CONSTRAINT [FKcciji28beqoqu0c84msjgwa07] FOREIGN KEY ([IDAkses]) REFERENCES [dbo].[MstAkses] ([IDAkses]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SPRING_SESSION_ATTRIBUTES
-- ----------------------------
ALTER TABLE [dbo].[SPRING_SESSION_ATTRIBUTES] ADD CONSTRAINT [SPRING_SESSION_ATTRIBUTES_FK] FOREIGN KEY ([SESSION_PRIMARY_ID]) REFERENCES [dbo].[SPRING_SESSION] ([PRIMARY_ID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

