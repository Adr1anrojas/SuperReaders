CREATE PROC User_Create 
@pFirstName AS NVARCHAR(50), 
@pLastName AS NVARCHAR(50), 
@pUserName AS NVARCHAR(50), 
@pEmail AS NVARCHAR(50), 
@pPassword AS NVARCHAR(50), 
@pStatus AS BIT, 
@pRole AS NVARCHAR(50), 
@pBirthDate AS DATETIME, 
@pIdSchool AS INT
AS
	BEGIN
		DECLARE @encriptedPassword AS BINARY(64)= HASHBYTES('SHA2_256', @pPassword)
		INSERT INTO [User]
		( 
			[FirstName], 
			[LastName], 
			[UserName], 
			[Email],
			[Password], 
			[Status], 
			[Role], 
			[BirthDate], 
			[IdSchool]
			)
		VALUES
		(
			@pFirstName, 
			@pLastName, 
			@pUserName, 
			@pEmail,
			@encriptedPassword, 
			@pStatus, 
			@pRole, 
			@pBirthDate, 
			@pIdSchool
		)
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
		WHERE Id = (SELECT CAST(IDENT_CURRENT('[User]') AS INT))
	END
	