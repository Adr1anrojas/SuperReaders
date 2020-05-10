CREATE PROC User_Delete
@pId AS INT,
@pRole AS NVARCHAR(50)
AS
	BEGIN
		UPDATE [User]
		SET 
			[Status] = 0 
		WHERE [Id] = @pId
		IF(@pRole LIKE 'Teacher')
			UPDATE [Teacher]
				SET 
					[IdClassRoom] = NULL
				WHERE IdUser = @pId
		ELSE IF(@pRole LIKE 'Student')
			DELETE C
			FROM [ClassRoomDetail] C
			INNER JOIN [Student] S ON S.Id = C.IdStudent
			INNER JOIN [User] U ON U.Id = S.IdUser
			WHERE U.Id = @pId
	END
