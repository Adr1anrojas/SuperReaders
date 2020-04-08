/* Create Tables */

CREATE TABLE [Admin]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[IdUser] int NOT NULL
)
GO
/* Create Foreign Key Constraints */

ALTER TABLE [Admin] ADD CONSTRAINT [FK_Admin_User]
	FOREIGN KEY ([IdUser]) REFERENCES [User] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [Admin] 
 ADD CONSTRAINT [PK_Admin]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_Admin_User] 
 ON [Admin] ([IdUser] ASC)