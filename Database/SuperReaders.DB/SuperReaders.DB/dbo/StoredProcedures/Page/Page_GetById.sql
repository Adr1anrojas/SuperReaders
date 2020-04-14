CREATE PROC Page_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[Text],
			[IdContent]
		FROM [Page]
		WHERE [Id] = @pId
	END