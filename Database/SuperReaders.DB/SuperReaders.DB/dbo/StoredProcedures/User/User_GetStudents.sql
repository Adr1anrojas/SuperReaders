CREATE PROC User_GetStudents 
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
    [IdSchool]  FROM  [User] U INNER JOIN [Student] S  ON S.IdUser=U.Id 
END