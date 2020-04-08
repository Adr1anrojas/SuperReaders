ALTER PROC ClassRoom_Create 
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
		SELECT * FROM [ClassRoom] WHERE Id = (SELECT CAST(IDENT_CURRENT('ClassRoom') AS INT))
	END
	