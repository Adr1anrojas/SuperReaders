CREATE PROC User_GetAdmins 
AS
BEGIN
SELECT
    U.[Id], 
    A.[Id] AS AdminId,
    [FirstName], 
    [LastName], 
    [UserName], 
    [Email],
    [Status], 
    [Role], 
    [BirthDate], 
    [IdSchool]  FROM  [User] U INNER JOIN [Admin] A  ON A.IdUser=U.Id 
END