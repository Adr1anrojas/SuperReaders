CREATE PROCEDURE [dbo].[Content_GetStudentContent]
	@pIdStudent AS INT,
	@pId AS INT
AS
BEGIN
	SELECT
		IdStudentContent,
		IdStudent, 
		IdContent, 
		TimeReading, 
		CurrentPage, 
		DateStart, 
		DateFinish, 
		IsFinish
	FROM StudentContent
	WHERE IdStudent = @pIdStudent AND IdContent = @pId
END
