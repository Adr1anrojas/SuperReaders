CREATE PROC Content_GetContents
AS
	BEGIN
		SELECT 
			[Id], 
			[Title], 
			[IdTypeContent],
			[Status]
		FROM [Content]
	END