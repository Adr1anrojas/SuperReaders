CREATE TABLE [dbo].[OptionQuestion]
(
	[IdQuestion] INT NOT NULL,
	[Option] CHAR not null
)
GO
ALTER TABLE [OptionQuestion] ADD CONSTRAINT [FK_IdQuestion]
	FOREIGN KEY ([IdQuestion]) REFERENCES [Question] ([Id]) ON DELETE No Action ON UPDATE No Action
GO
