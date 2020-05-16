CREATE PROC Content_Create 
@pTitle AS NVARCHAR(50), 
@pIdTypeContent int
AS
	BEGIN
		INSERT INTO 
		[Content]
		    (
				[Title], 
				[IdTypeContent],
				[Status]
			)
		VALUES 
			(
				@pTitle,
				@pIdTypeContent,
				1
			)
		SELECT CAST(IDENT_CURRENT('Content') AS INT)
	END