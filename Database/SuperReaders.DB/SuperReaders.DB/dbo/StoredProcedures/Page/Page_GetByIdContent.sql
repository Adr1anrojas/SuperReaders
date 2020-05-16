CREATE PROCEDURE [dbo].[Page_GetByIdContent]
	@pIdContent AS INT
AS
BEGIN
	SELECT Id, Text, IdContent
	FROM Page
	WHERE IdContent = @pIdContent
END