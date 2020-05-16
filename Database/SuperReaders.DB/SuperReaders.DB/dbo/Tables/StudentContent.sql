CREATE TABLE [StudentContent]
(
	[IdStudentContent] int NOT NULL IDENTITY (1, 1),
	[IdStudent] int NOT NULL,
	[IdContent] int NOT NULL,
	[TimeReading] int NOT NULL,
	[CurrentPage] int NOT NULL,
	[DateStart] datetime NOT NULL,
	[DateFinish] datetime NULL,
	[IsFinish] bit NOT NULL
)
GO
ALTER TABLE [StudentContent] ADD CONSTRAINT [FK_StudentContent_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [StudentContent] ADD CONSTRAINT [FK_StudentContent_Student]
	FOREIGN KEY ([IdStudent]) REFERENCES [Student] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [StudentContent] 
 ADD CONSTRAINT [PK_StudentContent]
	PRIMARY KEY CLUSTERED ([IdStudentContent] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_StudentContent_Content] 
 ON [StudentContent] ([IdContent] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_StudentContent_Student] 
 ON [StudentContent] ([IdStudent] ASC)