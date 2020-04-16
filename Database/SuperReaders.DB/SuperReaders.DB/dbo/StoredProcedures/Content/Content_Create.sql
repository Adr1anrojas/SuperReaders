CREATE PROC Content_Create 
@pTitle AS NVARCHAR(50), 
@pIdTypeContent int,
@pStatus bit
AS
	BEGIN
		INSERT INTO [Content]
		( 
			[Title], 
			[IdTypeContent],
            	        [Status]
			)
		VALUES
		(
			@pTitle, 
			@pIdTypeContent,
			@pStatus
		)
	END