CREATE PROC [dbo].[Content_TypeContent]
AS
	BEGIN
		SELECT 
			[Id],
			[Name]
		FROM [TypeContent]
	END