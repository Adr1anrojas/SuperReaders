CREATE PROC User_Update
@pId AS INT,
@pFirstName AS NVARCHAR(50), 
@pLastName AS NVARCHAR(50), 
@pUserName AS NVARCHAR(50),  
@pEmail AS NVARCHAR(50), 
@pStatus AS BIT,  
@pBirthDate AS DATETIME,
@pIdClassRoom AS INT = 0
AS
	BEGIN
		UPDATE [User]
		SET
			[FirstName] = @pFirstName, 
			[LastName] = @pLastName, 
			[UserName] = @pUserName, 
			[Email] = @pEmail,
			[Status] = @pStatus, 
			[BirthDate] = @pBirthDate
		WHERE [Id] = @pId
		IF @pIdClassRoom != 0
			UPDATE [Teacher]
			SET 
				[IdClassRoom] = @pIdClassRoom
			WHERE IdUser = @pId
	END
	