CREATE PROCEDURE [dbo].[ClassRoom_GetByIdStudent]
@pIdStudent AS INT
AS
	BEGIN
		SELECT 
			C.[Id], 
			C.[Name], 
			C.[Status]
		FROM [User] U
			INNER JOIN [Student] S ON U.Id = S.IdUser
			INNER JOIN [ClassRoomDetail] CD ON S.Id = CD.IdStudent
			INNER JOIN [ClassRoom] C ON CD.IdClassRoom = C.Id
			WHERE S.Id = @pIdStudent
	END