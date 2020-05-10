CREATE PROC Admin_Create 
@pUserId AS INT
AS
	BEGIN
		INSERT INTO [Admin]([IdUser]) VALUES (@pUserId)
	END
	