CREATE TABLE [dbo].StudentAnswer
(
	[Id] INT NOT NULL IDENTITY (1, 1),
	[IdStudent] int NOT NULL,
	[IdAnswer] int NOT NULL
)
GO
ALTER TABLE [StudentAnswer] 
 ADD CONSTRAINT [PK_StudentAnswer]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
ALTER TABLE [StudentAnswer] ADD CONSTRAINT [FK_StudentAnswer_Student]
	FOREIGN KEY ([IdStudent]) REFERENCES [Student] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [StudentAnswer] ADD CONSTRAINT [FK_StudentAnswer_Answer]
	FOREIGN KEY ([IdAnswer]) REFERENCES [Answer] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
CREATE NONCLUSTERED INDEX [IXFK_StudentAnswer_Student] 
 ON [StudentAnswer] ([IdStudent] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_StudentAnswer_Answer] 
 ON [StudentAnswer] ([IdAnswer] ASC)