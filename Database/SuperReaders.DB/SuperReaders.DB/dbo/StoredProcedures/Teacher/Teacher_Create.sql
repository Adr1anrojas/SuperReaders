CREATE PROC Teacher_Create 
@pUserId AS INT
AS
	BEGIN
		INSERT INTO [Teacher] ([IdUser]) VALUES (@pUserId)
	END
	