CREATE PROCEDURE [dbo].[Content_UpdateFinishContent]
@pId AS INT
AS
BEGIN
	UPDATE StudentContent
	SET 
	DateFinish = GETDATE(),
	IsFinish = 1
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