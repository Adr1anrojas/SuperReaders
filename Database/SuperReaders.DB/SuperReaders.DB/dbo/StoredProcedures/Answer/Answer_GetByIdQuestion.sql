CREATE PROCEDURE [dbo].[Answer_GetByIdQuestion]
	@pIdQuestion AS INT
AS
BEGIN
	SELECT Id, Text, IsCorrect, IdQuestion
	FROM Answer
	WHERE  IdQuestion = @pIdQuestion
END

