ALTER PROC User_GetStudents 
AS
BEGIN
SELECT
    S.[Id], 
    [FirstName], 
    [LastName], 
    [UserName], 
    [Email],
    [Status], 
    [Role], 
    [BirthDate], 
    [IdSchool]  FROM  [User] U INNER JOIN [Student] S  ON S.IdUser=U.Id 
END