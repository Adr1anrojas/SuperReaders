CREATE PROC Question_Create 
@pIdContent AS Int, 
@pText AS NVARCHAR(50) 
AS
	BEGIN
		INSERT INTO [Question]
		( 
			[IdContent], 
			[Text]
			)
		VALUES
		(
			@pIdContent, 
			@pText 
			
		)
	END