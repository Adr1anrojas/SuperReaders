CREATE PROC Content_Update
@pId AS INT,
@pTitle AS NVARCHAR(50), 
@pStatus AS BIT
AS
	BEGIN
		UPDATE [Content]
		SET
			[Title] = @pTitle, 
			[Status] = @pStatus 
			
		WHERE [Id] = @pId
	END
	