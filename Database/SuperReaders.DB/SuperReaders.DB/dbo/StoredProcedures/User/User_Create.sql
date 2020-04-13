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
		OPEN SYMMETRIC KEY SQLSymmetricKey DECRYPTION BY CERTIFICATE SelfSignedCertificate;
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
			EncryptByKey(Key_GUID('SQLSymmetricKey'), @pPassword), 
			@pStatus, 
			@pRole, 
			@pBirthDate, 
			@pIdSchool
		)
		CLOSE SYMMETRIC KEY SQLSymmetricKey
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
	