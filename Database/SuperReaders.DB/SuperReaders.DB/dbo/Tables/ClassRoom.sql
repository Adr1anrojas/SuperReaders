CREATE TABLE [ClassRoom]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Name] nvarchar(50) NOT NULL,
	[IdTeacher] int NOT NULL
)
GO
ALTER TABLE [ClassRoom] ADD CONSTRAINT [FK_ClassRoom_Teacher]
	FOREIGN KEY ([IdTeacher]) REFERENCES [Teacher] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [ClassRoom] 
 ADD CONSTRAINT [PK_ClassRoom]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_ClassRoom_Teacher] 
 ON [ClassRoom] ([IdTeacher] ASC)