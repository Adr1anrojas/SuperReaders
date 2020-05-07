CREATE PROCEDURE [dbo].[ClassRoom_GetAllWithInfo]
AS
	BEGIN
		SELECT 
			C.[Id],
			C.[Name], 
			C.[Status],
			U.FirstName+' '+U.LastName AS Teacher,
			COUNT(CD.IdStudent) AS QuantityStudents
		FROM ClassRoom C
			LEFT JOIN [Teacher] T ON  C.Id = T.IdClassRoom 
			LEFT JOIN [User] U ON T.IdUser = U.Id
			LEFT JOIN ClassRoomDetail CD ON C.Id = CD.IdClassRoom
		WHERE C.[Status] = 1
		GROUP BY C.[Id], C.[Name], C.[Status], U.FirstName+' '+U.LastName
		ORDER BY C.Id
	END	