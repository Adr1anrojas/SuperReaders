CREATE PROC ClassRoom_Update 
@pId AS INT,
@pName AS NVARCHAR(50), 
@pIdTeacher AS INT,
@pStatus AS BIT
AS
	BEGIN
    UPDATE [ClassRoom]
		SET
			[Name] = @pName, 
			[Status] = @pStatus, 
			[IdTeacher] = @pIdTeacher
		WHERE [Id] = @pId
	END
	