CREATE PROC ContentDetail_Create
@pIdContent AS INT
AS
	BEGIN
		INSERT INTO [ContentDetail]([IdContent]) VALUES (@pIdContent)
	END