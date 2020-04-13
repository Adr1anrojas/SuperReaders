CREATE PROC Page_Update
@pId AS INT,
@pText AS NVARCHAR(50)
AS
	BEGIN
		UPDATE [Page]
		SET
			[Text] = @pText
			
		WHERE [Id] = @pId
	END
	