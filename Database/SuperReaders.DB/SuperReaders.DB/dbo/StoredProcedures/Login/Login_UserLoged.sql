CREATE PROC Login_UserLoged
@pUserName AS NVARCHAR(50),
@pPassword AS NVARCHAR(50)
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
		WHERE [UserName] = @pUserName COLLATE SQL_Latin1_General_CP1_CI_AS AND [Password] = HASHBYTES('SHA2_256', @pPassword)
	END