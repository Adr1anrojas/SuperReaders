CREATE PROC User_GetTeachers 
AS
    BEGIN
        OPEN SYMMETRIC KEY SQLSymmetricKey DECRYPTION BY CERTIFICATE SelfSignedCertificate;
        SELECT
            U.[Id],
            T.[Id] AS TeacherId,
            [FirstName], 
            [LastName], 
            [UserName], 
            [Email],
            CONVERT(NVARCHAR(50), (DecryptByKey([Password]))) AS [Password],
            [Status], 
            [Role], 
            [BirthDate], 
            [IdSchool] 
        FROM [User] U INNER JOIN [Teacher] T ON T.IdUser=U.Id
        CLOSE SYMMETRIC KEY SQLSymmetricKey;
    END