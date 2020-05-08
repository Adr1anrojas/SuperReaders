CREATE TABLE [dbo].[StudentTypeContent]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
	[IdStudent] INT NOT NULL,
	[IdTypeContent] INT NOT NULL
)
GO
ALTER TABLE [StudentTypeContent] ADD CONSTRAINT [FK_StudentTypeContent_Student]
	FOREIGN KEY ([IdStudent]) REFERENCES [Student] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [StudentTypeContent] ADD CONSTRAINT [FK_StudentTypeContent_TypeContent]
	FOREIGN KEY ([IdTypeContent]) REFERENCES [TypeContent] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
CREATE NONCLUSTERED INDEX [IXFK_StudentTypeContent_Student] 
 ON [StudentTypeContent] ([IdStudent] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_StudentTypeContent_TypeConten] 
 ON [StudentTypeContent] ([IdTypeContent] ASC)
