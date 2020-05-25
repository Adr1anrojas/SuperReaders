CREATE PROCEDURE [dbo].[Content_GetAllAsignmentsByStudent]
	@pIdStudent AS INT
AS
BEGIN
	SELECT 
		C.[Id], 
		C.[Title], 
		C.[IdTypeContent],
		C.[Status]
	FROM Content C
	INNER JOIN ContentDetail CD ON C.Id = CD.IdContent
	INNER JOIN ClassRoom CR ON CD.IdClassRoom = CR.Id
	INNER JOIN ClassRoomDetail CRD ON CR.Id = CRD.IdClassRoom
	WHERE CRD.IdStudent = @pIdStudent
END