CREATE PROC ClassRoom_GetByName
@pName AS VARCHAR(50)
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