CREATE PROC ClassRoom_GetByIdTeacher
@pIdTeacher AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[Name],
            [IdTeacher], 
			[Status]
		FROM [ClassRoom]
		WHERE [IdTeacher] = @pIdTeacher
	END