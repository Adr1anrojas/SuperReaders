CREATE PROC [dbo].[Login_UserLoged]
@pUserName AS NVARCHAR(50),
@pPassword AS NVARCHAR(50)
AS
	BEGIN
		OPEN SYMMETRIC KEY SQLSymmetricKey DECRYPTION BY CERTIFICATE SelfSignedCertificate;
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
		WHERE [UserName] = @pUserName COLLATE SQL_Latin1_General_CP1_CI_AS AND CONVERT(NVARCHAR(50), (DecryptByKey([Password])))  =  @pPassword
	END
