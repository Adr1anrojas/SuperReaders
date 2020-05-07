CREATE PROCEDURE [dbo].[Question_GetByIdContent]
	@pIdContent AS INT
AS
BEGIN
	SELECT Id, Text, IdContent
	FROM Question
	WHERE IdContent = @pIdContent
END

