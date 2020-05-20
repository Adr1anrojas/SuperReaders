CREATE PROCEDURE [dbo].[Content_GetContentByPreferenceStudent]
	@pIdStudent AS INT
AS	
BEGIN
	SELECT 
		IdTypeContent 
	FROM StudentTypeContent
	WHERE IdStudent = @pIdStudent
END