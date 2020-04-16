CREATE TABLE [QuestionAnswer]
(
	[IdQuestion] int NOT NULL,
	[Answer] char NOT NULL
)
GO
ALTER TABLE [QuestionAnswer] ADD CONSTRAINT [FK_QuestionAnswer_Question]
	FOREIGN KEY ([IdQuestion]) REFERENCES [Question] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

GO
CREATE NONCLUSTERED INDEX [IXFK_QuestionAnswer_Question] 
 ON [QuestionAnswer] ([IdQuestion] ASC)