CREATE PROCEDURE [dbo].[User_GetTeacherById]
	@pId AS INT
AS
		BEGIN
		 SELECT
            U.[Id],
            T.[Id] AS TeacherId,
            [FirstName], 
            [LastName], 
            [UserName], 
            [Email],
            [Status], 
            [Role], 
            [BirthDate], 
            [IdSchool]  
        FROM [User] U INNER JOIN [Teacher] T ON T.IdUser = U.Id 
        WHERE U.Id = @pId;
	END
