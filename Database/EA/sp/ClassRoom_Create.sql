CREATE PROC ClassRoom_Create 
@pName AS NVARCHAR(50), 
@pIdTeacher AS INT,
@pStatus AS BIT
AS
	BEGIN
		INSERT INTO [ClassRoom]
		( 
			[Name], 
			[IdTeacher],
			[Status]
		)
		VALUES
		(
			@pName,
            @pIdTeacher,
			@pStatus
		)
		SELECT TOP 1 * FROM [ClassRoom] ORDER BY (Id) DESC
	END
	