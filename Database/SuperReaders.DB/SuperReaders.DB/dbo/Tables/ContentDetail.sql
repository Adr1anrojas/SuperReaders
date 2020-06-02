CREATE TABLE [ContentDetail]
(
	[IdClassRoom] int NOT NULL,
	[IdContent] int NOT NULL, 
    [IsAssignment] BIT NOT NULL DEFAULT 0
)
GO
ALTER TABLE [ContentDetail] ADD CONSTRAINT [FK_ContentDetail_ClassRoom]
	FOREIGN KEY ([IdClassRoom]) REFERENCES [ClassRoom] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [ContentDetail] ADD CONSTRAINT [FK_ContentDetail_Content]
	FOREIGN KEY ([IdContent]) REFERENCES [Content] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
CREATE NONCLUSTERED INDEX [IXFK_ContentDetail_ClassRoom] 
 ON [ContentDetail] ([IdClassRoom] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_ContentDetail_Content] 
 ON [ContentDetail] ([IdContent] ASC)