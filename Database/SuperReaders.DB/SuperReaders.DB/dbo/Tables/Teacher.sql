CREATE TABLE [Teacher]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdUser] int NOT NULL,
	[IdClassRoom] int NOT NULL
)
GO
ALTER TABLE [Teacher] ADD CONSTRAINT [FK_Teacher_User]
	FOREIGN KEY ([IdUser]) REFERENCES [User] ([Id]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Teacher] ADD CONSTRAINT [FK_Teacher_ClassRoom]
FOREIGN KEY ([IdClassRoom]) REFERENCES [ClassRoom] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [Teacher] 
 ADD CONSTRAINT [PK_Teacher]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_Teacher_User] 
 ON [Teacher] ([IdUser] ASC)
 GO
CREATE NONCLUSTERED INDEX [IXFK_Teacher_ClassRoom] 
 ON [Teacher] ([IdClassRoom] ASC)
 GO
