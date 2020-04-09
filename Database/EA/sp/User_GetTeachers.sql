CREATE PROC User_GetTeachers 
AS
BEGIN
SELECT
    U.[Id],
    T.[Id] AS IdTeacher, 
    [FirstName], 
    [LastName], 
    [UserName], 
    [Email],
    [Status], 
    [Role], 
    [BirthDate], 
    [IdSchool]  FROM [Teacher] T  INNER JOIN [User] U ON T.IdUser=U.Id
END