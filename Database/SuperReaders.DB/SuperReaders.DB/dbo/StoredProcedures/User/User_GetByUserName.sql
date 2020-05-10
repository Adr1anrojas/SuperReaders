CREATE PROC User_GetByUserName
@pUserName AS NVARCHAR(50)
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
		WHERE [UserName] = @pUserName COLLATE SQL_Latin1_General_CP1_CI_AS
	END