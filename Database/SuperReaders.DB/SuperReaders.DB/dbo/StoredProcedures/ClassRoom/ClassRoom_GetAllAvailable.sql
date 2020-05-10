CREATE PROCEDURE [dbo].[ClassRoom_GetAllAvailable]
AS
	BEGIN
		SELECT 
			C.[Id],
			C.[Name], 
			C.[Status]
		FROM ClassRoom C LEFT JOIN [Teacher] T ON C.Id = T.IdClassRoom
		WHERE T.ID IS NULL AND [Status] = 1
	END
