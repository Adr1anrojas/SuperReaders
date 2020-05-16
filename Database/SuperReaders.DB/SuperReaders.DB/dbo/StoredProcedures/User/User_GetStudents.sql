CREATE PROC User_GetStudents 
AS
    BEGIN
	    OPEN SYMMETRIC KEY SQLSymmetricKey DECRYPTION BY CERTIFICATE SelfSignedCertificate;
        SELECT
            U.[Id],
            S.[Id] AS StudentId,
            [FirstName], 
            [LastName], 
            [UserName], 
            [Email],
            CONVERT(NVARCHAR(50), (DecryptByKey([Password]))) AS [Password],
            [Status], 
            [Role], 
            [BirthDate], 
            [IdSchool]  
        FROM [User] U INNER JOIN [Student] S ON S.IdUser=U.Id 
        WHERE U.[Status] = 1
        CLOSE SYMMETRIC KEY SQLSymmetricKey;
    END