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
			@pPassword, 
			@pStatus, 
			@pRole, 
			@pBirthDate, 
			@pIdSchool
		)
	END
	