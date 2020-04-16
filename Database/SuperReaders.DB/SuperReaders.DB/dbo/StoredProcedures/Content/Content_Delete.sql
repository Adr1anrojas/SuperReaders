CREATE PROC Content_Delete
@pId AS INT
AS
	BEGIN
		UPDATE [Content]
		SET 
			[Status] = 0 
		WHERE [Id] = @pId
	END
