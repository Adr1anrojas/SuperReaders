CREATE PROCEDURE [dbo].[Content_AddContentToStudentByClassRoom]
	@pIdClassRoom AS INT, 
	@pIdContent AS INT
AS
BEGIN
	INSERT INTO 
	[ContentDetail]
	(
		[IdClassRoom],
		[IdContent],
		[IsAssignment]
	)
	VALUES 
	(
		@pIdClassRoom,
		@pIdContent,
		1
	)
END

