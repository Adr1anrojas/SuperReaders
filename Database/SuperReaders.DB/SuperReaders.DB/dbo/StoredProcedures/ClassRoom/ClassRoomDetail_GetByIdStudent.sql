CREATE PROC ClassRoomDetail_GetByIdStudent
@pIdStudent AS INT
AS
BEGIN
    SELECT 
			[IdClassRoom], 
			[IdStudent]
	FROM [ClassRoomDetail] WHERE [IdStudent] = @pIdStudent
END
	