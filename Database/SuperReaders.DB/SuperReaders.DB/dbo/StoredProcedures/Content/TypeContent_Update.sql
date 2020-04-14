CREATE PROC TypeContent_Update
@pId AS INT,
@pNombre AS NVARCHAR(50)
AS
	BEGIN
		UPDATE [TypeContent]
		SET
			[Nombre] = @pNombre
			
		WHERE [Id] = @pId
	END