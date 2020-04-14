CREATE PROC Question_Delete
@pId AS INT
AS
	BEGIN
		Delete [QuestionAnswer]
		WHERE [IdQuestion] = @pId
		Delete [Question]
		WHERE [Id]=@pId
	END
