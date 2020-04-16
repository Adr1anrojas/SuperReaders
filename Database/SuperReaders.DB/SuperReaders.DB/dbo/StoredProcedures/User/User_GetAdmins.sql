CREATE PROC User_GetAdmins 
AS
    BEGIN
        OPEN SYMMETRIC KEY SQLSymmetricKey DECRYPTION BY CERTIFICATE SelfSignedCertificate;
        SELECT
            U.[Id], 
            A.[Id] AS AdminId,
            [FirstName], 
            [LastName], 
            [UserName], 
            [Email],
            CONVERT(NVARCHAR(50), (DecryptByKey([Password]))) AS [Password],
            [Status], 
            [Role], 
            [BirthDate], 
            [IdSchool]  
        FROM [User] U INNER JOIN [Admin] A ON A.IdUser=U.Id 
        CLOSE SYMMETRIC KEY SQLSymmetricKey;
    END