alter proc CreateUser
 @Firstname AS NVARCHAR(50),
 @LastName AS NVARCHAR(50),
 @UserName AS NVARCHAR(50),
 @Role AS NVARCHAR(50),
 @Password AS NVARCHAR(50),
 @BirthDate AS DATETIME,
 @IdSchool AS INT,
 @Status AS BIT
AS
	BEGIN
		INSERT INTO [User](FirstName,LastName,UserName,[Role],[Password],BirthDate,IdSchool,[Status])
		VALUES(@Firstname, @LastName, @UserName, @Role, @Password, @BirthDate, @IdSchool, @Status)
		SELECT 
			[Id], 
			[FirstName], 
			[LastName], 
			[UserName], 
			[Role], 
			[BirthDate], 
			[IdSchool], 
			[Status]
		FROM [User] 
		WHERE Id = IDENT_CURRENT('User')
	END