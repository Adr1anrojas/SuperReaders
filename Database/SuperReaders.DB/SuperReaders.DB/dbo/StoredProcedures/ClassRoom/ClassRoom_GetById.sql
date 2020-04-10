CREATE PROC ClassRoom_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[Name], 
			[Status]
		FROM [ClassRoom]
		WHERE [Id] = @pId
	END
