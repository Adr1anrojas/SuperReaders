CREATE PROCEDURE [dbo].[Content_UpdateTimeReading]
	@pId AS INT,
	@pTimeReading AS INT,
	@pCurrentPage AS INT
AS
BEGIN
	UPDATE StudentContent
	SET 
	TimeReading = @pTimeReading,
	CurrentPage = @pCurrentPage
	WHERE IdStudentContent = @pId
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
	WHERE IdStudentContent = @pId
END