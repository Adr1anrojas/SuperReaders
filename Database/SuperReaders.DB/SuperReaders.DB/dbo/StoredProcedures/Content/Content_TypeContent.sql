CREATE PROC [dbo].[Content_TypeContent]
AS
	BEGIN
		SELECT 
			[Id],
			[Nombre]
		FROM [TypeContent]
	END