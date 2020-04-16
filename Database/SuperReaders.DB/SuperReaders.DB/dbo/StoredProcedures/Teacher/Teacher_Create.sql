CREATE PROC Teacher_Create 
@pUserId AS INT,
@pClassRoomId AS INT
AS
	BEGIN
		INSERT INTO [Teacher] ([IdUser],[IdCLassRoom]) VALUES (@pUserId, @pClassRoomId)
	END
	