CREATE TABLE [Answer]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdStudent] int NOT NULL,
	[Text] nvarchar(500) NOT NULL
)
GO
ALTER TABLE [Answer] 
 ADD CONSTRAINT [PK_Answer]
	PRIMARY KEY CLUSTERED ([Id] ASC)