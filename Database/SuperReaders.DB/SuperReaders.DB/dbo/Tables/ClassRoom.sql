CREATE TABLE [ClassRoom]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Name] nvarchar(50) NOT NULL,
	[Status] bit NOT NULL,
)
GO
ALTER TABLE [ClassRoom] ADD CONSTRAINT [PK_ClassRoom] PRIMARY KEY CLUSTERED ([Id] ASC)
