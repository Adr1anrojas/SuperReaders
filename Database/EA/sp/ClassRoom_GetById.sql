CREATE PROC ClassRoom_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[Name],
            [IdTeacher], 
			[Status]
		FROM [ClassRoom]
		WHERE [Id] = @pId
	END
