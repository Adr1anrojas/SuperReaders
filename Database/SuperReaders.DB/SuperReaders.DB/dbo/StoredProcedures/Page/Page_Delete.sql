CREATE PROC Page_Delete
@pId AS INT
AS
	BEGIN
		Delete [Page]
		WHERE [Id] = @pId
	END
