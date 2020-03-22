create proc GetTeacherById
 @Id as Int 
as
	SELECT U.Id, U.FirstName, U.LastName, U.UserName, T.Email, U.Role, U.BirthDate, U.IdSchool, U.Status  FROM [User] U
	INNER JOIN [Teacher] T
	ON U.Id = T.IdUser	
	where U.Id = @Id