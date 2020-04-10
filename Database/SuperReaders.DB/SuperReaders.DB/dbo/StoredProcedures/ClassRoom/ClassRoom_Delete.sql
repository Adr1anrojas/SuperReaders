CREATE PROC ClassRoom_Delete
@pId AS INT
AS
	BEGIN
		UPDATE [ClassRoom]
		SET 
			[Status] = 0 
		WHERE [Id] = @pId
	END
