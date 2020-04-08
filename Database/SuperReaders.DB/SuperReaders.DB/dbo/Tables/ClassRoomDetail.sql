CREATE TABLE [ClassRoomDetail]
(
	[IdClassRoom] int NOT NULL,
	[IdStudent] int NOT NULL
)
GO
ALTER TABLE [ClassRoomDetail] ADD CONSTRAINT [FK_ClassRoomDetail_ClassRoom]
	FOREIGN KEY ([IdClassRoom]) REFERENCES [ClassRoom] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
ALTER TABLE [ClassRoomDetail] ADD CONSTRAINT [FK_ClassRoomDetail_Student_02]
	FOREIGN KEY ([IdStudent]) REFERENCES [Student] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
CREATE NONCLUSTERED INDEX [IXFK_ClassRoomDetail_ClassRoom] 
 ON [ClassRoomDetail] ([IdClassRoom] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_ClassRoomDetail_Student] 
 ON [ClassRoomDetail] ([IdStudent] ASC)
GO
CREATE NONCLUSTERED INDEX [IXFK_ClassRoomDetail_Student_02] 
 ON [ClassRoomDetail] ([IdStudent] ASC)