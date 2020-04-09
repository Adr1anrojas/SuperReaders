CREATE PROC ClassRoomDetail_Create 
@pIdClassRoom AS INT, 
@pIdStudent AS INT
AS
	BEGIN
		INSERT INTO [ClassRoomDetail]
		( 
            IdClassRoom,
            IdStudent
		)
		VALUES
		(
            @pIdClassRoom,
            @pIdStudent

		)
	END
	