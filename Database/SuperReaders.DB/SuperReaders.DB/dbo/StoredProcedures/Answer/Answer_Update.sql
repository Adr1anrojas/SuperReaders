CREATE PROC Answer_Update
@pId AS INT,
@pText AS NVARCHAR(50)
AS
	BEGIN
		UPDATE [Answer]
		SET
			[Text] = @pText
			
		WHERE [Id] = @pId
	END
	