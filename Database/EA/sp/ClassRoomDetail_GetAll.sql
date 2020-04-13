CREATE PROC ClassRoomDetail_GetAll
AS
    SELECT 
			[IdClassRoom], 
			[IdStudent]
	FROM [ClassRoomDetail]
	