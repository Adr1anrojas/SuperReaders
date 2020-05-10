CREATE PROC Content_GetContentByContentName
@pTitle AS NVARCHAR(50)
AS
	BEGIN
		SELECT 
			[Id],
			[Title],
			[IdTypeContent],
			[Status]
		FROM [Content]
		WHERE [Title] = @ptitle COLLATE SQL_Latin1_General_CP1_CI_AS
	END