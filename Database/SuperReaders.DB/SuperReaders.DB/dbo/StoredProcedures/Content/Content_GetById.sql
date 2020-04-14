CREATE PROC Content_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[Title],
			[IdTypeContent],
			[Status]

		FROM [Content]
		WHERE [Id] = @pId
	END