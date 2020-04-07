CREATE PROC User_Delete
@pId AS INT
AS
	BEGIN
		UPDATE [User]
		SET 
			[Status] = 0 
		WHERE [Id] = @pId
	END
