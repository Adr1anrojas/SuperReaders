CREATE PROCEDURE [dbo].[User_GetStudentsByClassRoom]
	@pIdClassRoom AS INT
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
        FROM [User] U 
            INNER JOIN [Student] S ON S.IdUser=U.Id 
            INNER JOIN [ClassRoomDetail] CD ON S.Id =CD.IdStudent
            WHERE CD.IdClassRoom = @pIdClassRoom
        CLOSE SYMMETRIC KEY SQLSymmetricKey;
    END