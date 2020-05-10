CREATE TABLE [Content]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Title] nvarchar(100) NOT NULL,
	[IdTypeContent] int NOT NULL,
	[Status] BIT NOT NULL
)
GO
ALTER TABLE [Content] ADD CONSTRAINT [FK_Content_TypeContent]
	FOREIGN KEY ([IdTypeContent]) REFERENCES [TypeContent] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [Content] 
 ADD CONSTRAINT [PK_Content]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_Content_TypeContent] 
 ON [Content] ([IdTypeContent] ASC)