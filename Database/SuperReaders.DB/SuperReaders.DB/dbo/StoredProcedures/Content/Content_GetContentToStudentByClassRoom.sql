CREATE PROCEDURE [dbo].[Content_GetContentToStudentByClassRoom]
	@pIdClassRoom AS INT, 
	@pIdContent AS INT
AS
BEGIN
	SELECT
		[IdClassRoom],
		[IdContent],
		[IsAssignment]
	FROM [ContentDetail] 
	WHERE IdContent = @pIdContent AND IdClassRoom = @pIdClassRoom
END