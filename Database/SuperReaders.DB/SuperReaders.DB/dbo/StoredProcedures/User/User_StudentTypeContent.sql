CREATE PROCEDURE [dbo].[User_StudentTypeContent]
	@pIdStudent AS INT,
	@pIdTypeContent AS INT
AS
BEGIN
	INSERT INTO StudentTypeContent(IdStudent, IdTypeContent)
	VALUES(@pIdStudent, @pIdTypeContent)
END

