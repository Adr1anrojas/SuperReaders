CREATE PROC ClassRoom_GetByName
@pName AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[Name],
            [IdTeacher], 
			[Status]
		FROM [ClassRoom]
		WHERE [Name] = @pName
	END