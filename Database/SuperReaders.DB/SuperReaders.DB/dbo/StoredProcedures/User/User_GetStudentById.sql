CREATE PROCEDURE [dbo].[User_GetStudentById]
	@pId AS INT
AS
	BEGIN
		 SELECT
            U.[Id],
            S.[Id] AS StudentId,
            [FirstName], 
            [LastName], 
            [UserName], 
            [Email],
            [Status], 
            [Role], 
            [BirthDate], 
            [IdSchool]  
        FROM [User] U INNER JOIN [Student] S ON S.IdUser = U.Id 
        WHERE U.Id = @pId;
	END
