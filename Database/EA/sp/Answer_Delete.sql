CREATE PROC Answer_Delete
@pId AS INT
AS
	BEGIN
		Delete [QuestionAnswer]
		WHERE [IdAnswer] = @pId
		Delete [Answer]
		WHERE [Id]=@pId
	END
