CREATE PROC ClassRoomDetail_GetByIdClassRoom
@pIdClassRoom AS INT
AS
BEGIN
    SELECT 
			[IdClassRoom], 
			[IdStudent]
	FROM [ClassRoomDetail] WHERE [IdClassRoom] = @pIdClassRoom
END
	