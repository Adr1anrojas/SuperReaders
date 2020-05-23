CREATE PROC [dbo].[Monitoring_GetByContentMoreReading]
@pIdClassRoom AS INT

AS
	BEGIN
	SELECT TOP 5 With Ties C.Title,COUNT(SC.IdContent) as More  
	FROM [User](NOLOCK) AS U
	INNER JOIN [Student](NOLOCK) AS S
	ON S.idUser= U.Id
	INNER JOIN  [ClassRoomDetail](NOLOCK) AS CRD
	ON CRD.IdStudent=S.Id
	INNER JOIN [StudentContent](NOLOCK) SC
	ON SC.IdStudent=S.Id
	INNER JOIN [Content] as C
	ON C.Id=SC.IdContent
	WHERE CRD.IdClassRoom=@pIdClassRoom 
	group by C.Title
	order by More desc
	END