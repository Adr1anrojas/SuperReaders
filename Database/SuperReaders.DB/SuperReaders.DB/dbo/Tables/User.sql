CREATE TABLE [User]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[FirstName] nvarchar(50) NOT NULL,
	[LastName] nvarchar(50) NOT NULL,
	[UserName] nvarchar(50) NOT NULL,
	[Email] nvarchar(50) NULL,
	[Password] VARBINARY(MAX) NOT NULL,
	[Status] bit NOT NULL,
	[Role] nvarchar(50) NOT NULL,
	[BirthDate] date NOT NULL,
	[IdSchool] int NOT NULL
)
GO
ALTER TABLE [User] ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC)
GO
ALTER TABLE [User] ADD CONSTRAINT [FK_User_School]
	FOREIGN KEY ([IdSchool]) REFERENCES [School] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
CREATE NONCLUSTERED INDEX [IXFK_User_School] 
 ON [User] ([IdSchool] ASC)
GO