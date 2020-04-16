/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.0 		*/
/*  Created On : 15-Mar-2020 6:22:41 PM 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */
use master
GO
CREATE DATABASE ReadersDB
GO
USE ReadersDB
Go
IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Admin_User]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Admin] DROP CONSTRAINT [FK_Admin_User]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ClassRoom_Teacher]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ClassRoom] DROP CONSTRAINT [FK_ClassRoom_Teacher]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ClassRoomDetail_ClassRoom]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ClassRoomDetail] DROP CONSTRAINT [FK_ClassRoomDetail_ClassRoom]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ClassRoomDetail_Student_02]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ClassRoomDetail] DROP CONSTRAINT [FK_ClassRoomDetail_Student_02]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Content_TypeContent]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Content] DROP CONSTRAINT [FK_Content_TypeContent]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ContentDetail_ClassRoom]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ContentDetail] DROP CONSTRAINT [FK_ContentDetail_ClassRoom]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ContentDetail_Content]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ContentDetail] DROP CONSTRAINT [FK_ContentDetail_Content]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Page_Content]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Page] DROP CONSTRAINT [FK_Page_Content]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Question_Content]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Question] DROP CONSTRAINT [FK_Question_Content]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_QuestionAnswer_Question]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [QuestionAnswer] DROP CONSTRAINT [FK_QuestionAnswer_Question]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Answer]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [QuestionAnswer] DROP CONSTRAINT [FK_Answer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Student_User]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Student] DROP CONSTRAINT [FK_Student_User]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_StudentContent_Content]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [StudentContent] DROP CONSTRAINT [FK_StudentContent_Content]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_StudentContent_Student]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [StudentContent] DROP CONSTRAINT [FK_StudentContent_Student]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_User_School]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [User] DROP CONSTRAINT [FK_User_School]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Admin]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Admin]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Answer]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Answer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Answer]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Answer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ClassRoom]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ClassRoom]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ClassRoomDetail]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ClassRoomDetail]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Content]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Content]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ContentDetail]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ContentDetail]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Page]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Page]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Question]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Question]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[QuestionAnswer]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [QuestionAnswer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[School]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [School]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Student]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Student]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[StudentContent]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [StudentContent]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Teacher]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Teacher]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[TypeContent]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [TypeContent]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[User]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [User]
GO

/* Create Tables */

CREATE TABLE [Admin]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdUser] int NOT NULL
)
GO

CREATE TABLE [Answer]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdStudent] int NOT NULL,
	[Answer] char not null,
)
GO

CREATE TABLE [ClassRoom]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Name] nvarchar(50) NOT NULL,
	[IdTeacher] int NOT NULL,
	[Status] bit NOt NULL
)
GO

CREATE TABLE [ClassRoomDetail]
(
	[IdClassRoom] int NOT NULL,
	[IdStudent] int NOT NULL
)
GO

CREATE TABLE [Content]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Title] nvarchar(100) NOT NULL,
	[IdTypeContent] int NOT NULL,
        [Status] bit NOT NULL
)
GO

CREATE TABLE [ContentDetail]
(
	[IdClassRoom] int NOT NULL,
	[IdContent] int NOT NULL
)
GO

CREATE TABLE [Page]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Text] nvarchar(500) NOT NULL,
	[IdContent] int NOT NULL
)
GO

CREATE TABLE [Question]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdContent] int NOT NULL,
	[Text] nvarchar(100) NOT NULL
)
GO

CREATE TABLE [OptionQuestion]
(
	[idQuestion] int not null,
	[Option] char not null
)
GO

CREATE TABLE [QuestionAnswer]
(
	[IdQuestion] int NOT NULL,
	[Answer] char NOT NULL
)
GO

CREATE TABLE [School]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Name] nvarchar(50) NOT NULL,
	[Address] nvarchar(200) NOT NULL,
	[Phone] nvarchar(50) NOT NULL
)
GO

CREATE TABLE [Student]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdUser] int NOT NULL
)
GO

CREATE TABLE [StudentContent]
(
	[IdStudentContent] int NOT NULL IDENTITY (1, 1),
	[IdStudent] int NOT NULL,
	[IdContent] int NOT NULL,
	[TimeReading] int NOT NULL,
	[CurrentPage] int NOT NULL,
	[DateStart] datetime NOT NULL,
	[DateFinish] datetime NOT NULL,
	[IsFinish] bit NOT NULL
)
GO

CREATE TABLE [Teacher]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdUser] int NOT NULL
)
GO

CREATE TABLE [TypeContent]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Nombre] varchar(50) NOT NULL
)
GO

CREATE TABLE [User]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[FirstName] nvarchar(50) NOT NULL,
	[LastName] nvarchar(50) NOT NULL,
	[UserName] nvarchar(50) NOT NULL,
	[Email] nvarchar(50) NULL,
	[Password] nvarchar(50) NOT NULL,
	[Status] bit NOT NULL,
	[Role] nvarchar(50) NOT NULL,
	[BirthDate] date NOT NULL,
	[IdSchool] int NOT NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [Admin] 
 ADD CONSTRAINT [PK_Admin]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Admin_User] 
 ON [Admin] ([IdUser] ASC)
GO

ALTER TABLE [Answer] 
 ADD CONSTRAINT [PK_Answer]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

ALTER TABLE [ClassRoom] 
 ADD CONSTRAINT [PK_ClassRoom]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_ClassRoom_Teacher] 
 ON [ClassRoom] ([IdTeacher] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_ClassRoomDetail_ClassRoom] 
 ON [ClassRoomDetail] ([IdClassRoom] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_ClassRoomDetail_Student] 
 ON [ClassRoomDetail] ([IdStudent] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_ClassRoomDetail_Student_02] 
 ON [ClassRoomDetail] ([IdStudent] ASC)
GO

ALTER TABLE [Content] 
 ADD CONSTRAINT [PK_Content]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Content_TypeContent] 
 ON [Content] ([IdTypeContent] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_ContentDetail_ClassRoom] 
 ON [ContentDetail] ([IdClassRoom] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_ContentDetail_Content] 
 ON [ContentDetail] ([IdContent] ASC)
GO

ALTER TABLE [Page] 
 ADD CONSTRAINT [PK_Page]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Page_Content] 
 ON [Page] ([IdContent] ASC)
GO

ALTER TABLE [Question] 
 ADD CONSTRAINT [PK_Question]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Question_Content] 
 ON [Question] ([IdContent] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_QuestionAnswer_Question] 
 ON [QuestionAnswer] ([IdQuestion] ASC)
GO

ALTER TABLE [School] 
 ADD CONSTRAINT [PK_School]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

ALTER TABLE [Student] 
 ADD CONSTRAINT [PK_Student]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Student_User] 
 ON [Student] ([IdUser] ASC)
GO

ALTER TABLE [StudentContent] 
 ADD CONSTRAINT [PK_StudentContent]
	PRIMARY KEY CLUSTERED ([IdStudentContent] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_StudentContent_Content] 
 ON [StudentContent] ([IdContent] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_StudentContent_Student] 
 ON [StudentContent] ([IdStudent] ASC)
GO

ALTER TABLE [Teacher] 
 ADD CONSTRAINT [PK_Teacher]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Teacher_User] 
 ON [Teacher] ([IdUser] ASC)
GO

ALTER TABLE [TypeContent] 
 ADD CONSTRAINT [PK_TypeContent]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

ALTER TABLE [User] 
 ADD CONSTRAINT [PK_User]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_User_School] 
 ON [User] ([IdSchool] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [Admin] ADD CONSTRAINT [FK_Admin_User]
	FOREIGN KEY ([IdUser]) REFERENCES [User] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Teacher] ADD CONSTRAINT [FK_Teacher_User]
	FOREIGN KEY ([IdUser]) REFERENCES [User] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ClassRoom] ADD CONSTRAINT [FK_ClassRoom_Teacher]
	FOREIGN KEY ([IdTeacher]) REFERENCES [Teacher] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ClassRoomDetail] ADD CONSTRAINT [FK_ClassRoomDetail_ClassRoom]
	FOREIGN KEY ([IdClassRoom]) REFERENCES [ClassRoom] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ClassRoomDetail] ADD CONSTRAINT [FK_ClassRoomDetail_Student_02]
	FOREIGN KEY ([IdStudent]) REFERENCES [Student] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Content] ADD CONSTRAINT [FK_Content_TypeContent]
	FOREIGN KEY ([IdTypeContent]) REFERENCES [TypeContent] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ContentDetail] ADD CONSTRAINT [FK_ContentDetail_ClassRoom]
	FOREIGN KEY ([IdClassRoom]) REFERENCES [ClassRoom] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ContentDetail] ADD CONSTRAINT [FK_ContentDetail_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Page] ADD CONSTRAINT [FK_Page_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Question] ADD CONSTRAINT [FK_Question_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [QuestionAnswer] ADD CONSTRAINT [FK_QuestionAnswer_Question]
	FOREIGN KEY ([IdQuestion]) REFERENCES [Question] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [OptionQuestion] ADD CONSTRAINT [FK_IdQuestion]
	FOREIGN KEY ([IdQuestion]) REFERENCES [Question] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [Student] ADD CONSTRAINT [FK_Student_User]
	FOREIGN KEY ([IdUser]) REFERENCES [User] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [StudentContent] ADD CONSTRAINT [FK_StudentContent_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [StudentContent] ADD CONSTRAINT [FK_StudentContent_Student]
	FOREIGN KEY ([IdStudent]) REFERENCES [Student] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [User] ADD CONSTRAINT [FK_User_School]
	FOREIGN KEY ([IdSchool]) REFERENCES [School] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

/* Create Table Comments */

if exists (select * from ::fn_listextendedproperty ('MS_Description', 'SCHEMA', 'dbo', 'table', 'User', NULL, NULL)) 
begin 
  EXEC sys.sp_updateextendedproperty 'MS_Description', 'This table storage the data of User of School', 'SCHEMA', 'dbo', 'table', 'User' 
end 
else 
begin 
  EXEC sys.sp_addextendedproperty 'MS_Description', 'This table storage the data of User of School', 'SCHEMA', 'dbo', 'table', 'User' 
end
GO
