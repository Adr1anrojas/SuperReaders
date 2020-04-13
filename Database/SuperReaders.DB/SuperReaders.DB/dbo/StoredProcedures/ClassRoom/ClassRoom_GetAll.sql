CREATE PROC ClassRoom_GetAll
AS
	BEGIN
		SELECT 
			[Id],
			[Name], 
			[Status]
		FROM ClassRoom 
		WHERE [Status] = 1
	END
