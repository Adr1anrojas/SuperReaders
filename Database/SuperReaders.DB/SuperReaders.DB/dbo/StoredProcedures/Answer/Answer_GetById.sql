CREATE PROC Answer_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id],
			[IdStudent],
			[Text]
		FROM [Answer]
		WHERE [Id] = @pId
	END
