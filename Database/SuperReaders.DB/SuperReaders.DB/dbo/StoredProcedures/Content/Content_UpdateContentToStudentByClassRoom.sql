CREATE PROCEDURE [dbo].[Content_UpdateContentToStudentByClassRoom]
	@pIdClassRoom AS INT, 
	@pIdContent AS INT,
	@pIsAssignment AS BIT
AS
BEGIN
	UPDATE [ContentDetail] 
	SET [IsAssignment] = @pIsAssignment
	WHERE IdContent = @pIdContent AND IdClassRoom = @pIdClassRoom
END