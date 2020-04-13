CREATE PROC Question_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[IdContent],
			[Text]
		FROM [Question]
		WHERE [Id] = @pId
	END