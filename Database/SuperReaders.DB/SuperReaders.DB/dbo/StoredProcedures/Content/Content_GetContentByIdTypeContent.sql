CREATE PROCEDURE [dbo].[Content_GetByIdTypeContent] @pIdTypeContent AS INT
AS
BEGIN
	SELECT C.Id,C.Title,C.IdTypeContent,C.Status 
	FROM Content C inner join 
	TypeContent T on  C.IdTypeContent = T.Id 
	WHERE C.IdTypeContent = @pIdTypeContent AND C.[Status]= 1
END