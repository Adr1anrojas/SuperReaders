CREATE TABLE [TypeContent]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Name] varchar(50) NOT NULL
)
GO
ALTER TABLE [TypeContent] 
 ADD CONSTRAINT [PK_TypeContent]
	PRIMARY KEY CLUSTERED ([Id] ASC)