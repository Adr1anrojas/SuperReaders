CREATE PROC TypeContent_Update
@pId AS INT,
@pName AS NVARCHAR(50)
AS
	BEGIN
		UPDATE [TypeContent]
		SET
			[Name] = @pName
			
		WHERE [Id] = @pId
	END