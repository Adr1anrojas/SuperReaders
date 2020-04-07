CREATE PROC Student_Create 
@pUserId AS INT
AS
	BEGIN
		INSERT INTO [Student] ([IdUser]) VALUES (@pUserId)
	END
	