﻿CREATE TABLE [Page]
(
	[Id] int NOT NULL IDENTITY (1, 1),
	[Text] nvarchar(500) NOT NULL,
	[IdContent] int NOT NULL
)
GO
ALTER TABLE [Page] ADD CONSTRAINT [FK_Page_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [Page] 
 ADD CONSTRAINT [PK_Page]
	PRIMARY KEY CLUSTERED ([Id] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_Page_Content] 
 ON [Page] ([IdContent] ASC)