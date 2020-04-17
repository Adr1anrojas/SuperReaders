CREATE TABLE [Answer]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Text] NVARCHAR(MAX) NOT NULL,
	[IsCorrect] BIT NOT NULL,
	[IdQuestion] int NOT NULL
)
GO
ALTER TABLE [Answer] 
 ADD CONSTRAINT [PK_Answer]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
ALTER TABLE [Answer] ADD CONSTRAINT [FK_Answer_Question]
	FOREIGN KEY ([IdQuestion]) REFERENCES [Question] ([Id]) ON DELETE No Action ON UPDATE No Action
	GO
CREATE NONCLUSTERED INDEX [IXFK_Answer_Question] 
 ON [Answer] ([IdQuestion] ASC)