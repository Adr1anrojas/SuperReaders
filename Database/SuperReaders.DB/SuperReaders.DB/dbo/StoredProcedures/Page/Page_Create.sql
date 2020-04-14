CREATE PROC Page_Create 
@pText AS NVARCHAR(50), 
@pIdContent AS Int

AS
	BEGIN
		INSERT INTO [Page]
		( 
			[Text], 
			[IdContent]		
			)
		VALUES
		(
			@pText,
			@pIdContent 
			
		)
	END
	