CREATE PROC User_GetAll
 @pRole as NVARCHAR(50)
AS
	BEGIN
		SELECT 
			[Id], 
			[FirstName], 
			[LastName], 
			[UserName], 
			[Email],
			[Status], 
			[Role], 
			[BirthDate], 
			[IdSchool] 
		FROM [User]
		WHERE [Status] = 1 AND [Role] = @pRole
	END
