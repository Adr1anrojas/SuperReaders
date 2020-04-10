CREATE PROC ClassRoom_Create 
@pName AS NVARCHAR(50), 
@pStatus AS BIT
AS
	BEGIN
		INSERT INTO [ClassRoom]
		( 
			[Name], 
			[Status]
		)
		VALUES
		(
			@pName,
			@pStatus
		)
		SELECT * FROM [ClassRoom] WHERE Id = (SELECT CAST(IDENT_CURRENT('ClassRoom') AS INT))
	END
	