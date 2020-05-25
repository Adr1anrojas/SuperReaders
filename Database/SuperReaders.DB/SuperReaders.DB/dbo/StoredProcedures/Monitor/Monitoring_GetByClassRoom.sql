CREATE PROC [dbo].[Monitoring_GetByClassRoom]
@pIdClassRoom AS INT
AS
	BEGIN
	SELECT S.Id,U.FirstName,U.LastName,COUNT(SC.IdStudent) AS ContentRead,ROUND(SUM( CAST(SC.TimeReading AS FLOAT)/60 ),2)  AS TimeReading,
	(SELECT COUNT(sc.IsFinish)
    FROM  [StudentContent](NOLOCK) SC
	WHERE SC.IdStudent=S.Id AND SC.IsFinish=1) AS ContentFinished
	,(SELECT COUNT(sc.IsFinish)
    FROM  [StudentContent](NOLOCK) SC
	WHERE SC.IdStudent=S.Id AND SC.IsFinish=0) AS ContentNotFinished
	FROM [User](nolock) AS U
	INNER JOIN [Student](NOLOCK) AS S
	ON S.idUser= U.Id
	INNER JOIN  [ClassRoomDetail](NOLOCK) AS CRD
	ON CRD.IdStudent=S.Id
	LEFT JOIN [StudentContent](NOLOCK) SC
	ON SC.IdStudent=S.Id
	WHERE CRD.IdClassRoom=@pIdClassRoom
	group by U.Id,U.FirstName,U.LastName,SC.IdStudent,S.Id
	END