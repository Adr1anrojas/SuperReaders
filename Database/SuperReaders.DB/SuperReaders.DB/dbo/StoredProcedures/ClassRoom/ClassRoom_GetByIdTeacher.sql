CREATE PROC ClassRoom_GetByIdTeacher
@pIdTeacher AS INT
AS
	BEGIN
		SELECT 
			C.[Id], 
			[Name], 
			[Status]
		FROM [ClassRoom] C
		INNER JOIN [Teacher] T
		ON C.Id = T.IdClassRoom
		WHERE T.Id = @pIdTeacher
	END