CREATE PROC ClassRoom_GetAll
AS
	BEGIN
		SELECT 
			[Id], 
			[Name],
            [IdTeacher], 
			[Status]
		FROM [ClassRoom]
		WHERE [Status] = 1
	END
