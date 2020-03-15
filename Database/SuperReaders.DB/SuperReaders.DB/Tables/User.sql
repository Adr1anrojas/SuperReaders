﻿CREATE TABLE [User] (
	[Id] INT IDENTITY(1,1) NOT NULL,
	[IdSchool] INT NOT NULL,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] VARCHAR(50) NOT NULL,
	[UserName] NVARCHAR(50) NOT NULL,
	[Password] VARCHAR(50) NOT NULL,
	[Status] BIT NOT NULL ,
	[Role] VARCHAR(10) NOT NULL,
	[BirthDate] DATE NULL,
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_User_School] FOREIGN KEY ([IdSchool]) REFERENCES [dbo].[School] ([Id])
);
