CREATE PROCEDURE [dbo].[User_UpdateIsFirstTime]
	@pIdStudent AS INT
AS
BEGIN
	UPDATE U 
	SET U.IsFirstTime = 0
	FROM [User] U
	INNER JOIN [Student] S
	ON U.Id = S.IdUser
	WHERE S.Id = @pIdStudent
END
