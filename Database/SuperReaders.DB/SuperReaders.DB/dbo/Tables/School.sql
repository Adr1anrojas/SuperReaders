CREATE TABLE [School]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Name] nvarchar(50) NOT NULL,
	[Address] nvarchar(200) NOT NULL,
	[Phone] nvarchar(50) NOT NULL
)
GO
ALTER TABLE [School] 
 ADD CONSTRAINT [PK_School]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO