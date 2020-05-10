CREATE PROC Student_Create 
@pUserId AS INT
AS
	BEGIN
		INSERT INTO [Student] ([IdUser]) VALUES (@pUserId);
		SELECT 
			[Id]
		FROM [Student] 
		WHERE Id = (SELECT CAST(IDENT_CURRENT('[Student]') AS INT))
	END
	