CREATE PROC User_Update
@pId AS INT,
@pFirstName AS NVARCHAR(50), 
@pLastName AS NVARCHAR(50), 
@pUserName AS NVARCHAR(50),  
@pStatus AS BIT,  
@pBirthDate AS DATETIME,
@pIdClassRoom AS INT
AS
	BEGIN
		UPDATE [User]
		SET
			[FirstName] = @pFirstName, 
			[LastName] = @pLastName, 
			[UserName] = @pUserName, 
			[Status] = @pStatus, 
			[BirthDate] = @pBirthDate
		WHERE [Id] = @pId
		UPDATE [Teacher]
		SET 
			[IdClassRoom] = @pIdClassRoom
		WHERE IdUser = @pId
	END
	