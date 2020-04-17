--INITDATA
EXEC Login_Helper
INSERT INTO School(Name, Address, Phone) VALUES('Benerito las Americas', 'Bravo', '12345') 
INSERT INTO ClassRoom(Name, Status)
VALUES('1-A',1),('1-B',1),('2-A',1),('2-B',1),('3-A',1),('3-B',1)
exec User_Create 'Super','Lector','super.poderoso','superpoderoso@gmail.com','123456', 1, 'Admin', '2021-03-23T00:00:00', 1
exec Admin_Create 1
INSERT INTO TypeContent([Nombre]) VALUES('Aventura')
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'Pinocho')
INSERT INTO [Page](IdContent,Text) 
VALUES(1,'En una vieja carpinter�a, Geppetto, un se�or amable y simp�tico, terminaba un d�a m�s de trabajo dando los �ltimos retoques de pintura a un mu�eco de madera que hab�a construido.
Al mirarlo, pens�: �qu� bonito me ha quedado! Y como el mu�eco hab�a sido hecho de madera de pino, Geppetto decidi� llamarlo Pinocho. Aquella noche, Geppeto se fue a dormir deseando que su mu�eco fuese un ni�o de verdad.'),
(1,'Siempre hab�a deseado tener un hijo. Y al encontrarse profundamente dormido, lleg� un hada buena y viendo a Pinocho tan bonito, quiso premiar al buen carpintero, dando, con su varita m�gica, vida al mu�eco.
Al d�a siguiente, cuando se despert�, Geppetto no daba cr�dito a sus ojos: Pinocho se mov�a, caminaba, se re�a y hablaba como un ni�o de verdad, para alegr�a del viejo carpintero.'),
(1,'Feliz y muy satisfecho, Geppeto mand� a Pinocho a la escuela. Quer�a que fuese un ni�o muy listo y que aprendiera muchas cosas. Le acompa�� su amigo Pepito Grillo, el consejero que le hab�a dado el hada buena.
Pero, en el camino del colegio, Pinocho se hizo amigo de dos ni�os muy malos, siguiendo sus travesuras, e ignorando los consejos del grillito. En lugar de ir a la escuela, Pinocho decidi� seguir a sus nuevos amigos, buscando aventuras no muy buenas.
Al ver esta situaci�n, el hada buena le hechiz�. Por no ir a la escuela, le coloc� dos orejas de burro, y por portarse mal, le dijo que cada vez que dijera una mentira, le crecer�a la nariz, poni�ndosele adem�s colorada.'),
(1,'Pinocho acab� reconociendo que no estaba siendo bueno, y arrepentido decidi� buscar a Geppetto. Supo entonces que Geppeto, al salir en su busca por el mar, hab�a sido tragado por una enorme ballena. Pinocho, con la ayuda del grillito, se fue a la mar para rescatar al pobre viejecito.
Cuando Pinocho estuvo frente a la ballena le pidi� que le devolviese a su pap�, pero la ballena abri� su enorme boca y se lo trag� tambi�n a �l. Dentro de la tripa de la ballena, Geppetto y Pinocho se reencontraron. Y se pusieran a pensar c�mo salir de all�.'),
(1,'Y gracias a Pepito Grillo encontraron una salida. Hicieron una fogata. El fuego hizo estornudar a la enorme ballena, y la balsa sali� volando con sus tres tripulantes.
Todos se salvaron. Pinocho volvi� a casa y al colegio, y a partir de ese d�a siempre se comport� bien. Y en recompensa de su bondad, el hada buena lo convirti� en un ni�o de carne y hueso, y fueron muy felices por muchos y muchos a�os.')
INSERT INTO Question(IdContent,Text)
VALUES(1,'�Por qu� el personaje principal del cuento se llamaba Pinocho?'),
(1,'�Cu�l era el deseo m�s grande de Geppetto?'),
(1,'�Qui�n era Pepito Grillo?')
INSERT INTO Answer(IdQuestion,IsCorrect,Text) VALUES
(1,0, 'Escucho el nombre y le gusto.'),
(1,0, 'Un vecino se lo recomendo.'),
(1,1, 'Porque estaba hecho de pino.'),
(1,0, 'Asi se llamaba su Hermano.'),
(2,0, 'Tener una gran carpinteria.'),
(2,0, 'Poder volar.'),
(2,1, 'Que su mu�eco fuese un ni�o de verdad.'),
(2,0, 'Que su mu�eco estuviera terminado.'),
(3,0, 'Un amigo cercano.'),
(3,0, 'Su vecino.'),
(3,0, 'Un cantante famoso.'),
(3,1, 'El consejero que le hab�a dado el hada buena.')
--SELECT C.Id, Q.Id,Q.Text, A.Text, A.IsCorrect
--FROM Content C 
--INNER JOIN Question Q ON C.Id = Q.IdContent
--INNER JOIN Answer A ON Q.Id = A.IdQuestion
--INSERT INTO StudentAnswer(IdStudent,IdAnswer)
--VALUES(1, 7),
--(1, 12)
--SELECT S.Id AS IdStudent, A.IdQuestion, A.Id AS IdAnswer, C.Title, A.IsCorrect FROM StudentAnswer S
--INNER JOIN Answer A ON A.Id = S.IdAnswer
--INNER JOIN Question Q ON Q.Id = A.IdQuestion
--INNER JOIN Content C ON C.Id = Q.IdContent
--select * from Answer