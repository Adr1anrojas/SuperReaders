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
VALUES(1,'En una vieja carpintería, Geppetto, un señor amable y simpático, terminaba un día más de trabajo dando los últimos retoques de pintura a un muñeco de madera que había construido.
Al mirarlo, pensó: ¡qué bonito me ha quedado! Y como el muñeco había sido hecho de madera de pino, Geppetto decidió llamarlo Pinocho. Aquella noche, Geppeto se fue a dormir deseando que su muñeco fuese un niño de verdad.'),
(1,'Siempre había deseado tener un hijo. Y al encontrarse profundamente dormido, llegó un hada buena y viendo a Pinocho tan bonito, quiso premiar al buen carpintero, dando, con su varita mágica, vida al muñeco.
Al día siguiente, cuando se despertó, Geppetto no daba crédito a sus ojos: Pinocho se movía, caminaba, se reía y hablaba como un niño de verdad, para alegría del viejo carpintero.'),
(1,'Feliz y muy satisfecho, Geppeto mandó a Pinocho a la escuela. Quería que fuese un niño muy listo y que aprendiera muchas cosas. Le acompañó su amigo Pepito Grillo, el consejero que le había dado el hada buena.
Pero, en el camino del colegio, Pinocho se hizo amigo de dos niños muy malos, siguiendo sus travesuras, e ignorando los consejos del grillito. En lugar de ir a la escuela, Pinocho decidió seguir a sus nuevos amigos, buscando aventuras no muy buenas.
Al ver esta situación, el hada buena le hechizó. Por no ir a la escuela, le colocó dos orejas de burro, y por portarse mal, le dijo que cada vez que dijera una mentira, le crecería la nariz, poniéndosele además colorada.'),
(1,'Pinocho acabó reconociendo que no estaba siendo bueno, y arrepentido decidió buscar a Geppetto. Supo entonces que Geppeto, al salir en su busca por el mar, había sido tragado por una enorme ballena. Pinocho, con la ayuda del grillito, se fue a la mar para rescatar al pobre viejecito.
Cuando Pinocho estuvo frente a la ballena le pidió que le devolviese a su papá, pero la ballena abrió su enorme boca y se lo tragó también a él. Dentro de la tripa de la ballena, Geppetto y Pinocho se reencontraron. Y se pusieran a pensar cómo salir de allí.'),
(1,'Y gracias a Pepito Grillo encontraron una salida. Hicieron una fogata. El fuego hizo estornudar a la enorme ballena, y la balsa salió volando con sus tres tripulantes.
Todos se salvaron. Pinocho volvió a casa y al colegio, y a partir de ese día siempre se comportó bien. Y en recompensa de su bondad, el hada buena lo convirtió en un niño de carne y hueso, y fueron muy felices por muchos y muchos años.')
INSERT INTO Question(IdContent,Text)
VALUES(1,'¿Por qué el personaje principal del cuento se llamaba Pinocho?'),
(1,'¿Cuál era el deseo más grande de Geppetto?'),
(1,'¿Quién era Pepito Grillo?')
INSERT INTO Answer(IdQuestion,IsCorrect,Text) VALUES
(1,0, 'Escucho el nombre y le gusto.'),
(1,0, 'Un vecino se lo recomendo.'),
(1,1, 'Porque estaba hecho de pino.'),
(1,0, 'Asi se llamaba su Hermano.'),
(2,0, 'Tener una gran carpinteria.'),
(2,0, 'Poder volar.'),
(2,1, 'Que su muñeco fuese un niño de verdad.'),
(2,0, 'Que su muñeco estuviera terminado.'),
(3,0, 'Un amigo cercano.'),
(3,0, 'Su vecino.'),
(3,0, 'Un cantante famoso.'),
(3,1, 'El consejero que le había dado el hada buena.')
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