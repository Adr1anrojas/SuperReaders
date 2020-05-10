CREATE PROCEDURE [dbo].[Content_CreateStudentContent]
	@pIdStudent AS INT,
	@pId AS INT
AS
BEGIN
	INSERT INTO StudentContent
	(
		IdStudent, 
		IdContent, 
		TimeReading, 
		CurrentPage, 
		DateStart, 
		DateFinish, 
		IsFinish
	)
	VALUES 
	(
		@pIdStudent, 
		@pId, 
		0, 
		1, 
		GETDATE(), 
		NULL, 
		0
	)
	DECLARE @Id AS INT
	SELECT @Id = CAST(IDENT_CURRENT('StudentContent') AS INT)
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
	WHERE IdStudentContent = @Id
END
