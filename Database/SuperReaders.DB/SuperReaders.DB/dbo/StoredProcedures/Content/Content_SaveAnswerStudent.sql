CREATE PROCEDURE [dbo].[Content_SaveAnswerStudent]
	@pIdStudent AS INT,
	@pIdAnswer AS INT
AS
BEGIN
	INSERT INTO StudentAnswer 
	(
		IdStudent,
		IdAnswer
	)
	VALUES
	(
		@pIdStudent,
		@pIdAnswer
	)
END