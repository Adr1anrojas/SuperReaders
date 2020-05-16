CREATE PROC ClassRoom_Update 
@pId AS INT,
@pName AS NVARCHAR(50), 
@pStatus AS BIT
AS
	BEGIN
    UPDATE [ClassRoom]
		SET
			[Name] = @pName, 
			[Status] = @pStatus 
		WHERE [Id] = @pId
	END
	