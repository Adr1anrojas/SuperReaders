CREATE PROC User_GetAll
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
		WHERE [Status] = 1
	END
