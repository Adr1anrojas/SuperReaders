CREATE PROC Question_Update
@pId AS INT,
@pText AS NVARCHAR(50)
AS
	BEGIN
		UPDATE [Question]
		SET
			[Text] = @pText
			
		WHERE [Id] = @pId
	END
	