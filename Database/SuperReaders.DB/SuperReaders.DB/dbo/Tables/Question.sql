CREATE TABLE [Question]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdContent] int NOT NULL,
	[Text] nvarchar(MAX) NOT NULL
)
GO
ALTER TABLE [Question] ADD CONSTRAINT [FK_Question_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [Question] 
 ADD CONSTRAINT [PK_Question]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_Question_Content] 
 ON [Question] ([IdContent] ASC)