CREATE PROC User_GetById
@pId AS INT
AS
	BEGIN
		SELECT 
			[Id], 
			[FirstName], 
			[LastName], 
			[UserName], 
			[Status], 
			[Role], 
			[BirthDate], 
			[IdSchool] 
		FROM [User]
		WHERE [Id] = @pId
	END
