--INITDATA
EXEC Login_Helper
INSERT INTO School(Name, Address, Phone) VALUES('Benerito las Americas', 'Bravo', '12345') 
INSERT INTO ClassRoom(Name, Status)
VALUES('1-A',1),('1-B',1),('2-A',1),('2-B',1),('3-A',1),('3-B',1)
exec User_Create 'Super','Lector','super.poderoso','superpoderoso@gmail.com','123456', 1, 'Admin', '2021-03-23T00:00:00', 1
exec Admin_Create 1
--INSERT INTO TypeContent([Name]) VALUES('Aventura'),('Suspenso'), ('Leyendas'),('Princesas'),('Fabulas'), ('Informativos'), ('Clasicos'), ('Ciencia Ficcion'), ('Historicos'), ('Valores')
--INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'Pinocho')
--INSERT INTO [Page](IdContent,Text) 
--VALUES(1,'En una vieja carpintería, Geppetto, un señor amable y simpático, terminaba un día más de trabajo dando los últimos retoques de pintura a un muñeco de madera que había construido.
--Al mirarlo, pensó: ¡qué bonito me ha quedado! Y como el muñeco había sido hecho de madera de pino, Geppetto decidió llamarlo Pinocho. Aquella noche, Geppeto se fue a dormir deseando que su muñeco fuese un niño de verdad.'),
--(1,'Siempre había deseado tener un hijo. Y al encontrarse profundamente dormido, llegó un hada buena y viendo a Pinocho tan bonito, quiso premiar al buen carpintero, dando, con su varita mágica, vida al muñeco.
--Al día siguiente, cuando se despertó, Geppetto no daba crédito a sus ojos: Pinocho se movía, caminaba, se reía y hablaba como un niño de verdad, para alegría del viejo carpintero.'),
--(1,'Feliz y muy satisfecho, Geppeto mandó a Pinocho a la escuela. Quería que fuese un niño muy listo y que aprendiera muchas cosas. Le acompañó su amigo Pepito Grillo, el consejero que le había dado el hada buena.
--Pero, en el camino del colegio, Pinocho se hizo amigo de dos niños muy malos, siguiendo sus travesuras, e ignorando los consejos del grillito. En lugar de ir a la escuela, Pinocho decidió seguir a sus nuevos amigos, buscando aventuras no muy buenas.
--Al ver esta situación, el hada buena le hechizó. Por no ir a la escuela, le colocó dos orejas de burro, y por portarse mal, le dijo que cada vez que dijera una mentira, le crecería la nariz, poniéndosele además colorada.'),
--(1,'Pinocho acabó reconociendo que no estaba siendo bueno, y arrepentido decidió buscar a Geppetto. Supo entonces que Geppeto, al salir en su busca por el mar, había sido tragado por una enorme ballena. Pinocho, con la ayuda del grillito, se fue a la mar para rescatar al pobre viejecito.
--Cuando Pinocho estuvo frente a la ballena le pidió que le devolviese a su papá, pero la ballena abrió su enorme boca y se lo tragó también a él. Dentro de la tripa de la ballena, Geppetto y Pinocho se reencontraron. Y se pusieran a pensar cómo salir de allí.'),
--(1,'Y gracias a Pepito Grillo encontraron una salida. Hicieron una fogata. El fuego hizo estornudar a la enorme ballena, y la balsa salió volando con sus tres tripulantes.
--Todos se salvaron. Pinocho volvió a casa y al colegio, y a partir de ese día siempre se comportó bien. Y en recompensa de su bondad, el hada buena lo convirtió en un niño de carne y hueso, y fueron muy felices por muchos y muchos años.')
--INSERT INTO Question(IdContent,Text)
--VALUES(1,'¿Por qué el personaje principal del cuento se llamaba Pinocho?'),
--(1,'¿Cuál era el deseo más grande de Geppetto?'),
--(1,'¿Quién era Pepito Grillo?')
--INSERT INTO Answer(IdQuestion,IsCorrect,Text) VALUES
--(1,0, 'Escucho el nombre y le gusto.'),
--(1,0, 'Un vecino se lo recomendo.'),
--(1,1, 'Porque estaba hecho de pino.'),
--(1,0, 'Asi se llamaba su Hermano.'),
--(2,0, 'Tener una gran carpinteria.'),
--(2,0, 'Poder volar.'),
--(2,1, 'Que su muñeco fuese un niño de verdad.'),
--(2,0, 'Que su muñeco estuviera terminado.'),
--(3,0, 'Un amigo cercano.'),
--(3,0, 'Su vecino.'),
--(3,0, 'Un cantante famoso.'),
--(3,1, 'El consejero que le había dado el hada buena.')
--INITDATA
--EXEC Login_Helper
--INSERT INTO School(Name, Address, Phone) VALUES('Benerito las Americas', 'Bravo', '12345') 
--INSERT INTO ClassRoom(Name, Status)
--VALUES('1-A',1),('1-B',1),('2-A',1),('2-B',1),('3-A',1),('3-B',1)
--exec User_Create 'Super','Lector','super.poderoso','superpoderoso@gmail.com','123456', 1, 'Admin', '2021-03-23T00:00:00', 1
--exec Admin_Create 1


/*INSERT INTO TypeContent([Name]) VALUES('Aventura'),('Terror'), ('Leyendas'), ('Fabulas'), ('Informativos'), ('Clasicos'), ('Ciencia Ficcion')
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
--delete from StudentAnswer
--delete from Answer
--delete from Question
--delete from [Page]
--delete from Content
select * from [User]
select * from StudentAnswer
select * from Answer
select * from Question
select * from [Page]
select * from Content

select * from [Page]
select * from TypeContent
select * from Content


TRUNCATE TABLE Answer;
*/

/*
Insercion de datos (cuentos) categoria de princesas
10/05/2020
Quiñonez rojo jesus lowell
*/

--                                          1            2             3           4             5            6					7					8				9				10
INSERT INTO TypeContent([Name]) VALUES('Aventura'),('Suspenso'), ('Leyendas'),('Princesas'),('Fabulas'), ('Informativos'), ('Clasicos'), ('Ciencia Ficcion'), ('Historicos'), ('Valores')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Aladino y la lampara maravillosa')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(1,'Erase una vez un muchacho llamado Aladino que vivía en el lejano Oriente con su madre, en una casa sencilla y humilde. Tenían lo justo para vivir, así que cada día, Aladino recorría el centro de la ciudad en busca de algún alimento que llevarse a la boca. \n
		En una ocasión paseaba entre los puestos de fruta del mercado, cuando se cruzó con un hombre muy extraño con pinta de extranjero. Aladino se quedó sorprendido al escuchar que le llamaba por su nombre. \n
		– ¿Tú eres Aladino, el hijo del sastre, verdad? \n
		– Sí, y es cierto que mi padre era sastre, pero… ¿Quién es usted? \n
		– ¡Soy tu tío! No me reconoces porque hace muchos años que no vengo por aquí. Veo que llevas ropas muy viejas y me apena verte tan flaco. Imagino que en tu casa no sobra el dinero…'),
	(1,'Aladino bajó el cabeza un poco avergonzado. Parecía un mendigo y su cara morena estaba tan huesuda que le hacía parecer mucho mayor. \n
		– Yo te ayudaré, pero a cambio necesito que me hagas un favor. Ven conmigo y si haces lo que te indique, te daré una moneda de plata. \n
		A Aladino le sorprendió  la oferta de ese desconocido, pero como no tenía nada que perder, le acompañó hasta una zona apartada del bosque. Una vez allí, se pararon frente a una cueva escondida en la montaña. La entrada era muy estrecha. \n
		– Aladino, yo soy demasiado grande y no quepo por el agujero. Entra tú y tráeme una lámpara de aceite muy antigua  que verás al fondo del pasadizo. No quiero que toques nada más, sólo la lámpara ¿Entendido?'),
	(1,'Aladino dijo sí con la cabeza y penetró en un largo corredor bajo tierra que terminaba en una gran sala con paredes de piedra. Cuando accedió a ella, se quedó asombrado. Efectivamente, vio la vieja lámpara encendida, pero eso no era todo: la tenue luz le permitió distinguir cientos de joyas, monedas y piedras preciosas, amontonadas en el suelo  ¡Jamás había visto tanta riqueza! \n
		Se dio prisa en coger la lámpara, pero no pudo evitar llenarse los bolsillos todo lo que pudo de algunos de esos tesoros que encontró. Lo que más le gustó, fue un ostentoso y brillante anillo que se puso en el dedo índice. '),
	(1,'– ¡Qué anillo tan bonito! ¡Y encaja perfectamente en mi dedo! \n
		Volvió hacia la entrada y al asomar la cabeza por el orificio, el hombre le dijo: \n
		– Dame la lámpara, Aladino. \n
		– Te la daré, pero antes déjame salir de aquí. \n
		– ¡Te he dicho que primero quiero que me des la lámpara! \n
		– ¡No, no pienso hacerlo! \n
		El extranjero se enfureció tanto que tapó la entrada con una gran losa de piedra, dejando al chico encerrado en el húmedo y oscuro pasadizo subterráneo. \n
		¿Qué podía hacer ahora? ¿Cómo salir de ahí con vida?…'),
	(1,'Recorrió el lugar con la miraba tratando de encontrar una solución. Estaba absorto en sus pensamientos cuando, sin querer, acarició el anillo y de él salió un genio ¡Aladino casi se muere del susto! \n
		– ¿Qué deseas, mi amo? Pídeme lo que quieras que te lo concederé. \n
		El chico, con los ojos llenos de lágrimas, le dijo: \n 
		– Oh, bueno… Yo sólo quiero regresar a mi casa. \n
		En cuanto pronunció estas palabras, como por arte de magia apareció en su hogar. Su madre le recibió con un gran abrazo. Con unos nervios que le temblaba todo el cuerpo, intentó contarle a la buena mujer todo lo sucedido. Después, más tranquilo, cogió un paño de algodón para limpiar la sucia y vieja lámpara de aceite. En cuanto la frotó, otro genio salió de ella. \n
		– Estoy aquí para concederle un deseo, señor.'),
	(1,'Aladino y su madre se miraron estupefactos ¡Dos genios en un día era mucho más de lo que uno podía esperar! El muchacho se lanzó a pedir lo que más le apetecía en ese momento. \n
		– ¡Estamos deseando comer! ¿Qué tal alguna cosa rica para saciar toda el hambre acumulada durante años? \n
		Acto seguido, la vieja mesa de madera del comedor se llenó de deliciosos manjares que en su vida habían probado. Sin duda, disfrutaron de la mejor comida que podían imaginar. Pero eso no acabó ahí porque, a partir de entonces y gracias a la lámpara que ahora estaba en su poder, Aladino y su madre vivieron cómodamente; todo lo que necesitaban podían pedírselo al genio. Procuraban no abusar de él y se limitaban a solicitar lo justo para vivir sin estrecheces, pero no volvió a faltarles de nada. \n
		Un día, en uno de sus paseos matutinos, Aladino vio pasar, subida en una litera, a una mujer bellísima de la que se enamoró instantáneamente. Era la hija del sultán. Regresó a casa y como no podía dejar de pensar en ella, le dijo a su madre que tenía que hacer todo lo posible para que fuera su esposa.'),
	(1,'¡Esta vez sí tendría que abusar un poco de la generosidad del genio para llevar a cabo su plan! Frotó la lámpara maravillosa y le pidió tener una vivienda lujosa con hermosos jardines, y  cómo no, ropas adecuadas para presentarse ante el sultán, a quien quería pedir la mano de su hija. Solicitó también un séquito de lacayos montados sobre esbeltos corceles, que tiraran de carruajes repletos de riquezas para ofrecer al poderoso emperador. Con todo esto se presentó ante él y tan impresionado quedó, que aceptó que su bella y bondadosa hija fuera su esposa. \n
		Aladino y la princesa Halima, que así se llamaba, se casaron unas semanas después y desde el principio, fueron muy felices. Tenían amor y vivían el uno para el otro. \n
		Pero una tarde, Halima vio por la casa la vieja lámpara de aceite y como no sabía nada, se la vendió a un trapero que iba por las calles comprando cachivaches. Por desgracia, resultó ser el hombre malvado que había encerrado a Aladino en la cueva. Deseando vengarse, el viejo recurrió al genio de la lámpara y le ordenó, como nuevo dueño, que todo lo que tenía Aladino, incluida su mujer, fuera trasladado a un lugar muy lejano.'),
	(1,'Y así fue… Cuando el pobre Aladino regresó a su hogar, no estaba su casa, ni sus criados, ni su esposa… Ya no tenía nada de nada. \n
		Comenzó a llorar con desesperación y recordó que el anillo que llevaba en su dedo índice también podía ayudarle. Lo acarició y pidió al genio que le devolviera todo lo que era suyo pero, desgraciadamente, el genio del anillo no era tan poderoso como el de la lámpara. \n
		– Mi amo, es imposible para mí concederte esa petición, pero sí puedo llevarte hasta donde está tu mujer.'),
	(1,'Aladino aceptó y automáticamente se encontró en un lejano lugar junto a su bella Halima, que por fortuna, estaba sana y salva. Sabían que sólo había una opción: recuperar la lámpara maravillosa como fuera para poder regresar a la ciudad con todas sus posesiones. Juntos, idearon un nuevo plan. Pidieron al genio del anillo una dosis de veneno y Aladino fue a esconderse. A  la hora de la cena, Halima entró sigilosamente en la cocina del malvado extranjero y  lo echó en el vino sin que éste se diera cuenta. En cuanto se sirvió una copa y mojó sus labios, cayó dormido en un sueño que, tal como les había prometido  el genio, duraría cientos de años. \n
		Aladino y Halima se abrazaron y corrieron a recuperar su lámpara. Fue entonces cuando le contó a su mujer toda la historia y el poder que la lámpara de aceite tenía.'),
	(1,'– Y ahora que ya lo sabes todo, querida, volvamos a nuestro hogar. \n
		Frotó la lámpara y como siempre, salió el gran genio que siempre concedía todos los deseos de su señor. \n
		– ¿Qué deseas esta vez, mi amo? \n
		– ¡Hoy me alegro más que nunca de verte! ¡Llévanos a casa, viejo amigo! – dijo Aladino riendo de felicidad. \n
		¡Y así fue! Halima y Aladino regresaron,  y con ellos, todo lo que el viejo les había robado. A partir de entonces, guardaron la lámpara maravillosa a buen recaudo y continuaron siendo tan felices como lo habían sido hasta entonces.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(1,'¿Qué familiar de Aladin dijo ser el extranjero?'),
	(1,'¿El extranjero que mandó a buscar a Aladin en la cueva de la montaña?'),
	(1,'¿Qué fue lo que mas le gusto a Aladin dentro de la cueva de la montaña?'),
	(1,'¿Que contenía la lámpara de aceite que era tan importante para el extranjero?'),
	(1,'¿Que cuál fue el primer deseo que pidió aladin? '),
	(1,'6.	¿Cual era el nombre de la hija del sultán?'),
	(1,'7.	¿Cómo termina el cuento?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(1,0, 'Un amigo de su papá'),
	(1,0, 'Un primo'),
	(1,1, 'Un tio'),
	(1,0, 'Ninguno de los anteriores'),

	(2,1, 'Una lámpara de aceite'),
	(2,0, 'Un collar de diamantes'),
	(2,0, 'Una alfombra'),
	(2,0, 'Un anillo de plata'),

	(3,0, 'Las monedas de oro'),
	(3,0, 'Un collar de diamantes'),
	(3,0, 'Una estatua de oro'),
	(3,1, 'Un anillo '),

	(4,0, 'Aceite'),
	(4,1, 'Un genio mágico'),
	(4,0, 'Agua'),
	(4,0, 'Estaba vacía'),

	(5,0, 'Tener que comer'),
	(5,0, 'Ser un gran sultan '),
	(5,1, 'Regresar a casa'),
	(5,0, 'Ser más apuesto'),

	(6,0, 'Halima'),
	(6,0, 'Carolina'),
	(6,0, 'Maria '),
	(6,0, 'Keral'),

	(7,0, 'Aladin pierde la lámpara y con ella su riqueza'),
	(7,0, 'Aladin se casa con una hermosa llamada Keral'),
	(7,0, 'Ninguna de las anteriores'),
	(7,1, 'Aladin y Halima viven feliz para siempre')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Atrapados en Tururulandia')
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(2,'Tururulandia era un pequeño y precioso país de juguete que había hecho Paulina Perfectina con sus construcciones. Paulina cuidaba constantemente Tururulandia para que todo estuviera en orden, y mantenía los muñecos rojos junto a sus casas rojas, y los niños verdes jugando en los columpios de los parques verdes, y los papás hablando todo el día junto a la plaza. Era un país tan bonito y perfecto, que Paulina soñaba con poder llegar a vivir un día en Tururulandia. \n
        Y sin saber cómo ni por qué, su sueño se cumplió, y un día despertó en mitad de Tururulandia, vestida toda de rosa, y hecha de piececitas de juguete. ¡qué maravilla! ¡ todo era como ella conocía! Y era realmente precioso.'),
	(2,'Paulina esta totalmente feliz, y tras la primera sorpresa, corrió a ver los columpios de los niños del parque verde. Pero antes de que pudiera llegar, una mano gigante la alcanzó, y tomándola de un brazo, la llevó de nuevo junto al gran palacio rosa. Paulina quedó un poco extrañada, pero enseguida lo olvidó, porque vio sus queridas casas rojas, y hacia allí se dirigió. Pero nuevamente, antes de llegar a ellas, la gran mano volvió a aparecer, y la volvió a dejar junto al palacio. \n
        - No te esfuerces-dijo una princesita rosa que asomaba por uno de los balcones- nunca podrás abandonar la zona rosa'),
	(2,'Entonces la princesita explicó a Paulina cómo la gran mano nunca dejaba moverse a nadie en Tururulandia, y que aquel era el país más triste del mundo, porque nadie podía decidir qué hacía ni dónde iba. Y Paulita miró las caras de todas las figuritas y muñecos, y comprobó que era verdad. Y se dio cuenta de que aquella gran mano era la suya, la que utilizaba siempre para mantenerlo todo como ella quería. \n
        - ¿Pero entonces? ¿No os gusta vivir en un país tan bonito y organizado? - terminó preguntando Paulina. \n
        - Si no podemos elegir qué hacemos o a dónde vamos, ¿para qué nos sirve todo esto? \n
        - le respondieron - Si tan sólo tuviéramos un día para ver otras cosas... ¿no lo entiendes?'),
	(2,'Y vaya si lo entendió. Tras unos pocos días sin poder decidir nada por sí misma, ni moverse del castillo rosa, Paulina estaba profundamente triste; tanto, que su precioso país le daba totalmente igual. \n
        Hasta que una mañana, se despertó de nuevo en su vida normal, y al llegar junto a su país de juguete, lo primero que hizo fue cambiar las figuritas de sitio. Y así, cada vez que encontraba una fuera de su lugar, en vez de devolverla inmediatamente a su sitio, esperaba un día, para que tuviera tiempo de disfrutar de aquel bello país.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(2,'¿Que era Tururulandia?'),
	(2,'¿Como se llamaba la niña del cuento?'),
	(2,'¿Cuál era más soñaba paulina??'),
	(2,'¿Por qué Tururulandia era un lugar muy triste?'),
	(2,'¿Cuál valor es lo que aporta esta lectura?')
	
INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(8,0, 'Era un país en isla muy lejana'),
	(8,1, 'Era un pequeño y precioso país de juguete'),
	(8,0, 'Era un pueblo habitado duendes'),
	(8,0, 'Es una ciudad donde las personas son muy felices'),

	(9,1, 'Paulina'),
	(9,0, 'María'),
	(9,0, 'Fernanda '),
	(9,0, 'Carolina'),

	(10,0, 'Un amigo cercano.'),
	(10,0, 'Su vecino.'),
	(10,0, 'Un cantante famoso.'),
	(10,1, 'El consejero que le había dado el hada buena.'),

	(11,0, 'Porque su reina estaba enferma'),
	(11,0, 'No eran muy pequeños'),
	(11,0, 'Las personas eran muy malas'),
	(11,1, 'Nunca se le dejaba moverse a nadie '),

	(12,0, 'La libertad'),
	(12,0, 'La justicia'),
	(12,0, 'La responsabilidad'),
	(12,0, 'La equidad de genero')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Blancanieves y los 7 enanitos')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(3,'Blancanieves era una niña muy bonita y de dulce corazón. Siendo pequeña, su madre murió y su padre volvió a casarse con otra mujer, una malvada reina de nombre Grimhilde. Era una mujer terrible que envidiaba a la joven princesa por su belleza. \n
		La madrastra de Blancanieves también era muy vanidosa, tenía un espejo mágico que siempre le decía quién era la mujer más hermosa de todo el reino. Por eso, cada día y como parte de su rutina, ella le preguntaba: \n
		– Espejito, espejito, ¿Podrías decirme tu quién es la más guapa de todo el reino? \n
		– Eres tú mi señora, la mujer más hermosa de todas \n
		- respondía el espejo con voz profunda y oscura.'),
	(3,'Con el paso del tiempo, Blancanieves creció y se convirtió en una hermosa jovencita. Cierto día, cuando Grimhilde preguntó al espejo quién era la más bonita este respondió: \n
		– Mi señora, eres muy hermosa, pero Blancanieves te ha superado. \n
		Al escuchar tal respuesta, la malvada reina enfureció, pues no podía concebir que una niña fuera más hermosa que ella. Por eso, reunió a sus sirvientes y al cazador del castillo y les ordenó: \n
		— Mi querido espejo ha dicho que Blancanieves es más hermosa que yo. Os ordeno que lleven a Blancanieves al bosque y acaben con ella. Para estar segura que habéis cumplido con mi orden, quiero que me traigan su corazón en una caja. '),
	(3,'Los sirvientes y el cazador se llevaron a Blancanieves a dar un paseo por el bosque. La joven no sospechó nada y se entretuvo jugando con los pajaritos y las flores del bosque. Los sirvientes no pudieron cumplir la orden, la joven era muy noble y buena como para morir por su mano. \n
		— Huye muy lejos, tu madrastra te quiere muerta \n
		— advirtió el cazador \n
		— Yo le llevaré el corazón de un jabalí para engañarla y ganar tiempo.'),
	(3,'Blancanieves huyó a través del bosque durante horas, cuando estaba muy agotada y a punto de desfallecer, encontró una bonita cabaña en el bosque. Entró y descubrió que todo en su interior era muy pequeño y sucio. Había 7 sillas, siete camas y siete platos con comida. Blancanieves estaba muy hambrienta y cansada, así que se comió todo, limpió la casita y se fue a dormir sobre las siete camitas. \n
		Los dueños de esta cabaña eran 7 enanitos que trabajaban en una mina cercana. Al descubrir su casa invadida por tan hermosa niña sus corazones se enternecieron. Blancanieves les contó los terribles planes de su madrastra y ellos le permitieron quedarse '),
	(3,'La malvada reina Grimhilde no se daba por vencida y volvió a preguntar a su espejo quién era la mujer más guapa de todo el reino. El espejo no podía mentir, así que respondió: \n
		— Tu eres hermosa, pero Blancanieves sigue siendo la mujer más guapa de todas. \n
		— Eso es imposible, me trajeron su corazón en una caja \n
		— espetó llena de furia. \n
		— Fue engañada, mi ama. Blancanieves no está muerta, vive en una cabaña del bosque con siete enanitos. '),
	(3,'La madrastra enfadada decidió terminar el trabajo por su cuenta. Envenenó varias manzanas, se disfrazó de humilde anciana y se dirigió a la casita de los enanos. Al llegar, tocó la puerta y Blancanieves la recibió. \n
		— ¿Quién es? \n
		— Ay mi niña, soy una pobre anciana que vive cerca de aquí. Vine a traerte estas hermosas manzanas.  \n
		Blancanieves no pudo resistirse a la mágica belleza de las manzanas. Tomó una y pronto cayó muerta sobre el suelo. La malvada madrastra marchó entonces, riendo macabramente porque había logrado su cometido, ahora era la mujer más bella de todas. \n
		La terrible mujer se marchaba riendo mucho y muy alegre de que por fin había logrado acabar con Blancanieves y ser ella la más hermosa de todas. '),
	(3,'Cuando los enanitos llegaron a casa y descubrieron lo que había pasado, se pusieron muy tristes. Construyeron una hermosa caja de cristal en la que dejaron a Blancanieves, luego la llevaron al bosque.\n
		Un día, un príncipe paseaba por el lugar, descubrió a Blancanieves y prendado de su belleza y triste por la suerte de los enanitos, abrió la caja y besó a Blancanieves. \n
		Aquel beso lleno de amor deshizo el hechizo de la malvada bruja, la joven despertó y pronto se vio rodeada de sus siete enanitos y un príncipe encantador. \n
		El príncipe se casó con Blancanieves y la llevó a vivir a su palacio junto a los siete enanitos. Todos fueron felices para siempre.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(3,'¿Cuál era el nombre de la madrasta de Blancanieves?'),
	(3,'¿A que objecto la madrastra de Blancanieves le preguntaba quién era la más hermosa del reino?'),
	(3,'¿La madrastra a quienes ordeno que se desasieran de Blancanieves?'),
	(3,'¿Cuántos enanitos eran los que viven en la casa que encontró Blancanieves en el bosque?'),
	(3,'¿De que se disfrazó la madrastra de Blancanieves para ir a visitarla al bosque?'),
	(3,'6.	¿Qué es lo que madrastra le dio a Blancanieves cuando la visito?'),
	(3,'7.	¿Qué fue lo que rompió el hechizo de Blancanieves?'),
	(3,'8.	¿Qué paso al final del cuento?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(13,0, 'Malefica'),
	(13,0, 'Carolina'),
	(13,0, 'Karla'),
	(13,1, 'Grimhilde'),

	(14,1, 'Un espejo Mágico'),
	(14,0, 'Un pozo mágico'),
	(14,0, 'Una lampara mágico'),
	(14,0, 'Ninguna de las anteriores'),

	(15,1, 'A sus sirvientes y al cazador del reino'),
	(15,0, 'A unos campesinos'),
	(15,0, 'A un ladrón'),
	(15,0, 'A unos soldados '),

	(16,0, '3 enanitos'),
	(16,1, '7 enanitos'),
	(16,0, '12 enanitos'),
	(16,0, '8 enanitos'),

	(17,0, 'En duende '),
	(17,0, 'En una bruja'),
	(17,0, 'En un enanito '),
	(17,1, 'En anciana'),

	(18,0, 'Una aguja'),
	(18,1, 'Una manzana envenenada'),
	(18,0, 'Un arpa'),
	(18,0, 'Un perrito'),

	(19,0, 'La pócima que le dio a beber el príncipe'),
	(19,1, 'Un beso del príncipe'),
	(19,0, 'La madrasta le retiro el hechizo'),
	(10,0, 'Ninguna de anteriores'),

	(20,0, 'El príncipe de baso con Blancanieves'),
	(20,1, 'Blancanieves no se casó con el príncipe'),
	(20,0, 'La madrasta fue a la cárcel por sus acciones cometidas'),
	(20,0, 'Ninguna de las anteriores')




INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'El viaje de las hijas del sultan')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(4,'Hubo una vez un viejo sultán preocupado porque aún no había decidido a cuál de sus hijas dejar el trono. Su amigo el visir le aconsejó: \n
		- Ponlas a prueba. La vida es un largo viaje ¿no? Pues llévalas a un lugar remoto y que cada un viaje hasta aquí por su cuenta. Júzgalas a su vuelta por lo que hayan aprendido. \n
		- ¿Y si algo les ocurriera? \n
		- No se preocupe, majestad. Dejaré que les guarde y acompañe un animal de su elección.'),
	(4,'Ara y Taira, las princesas, fueron llevadas muy lejos, y allí pudieron elegir su animal protector. Ara eligió un magnífico y poderoso tigre que no desentonaba ni con la belleza ni con el carácter valiente e impetuoso de la princesa. \n
		- Me encanta ese tigre- dijo Taira- pero yo no lo escogería para un viaje tan largo. Los tigres son peligrosos y difíciles de controlar. \n
		- No te preocupes, hermanita, yo sabré dominarlo- respondió Ara al emprender el camino de vuelta. \n
		Taira pasó algún tiempo conociendo a los animales antes de elegir su compañero. Y aunque los animales bellos y exóticos le parecían maravillosos, se decidió por un perro de ojos inteligentes, simpático y bonachón, con el que se entendía a las mil maravillas. \n'),
	(4,'El viaje resultó muy extraño. Cada vez que pasaban por algún pueblo o ciudad, Ara y su tigre levantaban gran admiración y eran acogidos con fiestas y celebraciones, mientras Taira y su perro pasaban prácticamente desapercibidos. Pero el resto del tiempo, cuando viajaban alejados de la gente, Taira disfrutaban de todo tipo de juegos con su perro, mientras que Ara apenas conseguía dominar la ira y la fuerza del tigre, y vivía angustiada pensando que en cualquier momento el animal pudiera llegar a atacarla. Y lo hizo varias veces, aunque las heridas nunca llegaron a ser graves. \n
		Cuando Ara y su tigre llegaron al palacio también fueron recibidos entre aclamaciones. Al poco llegó Taira, y el visir recordó entonces al sultán: \n
		- Ha llegado la hora de decidirse. Preguntadles qué tal fue el viaje y qué han aprendido. \n'),
	(4,'- ¿Qué necesidad hay? - replicó el sultán - Mira a Ara y su magnífico tigre, tienen una imagen perfecta y todo el mundo los adora. \n
		- Preguntadles de todas formas - insistió el visir- seguro que tienen magníficas historias que contar. \n
		- Cierto, eso seguro... ¿Queridas hijas? ¿Qué tal vuestro viaje? \n
		Ara apenas tuvo tiempo de responder, porque Taira se lanzó a hablar sin parar. Se le había hecho tan corto, y lo había pasado tan bien con su perro, que no dejaba de dar las gracias a su padre por habérselo regalado, y le pidió conservarlo para siempre. Y mientras Taira contaba sus mil historias, el sultán vio en lo ojos de la bella Ara una pequeña lágrima de envidia ¡se le había hecho tan largo! ¡y todo por haber elegido aquel tigre brusco y salvaje! '),
	(4,'El visir, viendo que el sultán había comprendido, gritó con voz potente: \n
		- Ya no hay necesidad de trucos ¡Al sal halam! \n
		... y una nube mágica devolvió al perro y al tigre su forma humana. Eran dos de los muchos príncipes que llevaban años cortejando a las hijas del sultán. Las dos reconocieron enseguida al tigre: era Agra, el más apuesto y poderoso de sus pretendientes, del que ambas habían estado enamoradas durante años. El perro era Asalim, un joven del que apenas recordaban nada. Pero tenía los ojos y la sonrisa de su querido compañero de juegos, y Taira se lanzó a sus brazos y corrió a pedir permiso a su padre para celebrar la boda. \n
		Agra estiró las manos hacia Ara con una sonrisa: hacían una pareja admirable. Pero en sus ojos la princesa reconoció la fiereza y agresividad que tantas veces mostró su compañero de viaje. Y no tuvo ninguna duda: perdería el trono y su amor de juventud, pero no pasaría toda su vida en compañía de un tigre al que nunca podría controlar.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(4,'¿Cómo se llamaban las hijas del Sultán?'),
	(4,'¿Qué animal eligió la princesa Ara para viajar devuelta con su papa?'),
	(4,'¿Cuál fue la razón por la cual la princesa Taira eligió de animal al perro para ser su compañero de viaje?'),
	(4,'¿Cuál era el nombre del príncipe que era un tigre?'),
	(4,'¿Al final del cuento que princesa le pide permiso al Sultán para casarse?'),
	(4,'Que animal eligió la princesa Taira para viajar devuelta con su papa')
	

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(21,1, 'Ara y Taira'),
	(21,0, 'María y Fernanda'),
	(21,0, 'Elizabeth y Ara'),
	(21,0, 'Taira y Elizabeth'),

	(22,0, 'Un águila'),
	(22,1, 'Un tigre'),
	(22,0, 'Un Oso'),
	(22,0, 'Un Perro'),

	(23,0, 'Por ser muy rápido y valiente'),
	(23,1, 'Por sus ojos inteligentes, simpático y bonachón '),
	(23,0, 'Ninguna de las anteriores respuestas'),
	(23,0, 'Por era muy bonito'),

	(24,1, 'Agra'),
	(24,0, 'Carlos'),
	(24,0, 'José'),
	(24,0, 'Marcos'),

	(25,0, 'La princesa María'),
	(25,0, 'La princesa Aria'),
	(25,1, 'La princesa Taira'),
	(25,0, 'La princesa Elizabeth'),

	(26,0, 'Un águila'),
	(26,0, 'Un tigre'),
	(26,0, 'Un Oso'),
	(26,0, 'Un Perro')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Gorg el gigante')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(5,'Gorg el gigante vivía desde hacía siglos en la Cueva de la Ira. Los gigantes eran seres pacíficos y solitarios hasta que el rey Cío el Terrible les acusó de arruinar las cosechas y ordenó la gran caza de gigantes. Sólo Gorg había sobrevivido, y desde entonces se había convertido en el más feroz de los seres que habían existido nunca; resultaba totalmente invencible y había acabado con cuantos habían tratado de adentrarse en su cueva, sin importar lo valientes o poderosos que fueran. \n
		Muchos reyes posteriores, avergonzados por las acciones de Cío, habían tratado de sellar la paz con Gorg, pero todo había sido en vano, pues su furia y su ira le llevaban a acabar con cuantos humanos veía, sin siquiera escucharlos. Y aunque los reyes dejaron tranquilo al gigante, no disminuyó su odio a los humanos, pues muchos aventureros y guerreros llegaban de todas partes tratando de hacerse con el fabuloso tesoro que guardaba la cueva en su interior.'),
	(5,'Sin embargo, un día la joven princesa fue mordida por una serpiente de los pantanos, cuyo antídoto tenía una elaboración secreta que sólo los gigantes conocían, así que el rey se vio obligado a suplicar al gigante su ayuda. Envió a sus mejores guerreros y a sus más valientes caballeros con la promesa de casarse con la princesa, pero ni sus mágicos escudos, ni las más poderosas armas, ni las más brillantes armaduras pudieron nada contra la furia del gigante. Finalmente, el rey suplicó ayuda a todo el reino: con la promesa de casarse con la princesa, y con la ayuda de los grandes magos, cualquier valiente podía acercarse a la entrada de la cueva, pedir la protección de algún conjuro, y tratar de conseguir la ayuda del gigante. \n
		Muchos lo intentaron armados de mil distintas maneras, protegidos por los más formidables conjuros, desde la Fuerza Prodigiosa a la Invisibilidad, pero todos sucumbieron. Finalmente, un joven músico apareció en la cueva armado sólo con un arpa, haciendo su petición a los magos: "quiero convertirme en una bella flor y tener la voz de un ángel".'),
	(5,'Así apareció en el umbral de la cueva una flor de increíble belleza, entonando una preciosa melodía al son del arpa. Al oír tan bella música, tan alejada de las armas y guerreros a que estaba acostumbrado, la ira del gigante fue disminuyendo. La flor siguió cantando mientras se acercaba al gigante, quien terminó tomándola en su mano para escucharla mejor. Y la canción se fue tornando en la historia de una joven princesa a punto de morir, a quien sólo un gigante de buen corazón podría salvar. El gigante, conmovido, escuchaba con emoción, y tanta era su calma y su tranquilidad, que finalmente la flor pudo dejar de cantar, y con voz suave contó la verdadera historia, la necesidad que tenía la princesa de la ayuda del gigante, y los deseos del rey de conseguir una paz justa y duradera. \n
	El gigante, cansado de tantas luchas, viendo que era verdad lo que escuchaba, abandonó su cueva y su ira para curar a la princesa. Y el joven músico, quien además de domar la ira del gigante, conquistó el corazón de la princesa y de todo el reino, se convirtió en el mejor de los reyes.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(5,'¿Cuál es nombre del gigante que aparece en el cuento?'),
	(5,'¿Qué es el nombre del rey que acuso a los gigantes de arruinar sus cosechas?'),
	(5,'¿Dónde vivía el gigante que aparece en el cuento?'),
	(5,'¿En donde la serpiente mordió a la princesa?'),
	(5,'¿Qué petición hizo a los magos el joven para enfrentar al gigante?'),
	(5,'¿El gigante acepto curar a la princesa?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(27,1, 'Gorg'),
	(27,0, 'Juraz'),
	(27,0, 'Rael'),
	(27,0, 'Grutt'),

	(28,1, 'El rey Cio'),
	(28,0, 'El rey Carlos'),
	(28,0, 'El rey Felipe'),
	(28,0, 'El rey Nazario'),

	(29,0, 'En una montaña'),
	(29,1, 'En una cueva'),
	(29,0, 'En un castillo abandonado'),
	(29,0, 'En una Isla '),

	(30,0, 'En un bosque'),
	(30,0, 'En un rio'),
	(30,1, 'En los pantanos'),
	(30,0, 'En una granja'),

	(31,0, 'Que le crearan el arma más poderosa del reino'),
	(31,0, 'Que le crearan una pócima para poder dormir al gigante '),
	(31,1, 'Convertirse en una bella flor y tener la voz de un ángel'),
	(31,0, 'Convertirse en el guerrero más fuerte del reino'),

	(32,1, 'Si'),
	(32,0, 'No')
	

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La Cenicienta')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(6,'Había una vez, en un hermoso país, un rico comerciante que vivía feliz en compañía de su esposa y su hermosa hija. Un oscuro día, el comerciante enviudó, su esposa había contraído una misteriosa y terrible enfermedad. \n
		Fue así como empezó a vivir en soledad con su hija, en una enorme finca a las afueras del pueblo. Con el paso de los años, el padre de la joven decidió volver a casarse, por lo que contrajo matrimonio con una señora respetable, Lady Tremaine, una viuda con dos hijas, Drizella y Anastasia. \n
		El padre de la joven murió de forma inesperada y esto selló el destino de la joven. Lady Tremaine era una mujer muy cruel y egoísta, solo deseaba el bienestar de sus hijas y odiaba a su hijastra porque era más bonita y noble. '),
	(6,'Obligó a la joven a trabajar hasta el cansancio, tanto trabajó que su nombre pasó a ser Cenicienta, pues sus ropas siempre estaban llenas de cenizas de la chimenea. La pobre Cenicienta era la sirvienta de su propia casa, era humillada y maltratada, pero no por eso dejó de ser gentil. Su amabilidad la hizo convertirse en amiga de los ratones y pájaros que vivían cerca de la casa. \n
		Un día, mientras Cenicienta preparaba el desayuno, el malvado gato de Lady Tremaine, Lucifer, persiguió a uno de los ratones, Gus. El ratoncito en su inocencia se escondió detrás de la taza de té de Anastasia, dándole un susto de muerte. Anastasia acusó a Cenicienta ante su madre y está la castigó con tareas extras. \n
		Y así pasaron los días, hasta que llegó a la casa una invitación. El rey ofrecía un baile para que su hijo, el príncipe, escogiera su esposa.'),
	(6,'Drizella y Anastasia enloquecieron de alegría. Empezaron a pelear por los vestidos más hermosos y a gritar con sus estridentes voces hasta que Lady Tremaine intervino y le ordenó a la pobre Cenicienta que las peinara y creara para ellas los vestidos más hermosos. \n
		 — ¿Si lo hago podré ir? La invitación dice que deben ir todas las doncellas casaderas del reino—dijo Cenicienta con humildad. \n
		 — Si terminas tus tareas podrás ir—la malvada madrastra rompió a reír—. Si encuentras un vestido y no vas con esos harapos. No quiero que relacionen a mis hijas contigo. \n
		 Y así, Cenicienta añadió a sus tareas el tener que diseñar y coser vestidos para sus hermanas, probar peinados en ellas y maquillarlas. Solo con la ayuda de los pajaritos y ratoncitos pudo terminar sus tareas y arreglar un viejo y hermoso vestido que había heredado de su madre para poder asistir al baile. '),
	(6,'Al ver a Cenicienta bajar del ático más hermosa que ellas, la envidia de Drizella y Anastasia fue tal que se arrojaron sobre ella y destruyeron su vestido, acusándola de ladrona. La pobre Cenicienta corrió a refugiarse entre las calabazas, no paraba de llorar por haber perdido el vestido de su madre y no poder asistir al baile. \n
		Tanto lloró Cenicienta que fue escuchada por el hada madrina de los imposibles, quien se dirigió a su lado y la consoló. \n
		—Puedes ir al baile, pero debes regresar antes del término de las 12 campanadas que anuncian la medianoche—advirtió. \n
		Cenicienta estuvo de acuerdo y observó con asombro como el hada madrina convirtió su vestido harapiento y roto en un hermoso vestido blanco cubierto de diamantes. El hada también le dio dos hermosas zapatillas de cristal.'),
	(6,'Como faltaba un carruaje, el hada madrina transformó una calabaza del huerto en uno, los ratones los convirtió en caballos, al caballo de la finca en un cochero y al perro en un lacayo. \n
		Así, Cenicienta acudió al baile, donde el príncipe, cansado de sonsas doncellas, se había negado a bailar con ellas, hasta que sus ojos se toparon con Cenicienta, fue amor a primera vista. El príncipe la invitó a bailar y no se separaron durante toda la noche. Cenicienta se distrajo tanto que no escuchó el reloj empezar a dar las campanadas que anunciaban la medianoche. Cuando lo hizo, corrió fuera del castillo, dejando detrás una de sus zapatillas de cristal. \n
		Cenicienta llegó a la finca y descubrió que de su hermoso vestido solo quedaba una zapatilla de cristal. La escondió en su ático y esperó al regreso de su madrastra y hermanastras.  \n
		Mientras tanto en el palacio, el Gran Duque informó al Rey de la fuga de Cenicienta y que el príncipe había jurado casarse con ella. Lamentablemente, solo tenían en su poder la zapatilla de cristal, por lo que el príncipe debería casarse con la doncella a la cual le quedara tan delicada y fina pieza.'),
	(6,'Y así, el Duque empezó a recorrer todas las casas del reino donde viviera una doncella para probar la delicada zapatilla de cristal, pero a ninguna le quedó. Entonces, se dirigió a casa de Cenicienta, donde lo esperaba Lady Tremaine y sus hijas.  \n
		Lady Tremaine había escuchado tararear a Cenicienta la canción del baile en el palacio y sospechó de ella, por eso y antes que llegara el Duque, la encerró en el ático. \n
		Cuando llega el Duque, los dos ratoncitos amigos de Cenicienta, Jaq y Gus robaron la llave del ático y con ayuda de otros animales logran evadir al terrible Lucifer. '),
	(6,'Las hermanastras de Cenicienta no habían logrado que sus pies entraran en la zapatilla y el Duque estaba cada vez más desesperado. Para su suerte, Cenicienta llegó en ese momento y pidió probar la zapatilla. Lady Tremaine hizo tropezar al Duque, provocando que la zapatilla cayera al suelo y se rompiera en miles de pedazos. \n
		El Gran Duque se llenó de terror, pero Cenicienta sacó de su bolsillo la otra zapatilla de cristal, demostrando que ella era la doncella de la cual estaba enamorado el príncipe. El Duque probó la zapatilla en los pies de Cenicienta y esta calzó perfectamente. \n
		Poco tiempo después, se celebró la boda entre Cenicienta y el Príncipe, quienes vivieron felices para siempre.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(6,'¿Cómo se llamaban las dos hermanastras de cenicienta?'),
	(6,'¿Cómo se llama la madrasta de Cenicienta?'),
	(6,'¿Cómo se llamaba el malvado gato de la madrastra de cenicienta?'),
	(6,'¿Antes de que horas debía regresar cenicienta del baile?'),
	(6,'¿Los ratones en que animal nos convierte la hada madrina?'),
	(6,'¿Qué es lo que le dio el hada madrina a cenicienta para ir al baile?'),
	(6,'¿Qué es lo que extravió Cenicienta cuando se marchó del baile?'),
	(6,'¿Cómo se llamaban los 2 ratoncitos que aparecen en el cuento?'),
	(6,'¿Qué sucede al final del cuento?')
	
	
	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(33,1, 'Drizella y Anastasia '),
	(33,0, 'Anastacia y Alicia'),
	(33,0, 'Carmen y Drizella'),
	(33,0, 'Josefina y anastacia'),

	(34,0, 'Madam Caterin'),
	(34,0, 'Lady Samsa'),
	(34,0, 'Madam Aria '),
	(34,1, 'Lady Tremaine'),

	(35,1, 'Lucifer'),
	(35,0, 'Cobarde'),
	(35,0, 'Lucia'),
	(35,0, 'Malvavisco'),

	(36,0, 'Antes de medianoche'),
	(36,1, 'Después de medianoche'),
	(36,0, 'Antes del amanecer'),
	(36,0, 'Ninguna de las anteriores'),

	(37,1, 'En caballos'),
	(37,0, 'En perros'),
	(37,0, 'En pájaros'),
	(37,0, 'En unicornios'),

	(38,0, 'Un par de hermosos aretes'),
	(38,0, 'Unos bonitos guantes'),
	(38,0, 'Un hermosa mascara plateada'),
	(38,1, 'Dos hermosas zapatillas de diamante'),

	(39,1, 'Una zapatilla'),
	(39,0, 'Su bolso'),
	(39,0, 'Su abrigo '),
	(39,0, 'Ninguna de las anteriores'),

	(40,0, 'Gansu y Federico'),
	(40,0, 'Juancho y Fermin'),
	(40,1, 'Jaq y Gus'),
	(40,0, 'Malvavisco y dormilón '),

	(41,1, 'Cenicienta y el príncipe se casan'),
	(41,0, 'El príncipe no encontró a la joven que extravió la zapatilla'),
	(41,0, 'El príncipe no busco a la doncella que extravió la zapatilla'),
	(41,0, 'Ninguna de las anteriores')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La invitacion para el Gran Baile')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(7,'Un príncipe terriblemente desordenado nunca hace caso a sus padres cuando le piden orden. La princesa del reino vecino, de la que está enamorado en secreto, organiza un gran baile e invita a todos los príncipes de los alrededores. El príncipe está emocionado y lo prepara todo con esmero, pero el día del baile no encuentra la invitación entre el desorden de su cuarto. El busca desesperado y no la encuentra, y al final decide ordenar todo su cuarto, encontrando la invitación justo encima de la mesa. Para cuando llega al baile ya se marchaban todos y se vuelve muy triste y habiendo aprendido la lección. \n
	Pero tuvo suerte, y como no encontró novio, la princesa repitió el baile poco después, y como esta vez tuvo todo ordenado, no perdió la invitación y pudo conocer a la princesa, que también se enamoró de él.')
	
INSERT INTO Question(IdContent,Text)
	VALUES
	(7,'¿A dónde fue invitado el príncipe?'),
	(7,'¿Dónde había dejado la invitación el príncipe?'),
	(7,'¿Por qué el príncipe no podía encontrar la invitación al baile?'),
	(7,'¿Quién organizo el gran baile?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(42,1, 'A un gran baile'),
	(42,0, 'A una cena'),
	(42,0, 'A una Boda'),
	(42,0, 'Ninguna de las anteriores'),

	(43,1, 'Encima de la mesa'),
	(43,0, 'En la cama'),
	(43,0, 'La había tirado a la basura'),
	(43,0, 'No ala encontró'),

	(44,0, 'Nunca le enviaron la invitación'),
	(44,1, 'Porque tenía todo su cuarto desordenado'),
	(44,0, 'Porque la había tira a la basura'),
	(44,0, 'Ninguna de las anteriores'),

	(45,0, 'El padre del príncipe'),
	(45,1, 'La princesa de reino vecino'),
	(45,0, 'El rey de del reino vecino'),
	(45,0, 'Ninguna de las anteriores')




INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La princesa de fuego')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(8,'Hubo una vez una princesa increíblemente rica, bella y sabia. Cansada de pretendientes falsos que se acercaban a ella para conseguir sus riquezas, hizo publicar que se casaría con quien le llevase el regalo más valioso, tierno y sincero a la vez. El palacio se llenó de flores y regalos de todos los tipos y colores, de cartas de amor incomparables y de poetas enamorados. Y entre todos aquellos regalos magníficos, descubrió una piedra; una simple y sucia piedra. Intrigada, hizo llamar a quien se la había regalado. A pesar de su curiosidad, mostró estar muy ofendida cuando apareció el joven, y este se explicó diciendo: \n
		- Esa piedra representa lo más valioso que os puedo regalar, princesa: es mi corazón. Y también es sincera, porque aún no es vuestro y es duro como una piedra. Sólo cuando se llene de amor se ablandará y será más tierno que ningún otro.'),
	(8,'El joven se marchó tranquilamente, dejando a la princesa sorprendida y atrapada. Quedó tan enamorada que llevaba consigo la piedra a todas partes, y durante meses llenó al joven de regalos y atenciones, pero su corazón seguía siendo duro como la piedra en sus manos. Desanimada, terminó por arrojar la piedra al fuego; al momento vio cómo se deshacía la arena, y de aquella piedra tosca surgía una bella figura de oro. Entonces comprendió que ella misma tendría que ser como el fuego, y transformar cuanto tocaba separando lo inútil de lo importante.'),
	(8,'Durante los meses siguientes, la princesa se propuso cambiar en el reino, y como con la piedra, dedicó su vida, su sabiduría y sus riquezas a separar lo inútil de lo importante. Acabó con el lujo, las joyas y los excesos, y las gentes del país tuvieron comida y libros. Cuantos trataban con la princesa salían encantados por su carácter y cercanía, y su sola presencia transmitía tal calor humano y pasión por cuanto hacía, que comenzaron a llamarla cariñosamente "La princesa de fuego". \n
		Y como con la piedra, su fuego deshizo la dura corteza del corazón del joven, que tal y como había prometido, resultó ser tan tierno y justo que hizo feliz a la princesa hasta el fin de sus días')

INSERT INTO Question(IdContent,Text)
	VALUES
	(8,'¿Cuál fue el regalo que más intrigo a la princesa?'),
	(8,'¿Qué hiso la princesa con la piedra cuando se desamino?'),
	(8,'¿Que surge de la piedra cuando la princesa la arrojo al fuego?'),
	(8,'¿Cómo las personas del reino llamaban a la princesa de cariño?'),
	(8,'¿Cómo se describen a la princesa en el cuento?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(46,0, 'Un tigre muy exótico'),
	(46,1, 'Una piedra'),
	(46,0, 'Una carta de amor'),
	(46,0, 'Unas joyas de oro'),

	(47,0, 'El aguardo en un cofre'),
	(47,0, 'El tiro a la basura'),
	(47,0, 'Se la devolvió al joven'),
	(47,1, 'El arrojo la piedra al fuego'),

	(48,1, 'Una bella figura de oro'),
	(48,0, 'Se derritió'),
	(48,0, 'Se trasformó en un corazón rojo'),
	(48,0, 'Ninguna de las anteriores'),

	(49,1, 'La princesa de fuego'),
	(49,0, 'La princesa Bondadosa'),
	(49,0, 'La princesa roja'),
	(49,0, 'Ninguna de las anteriores'),

	(50,0, 'Cruel con el pueblo y muy bella'),
	(50,1, 'Rica, bella y sabia'),
	(50,0, 'Muy bonita, simpática y muy alegre'),
	(50,0, 'Ninguna de las anteriores')


	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La Sirenita')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(9,'En el fondo de los océanos había un precioso palacio en el cual vivía el Rey del Mar junto a sus cinco hijas, bellísimas sirenas. La más joven, la Sirenita, además de ser la más hermosa, poseía una voz maravillosa. \n
		Cuando cantaba, todos los habitantes del fondo del mar acudían para escucharla. Además de cantar, Sirenita soñaba con salir a la superficie para ver el cielo y conocer el mundo de los hombres, como lo relataban sus hermanas. \n
		Pero su padre le decía que solo cuando cumpliera los 15 años tendría su permiso para hacerlo. Pasados los años, finalmente llegaron el cumpleaños y el regalo tan deseados. \n
		Sirenita por fin pudo salir a respirar el aire y ver el cielo, después de oír los consejos de su padre: Recuerda que el mundo de arriba no es el nuestro, sólo podemos admirarlo. Somos hijos del mar. Sé prudente y no te acerques a los hombres'),
	(9,'Y al emergerse del agua Sirenita se quedó de boca abierta. Todo era nuevo para ella. Y todo era hermoso, ¡fascinante! Sirenita era feliz. Pasados unos minutos, Sirenita pudo observar, con asombro, que un barco se acercaba y paraba. Se puso a escuchar voces. Y pensó en lo cuanto le gustaría hablar con ellos. \n
		Pero miró a su larga cola y comprendió que eso era imposible. Continuó mirando al barco. A bordo había una gran fiesta de aniversario. El capitán del barco cumplía veinte años de edad. \n
		Sirenita se quedó atónita al ver el joven. Era alto, moreno, de porte real, y sonreía feliz. La Sirenita sintió una extraña sensación de alegría y sufrimiento a la vez. \n
		Algo que jamás había sentido en su corazón. La fiesta seguía hasta que repentinamente un viento fuerte agitó las olas, sacudiendo y posteriormente volcando el barco. Sirenita vio como el joven capitán caía al mar.'),
	(9,'Nadó lo que pudo para socorrerlo, hasta que le tuvo en sus brazos. El joven estaba inconsciente, pero Sirenita nadó lo que pudo para llevarlo hasta tierra. Depositó el cuerpo del joven sobre la arena de la playa y estuvo frotando sus manos intentando despertarlo. \n
		Pero un murmullo de voces que se aproximaban la obligaron a refugiarse en el mar. Desde el mar, vio como el joven recobraba el conocimiento y agradecía, equivocadamente, a una joven dama por haberle salvado la vida. \n
		Sirenita volvió a la mansión paterna y les contó toda su experiencia. Después pasó días llorando en su habitación. Se había enamorado del joven capitán pero sentía que jamás podría estar con él.'),
	(9,'Días después, Sirenita acudió desesperada a la casa de la Hechicera de los Abismos. Quería deshacerse de su cola de pez a cualquier precio. E hicieron un trato: Sirenita tendría dos piernas a cambio de regalar su hermosa voz a la hechicera que le advirtió: "Si el hombre que amas se casa con otra, tu cuerpo desaparecerá en el agua como la espuma de una ola". \n
		Asintiendo a las condiciones de la hechicera, Sirenita bebió la pócima mágica e inmediatamente perdió el conocimiento. Cuando despertó se encontraba tendida en la arena de la playa, y a su lado estaba el joven capitán que intentaba ayudarla a levantarse. Y le dijo: "te llevaré al castillo y te curaré". \n
		Durante los días siguientes, Sirenita pasó a vestirse como una dama, y acompañaba al príncipe en sus paseos. Era invitada a los bailes de la corte pero como no podía hablar, no podía explicar al príncipe lo que había sucedido en la noche que le salvó.'),
	(9,'El príncipe no paraba de pensar en la dama que pensaba haber salvado su vida y Sirenita se daba cuenta de eso. Pero el destino le reservaba otra sorpresa. \n
		Un día, avistaron un gran barco que se acercaba al puerto. El barco traía una desconocida que enseguida llamó la atención del príncipe. Sirenita sintió un agudo dolor en su corazón, y sintió que perdería a su príncipe para siempre. \n
		El príncipe quedó prendado de la joven desconocida, que no era otra que la bruja disfrazada, y al haberle robado su voz, el príncipe creyó que era su salvadora y se enamoró de ella.  \n
		Le pidió matrimonio, y para celebrarlo fueron invitados a hacer un gran viaje por mar al día siguiente, acompañados también por la Sirenita. Al caer la noche, Sirenita, recordando el acuerdo que había hecho con la hechicera, estaba dispuesta a sacrificar su vida y a desaparecer en el mar, hasta que escuchó la llamada de sus hermanas.'),
	(9,'- ¡Sirenita! ¡Sirenita! ¡Somos nosotras, tus hermanas!. Escucha con atención, hay una forma de romper el hechizo y recuperar la voz que la bruja te ha robado. Si besas al príncipe conseguirás que se enamore de ti y se rompa el encantamiento. \n
		La Sirenita corrió y corrió hasta el gran salón donde iba a comenzar la ceremonia de boda. Se lanzó a los brazos del príncipe y le besó, dejando a todos boquiabiertos. \n
		La hechicera recuperó su desagradable voz y aspecto, y la Sirenita pudo explicar lo que había ocurrido realmente. La bruja fue encerrada en el calabozo, y el príncipe se disculpó con la Sirenita. \n
		Esa misma tarde se celebró la boda entre la Sirenita y el príncipe, y todos cantaron para celebrar su amor.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(9,'¿Sirenita además de ser muy hermosa que otra cualidad poesía?'),
	(9,'¿A los cuantos años el papa se sirenita la dejara salir a la superficie del mar?'),
	(9,'¿A dónde fue sirenita a para querer quitarse de su cola y tener par de piernas? '),
	(9,'¿Qué fue lo que pidió la hechicera a cambio de dale dos piernas sirenita?'),
	(9,'¿Qué paso al final de cuento?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(51,1, 'Una hermosa voz'),
	(51,0, 'Una hermosa cola'),
	(51,0, 'Un muy bonito cabello'),
	(51,0, 'Ninguna de las anteriores'),

	(52,0, '20'),
	(52,0, '21'),
	(52,1, '15'),
	(52,0, '16'),

	(53,0, 'Con su padre'),
	(53,0, 'Con el mago del reino'),
	(53,1, 'La casa de la Hechicera de los Abismos'),
	(53,0, 'Ninguna de las anteriores'),

	(54,1, 'Que le regalara su hermosa voz'),
	(54,0, 'Que le regalara su hermoso cabello'),
	(54,0, 'Que le regalara su hermosa cola'),
	(54,0, 'Ninguna de las anteriores'),

	(55,0, 'El papa de Ariel se la llevo de vuelta a su reino'),
	(55,0, 'La sirenita renuncio al amor que sentía por el príncipe'),
	(55,1, 'Ariel se casó con el príncipe'),
	(55,0, 'La hechicera se casó con el príncipe ')


	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Las princesas del lago')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(10,'Había una vez dos bellas princesas María la mayor y Alejandra la menor que, siendo aún pequeñas, habían sido raptadas por un rey enemigo. Éste había ordenado llevarlas a un lago perdido, y abandonarlas en una pequeña isla, donde permanecerían para siempre custodiadas por un terrible monstruo marino. \n
		Sólo cuando el malvado rey y su corte de brujos y adivinos fueron derrotados, pudieron en aquel país descubrir que en el destino estaba escrito que llegaría el día en que un valiente príncipe liberaría a las princesas de su encierro.'),
	(10,'Cuando el viento llevó la noticia a la isla, llenó de esperanza la vida de las princesas. La más pequeña, mucho más bella y dulce que su hermana, esperaba pacientemente a su enamorado, moldeando pequeños adornos de flores y barro, y cantando canciones de amor.La mayor, sin embargo, no se sentía a gusto esperando sin más. "Algo tendré que hacer para ayudar al príncipe a rescatarme. Que por lo menos sepa dónde estoy, o cómo es el monstruo que me vigila." Y decidida a facilitar el trabajo del príncipe, se dedicó a crear hogueras, construir torres, cavar túneles y mil cosas más. Pero el temible monstruo marino fastidiaba siempre sus planes.'),
	(10,'Con el paso del tiempo, la hermana mayor se sentía más incómoda. Sabía que el príncipe elegiría a la pequeña, así que no tenía mucho sentido seguir esperando. Desde entonces, la joven dedicó sus esfuerzos a tratar de escapar de la isla y del monstruo, sin preocuparse por si finalmente el príncipe aparecería para salvarla o no. \n
		Cada mañana preparaba un plan de huída diferente, que el gran monstruo siempre terminaba arruinando. Los intentos de fuga y las capturas se sucedían día tras día, y se convirtieron en una especie de juego de ingenio entre la princesa y su guardián. Cada intento de escapada era más original e ingenioso, y cada forma de descubrirlo más sutil y sorprendente. Ponían tanto empeño e imaginación en sus planes, que al acabar el juego pasaban horas comentando amistosamente cómo habían preparado su estrategia. Y al salir la luna, se despedían hasta el día siguiente y el monstruo volvía a las profundidades del lago.'),
	(10,'Un día, el monstruo despidió a la princesa diciendo: \n
		- Mañana te dejaré marchar. Eres una joven lista y valiente. No mereces seguir atrapada. \n
		Pero a la mañana siguiente la princesa no intentó escapar. Se quedó sentada junto a la orilla, esperando a que apareciera el monstruo. \n
		- ¿Por qué no te has marchado? \n
		- No quería dejarte aquí solo. Es verdad que das bastante miedo, y eres enorme, pero tú también eres listo y mereces algo más que vigilar princesas. ¿Por qué no vienes conmigo? \n
		- No puedo- respondió con gran pena el monstruo-. No puedo separarme de la isla, pues a ella me ata una gran cadena. Tienes que irte sola.'),
	(10,'La joven se acercó a la horrible fiera y la abrazó con todas sus fuerzas. Tan fuerte lo hizo, que el animal explotó en mil pedazos. Y de entre tantos pedacitos, surgió un joven risueño y delgaducho, pero con esa misma mirada inteligente que tenía su amigo el monstruo. \n
		Así descubrieron las princesas a su príncipe salvador, quien había estado con ellas desde el principio, sin saber que para que pudiera salvarlas antes debían liberarlo a él. Algo que sólo había llegado a ocurrir gracias al ánimo y la actitud de la hermana mayor.Y el joven príncipe, que era listo, no tuvo ninguna duda para elegir con qué princesa casarse.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(10,'¿Cómo se llamaban las dos princesas que aparecen en el cuento?'),
	(10,'¿A dónde fueron llevadas las princesas cuando el rey malvado las rapto?'),
	(10,'¿Por qué el monstruo decidido dejar escapar a la princesa mayor?'),
	(10,'¿Por qué no podía irse el mostró de lago?'),
	(10,'¿En que se convirtió el monstruo, cuando la princesa lo abrazo?  '),
	(10,'6.	¿Con que princesa al final del cuento se casó el príncipe?')


INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(56,1, 'María y Alejandra'),
	(56,0, 'Fernanda y Aria'),
	(56,0, 'Aria y maría'),
	(56,0, 'Alejandra y Fernanda'),

	(57,0, 'A un reino muy lejano'),
	(57,0, 'A un castillo custodiado por un dragón'),
	(57,1, 'A una pequeña isla custodiadas por un monstruo'),
	(57,0, 'Ninguna de las anteriores'),

	(58,1, 'Por ser una joven muy lista y valiente'),
	(58,0, 'Se canso de estarla custodiando'),
	(58,0, 'Se enamoro de la princesa'),
	(58,0, 'Ninguna de las anteriores'),

	(59,0, 'El lago era su único hogar'),
	(59,0, 'No le gustaba salir del lago'),
	(59,1, 'Estaba atado a una gran cadena de la isla'),
	(59,0, 'Ninguna de las anteriores '),

	(60,0, 'En un príncipe alto y fuerte'),
	(60,1, 'En un príncipe Joven risueño y delgaducho'),
	(60,0, 'En un príncipe simpático y valiente'),
	(60,0, 'Ninguna de las anteriores '),

	(61,1, 'Con la princesa mayor'),
	(61,0, 'Con la princesa menor'),
	(61,0, 'No se casó el príncipe con ninguna')
	





--///////////////////////////////////////////////////////////////////////////////

--Suspenso
--11/05/2020

--////////////////////////////////////////////////////////////////////////////////

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(2, 1, 'El dragon de Wawel')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(11,'Según cuenta una leyenda polaca, hace muchos siglos, en las tierras gobernadas por el príncipe Krakus, empezaron a suceder hechos muy extraños que nadie lograba comprender. \n
		Dice la historia que en sus dominios había una colina conocida como la colina de Wawel. Un día, sin saber por qué, comenzaron a faltar personas que vivían en los pueblos colindantes, gente que de repente un día se esfumaba y de la que nunca jamás se volvía a saber nada. Por si esto fuera poco, los pastores empezaron a notar también que, cada vez que hacían recuento de ovejas, en sus rebaños siempre faltaba alguna.'),
	(11,'Los habitantes de la zona estaban desconcertados ¿Cómo era posible que personas y animales desaparecieran como si se los hubiese tragado la tierra? Algo iba mal, pero nadie tenía ni idea de cómo solucionar el misterio. \n
		Un día, un muchacho que paseaba por la colina, descubrió una enorme cueva tapada por unos matorrales. Asomó la cabeza y se quedó paralizado de miedo: allí dentro dormía un dragón verde de piel brillante y tamaño descomunal. Tenía un aspecto que daba pavor y cada vez que roncaba, las paredes de la cueva vibraban como si fueran de papel.'),
	(11,'Temblando como un flan salió pitando de allí y bajó al pueblo más cercano para avisar a todo el mundo. Después, fue al castillo para comunicárselo también al príncipe Krakus, quien consciente de la terrible amenaza  que suponía el reptil alado, mandó a los soldados más valerosos de su ejército a luchar contra él. \n
		Un grupo enorme, armado hasta los dientes,  tomó rumbo a la colina con una única misión: ¡abatir al temible enemigo!  Pero el dragón, que ya estaba despierto, vio que el ejército se acercaba  e intuyó que iban a por él. \n
		Muy airado, salió de su guarida, cogió aire y los expulsó de allí lanzando bocanadas de fuego por su enorme boca. Los soldados salieron volando como muñecos de trapo, envueltos en una especie de huracán caliente.'),
	(11,'Evidentemente, la operación resultó un fracaso. El dragón era demasiado fiero, demasiado fuerte y demasiado peligroso como para acercarse. \n
		El príncipe Krakus, como último recurso, promulgó un bando real: quien consiguiera vencer al monstruo, se casaría con lo que él más quería: su dulce hija Wanda. \n
		Una noticia de tal magnitud no tardó en extenderse como la pólvora y llegó a oídos de un joven y guapo zapatero. El muchacho, que era muy humilde pero inteligente como el que más, decidió intentarlo y elaboró un plan infalible.'),
	(11,'¿Quieres saber qué hizo?… Consiguió la piel de un borrego, la rellenó con azufre y alquitrán, y por la noche, cuando el dragón dormía, la colocó en la entrada de la caverna. En cuanto se despertó de su profundo sueño, el animal vio la falsa oveja, se relamió y la devoró con ansia. \n
		La comió tan rápido y con tantas ganas, que al terminar sintió mucha sed y bajó al río Vístula a beber. El agua penetró a borbotones en su inmenso estómago, y al entrar en contacto con el azufre y el alquitrán que se había zampado sin darse cuenta, la tripa le explotó en mil pedazos.'),
	(11,'El zapatero fue aclamado como un auténtico héroe y recibió todos los honores posibles, aunque el mejor de todos los premios, fue casarse con la hermosa princesa Wanda. Dicen que fueron muy, muy  felices, durante toda la vida. \n
		Hoy en día, en Polonia,  existe una población en torno a la colina donde vivió, hace tantos siglos, el peligroso dragón. Está considerada una de las ciudades más importantes y bellas del país y se llama Cracovia, en honor a uno de los protagonistas de esta historia: el príncipe Krakus. \n
		Si algún día vas a visitarla, podrás comprobar cómo muchos de sus habitantes todavía recuerdan esta preciosa leyenda que sus abuelos les contaron cuando eran niños y que va pasando de generación en generación.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(11,'¿Cómo se llamaba el príncipe?'),
	(11,'¿Quién descubrió al dragon?'),
	(11,'¿Qué recompensa obtendría el que derrotara al dragón?'),
	(11,'¿Cómo se llamaba la hija del príncipe?'),
	(11,'¿De qué país es originario este cuento?'),
	(11,'¿Con que relleno el zapatero a la falsa oveja?')


	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(62,0, 'Wawel'),
	(62,0, 'Galatus'),
	(62,1, 'Krakus'),
	(62,0, 'Albert'),

	(63,1, 'Un muchacho que paseaba por la colina'),
	(63,0, 'El príncipe en una expedición '),
	(63,0, 'El ejército del príncipe'),
	(63,0, 'Los familiares en busca de los desaparecidos'),

	(64,0, 'Un castillo '),
	(64,0, 'Mucho dinero'),
	(64,0, 'La mitad de las tierras'),
	(64,1, 'Casarse con la hija del príncipe'),

	(65,1, 'Wanda'),
	(65,0, 'Scarlett'),
	(65,0, 'Kassia'),
	(65,0, 'Aleksandra'),

	(66,1, 'Polonia'),
	(66,0, 'Finlandia'),
	(66,0, 'Cracovia'),
	(66,0, 'Eslovaquia'),

	(67,0, 'Con explosivos'),
	(67,1, 'Con azufre y alquitrán'),
	(67,0, 'Con piedras'),
	(67,0, 'Con azufre y plomo')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(2, 1, 'El monstruo del lago')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(12,'Érase una vez una preciosa muchacha llamada Untombina, hija del rey de una tribu africana. A unos kilómetros de su hogar había un lago muy famoso en toda la comarca porque en él se escondía un terrible monstruo que, según se contaba, devoraba a todo aquel que merodeaba por allí. \n
		Nadie, ni de día ni de noche, osaba acercarse a muchos metros a la redonda de ese lugar. Untombina, en cambio, valiente y curiosa por naturaleza, estaba deseando conocer el aspecto de ese monstruo que tanto miedo daba a la gente.'),
	(12,'Un año llegó el otoño y con él tantas lluvias, que toda la región se inundó. Muchos hogares se vinieron abajo y los cultivos fueron devorados por las aguas. La joven Untombina pensó que quizá el monstruo tendría una solución a tanta desgracia y pidió permiso a sus padres para ir a hablar con él. Aterrorizados, no sólo se negaron, sino que le prohibieron terminantemente que se alejara de la casa. \n
		Pero no hubo manera; Utombina, además de valiente, era terca y decidida, así que reunió a todas las chicas del pueblo y juntas partieron en busca del monstruo. La hija del rey dirigió la comitiva a paso rápido, y justo cuando el sol estaba más alto en el cielo, el grupo de muchachas llegó al lago.'),
	(12,'En apariencia todo estaba muy tranquilo y el lugar les parecía encantador. Se respiraba aire puro y el agua transparente dejaba ver el fondo de piedras y arena blanca. La caminata había sido dura y el calor intenso, así que nada les apetecía más que darse un buen chapuzón. Entre risas, se quitaron la ropa, las sandalias y las joyas, y se tiraron de cabeza.  Durante un buen rato, nadaron, bucearon y jugaron a salpicarse unas a otras. Tan entretenidas estaban que no se dieron cuenta de que el monstruo, sigilosamente, se había acercado a la orilla por otro lado y les había robado todas sus pertenencias.'),
	(12,'Cuando la primera de las muchachas salió del agua para vestirse, no encontró su ropa y avisó a todas las demás de lo que había sucedido.  Asustadísimas comenzaron a gritar y a preguntarse qué podían hacer ¡No podían volver desnudas al pueblo! \n
		Se acercaron al lago y, en fila, comenzaron a llamar al monstruo. Entre llantos, le rogaron que les devolviera la ropa. Todas menos Utombina, que como hija del rey, se negaba a humillarse y a suplicar nada de nada.'),
	(12,'El monstruo escuchó las peticiones y, asomando la cabeza, comenzó a escupir prendas, anillos y pulseras, que las chicas recogieron rápidamente. Devolvió todo lo que había robado excepto las cosas de la orgullosa Utombina. Las chicas querían volver, pero ella seguía negándose a implorar y se quedó inmóvil, en la orilla, mirando al lago. Su actitud consiguió enfadar al monstruo que, en un arrebato de ira, salió inesperadamente del lago y de un bocado se la tragó. \n
		Todas las jovencitas volvieron a chillar presas del pánico y corrieron al pueblo para contar al rey lo que había sucedido. Destrozado por la pena, decidió actuar: reclutó a su ejército y lo envió al lago para acabar con el horrible ser que se había comido a su niña.'),
	(12,'Cuando los soldados llegaron armados hasta los dientes, el monstruo se dio cuenta de sus intenciones y se enfureció todavía más. A manotazos, empezó a atrapar hombres de dos en dos y a comérselos sin darles tiempo a huir. Uno delgaducho y muy hábil se zafó de sus garras, pero el monstruo le persiguió sin descanso hasta que, casualmente, llegó a la casa del rey. Para entonces, de tanto comer, su cuerpo se había transformado en una bola descomunal que parecía a punto de explotar.'),
	(12,'El monarca, muy hábil con el manejo de las armas, sospechó que su hija y los soldados todavía podrían estar vivos dentro de la enorme barriga, y sin dudarlo ni un segundo, comenzó a disparar flechas a su ombligo. Le hizo tantos agujeros que parecía un colador. Por el más grande, fueron saliendo uno a uno todos los hombres que habían sido engullidos por la fiera. La última en aparecer ante sus ojos,  sana y salva, fue su preciosa hija. \n
		El malvado monstruo dejó de respirar y todos agradecieron a Utombina su valentía. Gracias a su orgullo y tozudez, habían conseguido acabar con él para siempre.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(12,'¿Cómo se llamaba la hija del rey?'),
	(12,'¿Con quien fue la hija del rey al lago?'),
	(12,'¿Que les hizo el monstruo del lago a la hija del rey y sus acompañantes?'),
	(12,'¿A quién devoro primero el monstruo del lago?'),
	(12,'¿Quién derroto monstruo del lago?'),
	(12,'¿Cómo derrotaron al monstruo del lago?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(68,1, 'Utombina'),
	(68,0, 'Ashanti '),
	(68,0, 'Tiana'),
	(68,0, 'Nyah'),

	(69,1, 'Con sus hermanas'),
	(69,0, 'Con su novio'),
	(69,0, 'Con todas las chicas del pueblo'),
	(69,0, 'Con todos los chicos del pueblo'),

	(70,0, 'No las dejo entrar al lago'),
	(70,1, 'Les robo todas sus pertenencias'),
	(70,0, 'Las persiguió por todo el lago'),
	(70,0, 'Las devoró una por una'),

	(71,0, 'Al novio de la hija del rey'),
	(71,1, 'A la hija del rey'),
	(71,0, 'Al rey'),
	(71,0, 'A una chica del pueblo'),

	(72,0, 'Un miembro del ejercito'),
	(72,0, 'El novio de la hija del rey'),
	(72,1, 'El rey'),
	(72,0, 'El hijo del rey'),

	(73,0, 'Lo quemaron'),
	(73,0, 'Le dispararon flechas en la cabeza'),
	(73,1, 'Le dispararon flechas en el estomago'),
	(73,0, 'Lo atraparon')


	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(2, 1, 'El vampiro tom')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(13,'Era la noche de Halloween y Margaret y su hijo Dani habían invitado a un viejo amigo a acompañarles y, tal vez, ver algunas pelis de miedo antes de dormir, pero el timbre parecía sonar demasiado temprano… \n
		∙	¡Hola Mark! Aún no está lista la cena, pero podéis pasar- Dijo Margaret a su amigo e invitado. \n
		Se trataba de Mark, el amigo de la familia que había sido invitado a la cena, pero que misteriosamente había llegado acompañado de una persona que no conocían. \n
		∙	Margaret, disculpa que haya traído a alguien sin avisar, pero no he tenido tiempo. Os presento a mi amigo Tom.'),
	(13,'En ese instante el hijo de Margaret, Dani, que bajaba las escaleras para unirse a la cena, gritó: \n
		∙	¡Ohh! ¡El aspecto es increíble! ¿Quién es? ¡Parece un vampiro real! \n
		∙	¿Te gustan los vampiros? –Preguntó Tom a Dani. \n
		∙	¡Me encantan! –Respondió Dani emocionado- ¿Quieres subir a ver mi colección de fotos y juegos de vampiros? \n
		Tom se giró para ver la reacción de Margaret y de Mark y, ante sus sonrisas, subió sin dudarlo más tiempo.'),
	(13,'Tom subió al piso superior, donde se encontraba la habitación de Dani, y entró en su cuarto. Dani se encontraba muy emocionado con la sorpresa de Mark, ya que no tenía muchos amigos y además le apasionaban los vampiros y todas las cosas de misterio. Necesitaba hablarle a alguien de todas sus aficiones y aquel muchacho, Tom, parecía ser la persona ideal. \n
		∙	¿Con que te gusta mi aspecto, eh? -Dijo Tom- Quizá yo pueda ayudarte a vestir como yo si quieres. \n
		∙	¿En serio? –Respondió Dani sorprendido- ¡Sería fantástico! \n
		∙	Si te gustan tanto los vampiros, yo puedo ayudarte, porque a mí también me encantan. Pero hazme un favor, quita esa cruz que está en aquella pared…'),
	(13,'Dani, emocionado con su nuevo amigo y con la idea de poder al fin compartir aficiones, fue corriendo a quitarla sin preguntarse nada más. Y tras ello se pusieron manos a la obra y fueron buscando las mejores cosas con las que dar con un disfraz de vampiro para Dani. \n
		Ambos tardaron un buen rato en dar con lo que más se adecuaba a la ocasión, y finalmente bajaron a cenar. Dani bajó vestido de negro, con unas botas altas y una capa improvisada hecha con su sábana de dormir. ¡Ah! Y por supuesto unos colmillos que tenía guardados de anteriores disfraces. \n
		∙	Ahora sí me veo como un vampiro, ¡me veo como tú! ¿También tienes colmillos? \n
		∙	¡Sí, claro! ¡Todos los vampiros tenemos! '),
	(13,'Dani no podía creer que aquel chico tuviera los mismos gustos y el mismo sentido del humor que él. Durante la cena, Dani preparó unas copas y echó zumo de granada que había preparado su madre para dar más ambiente a la cena de Halloween, y así, riendo y brindando pasaron la noche los dos nuevos amigos. Entonces, de nuevo en la habitación, Tom propuso algo importante: \n
		∙	¿Quieres hacer lo que los vampiros hacemos? \n
		∙	¿Y qué es? –Respondió Dani. \n
		∙	Pues convertirnos en murciélagos. \n
		∙	¿En serio? –Respondió Dani maravillado. \n
		∙	¡Claro! –dijo Tom. '),
	(13,'Y tras aquellas palabras el cuerpo de Tom se transformó y se convirtió en un murciélago para volver a su forma humana casi de manera inmediata, tanto, que casi parecía imposible de ver bien. \n
		∙	¿Has visto? ¿Estás preparado tú? –Dijo Tom a Dani. \n
		∙	¡Sí! \n
		En ese instante ambos se transformaron en murciélagos y dieron muchas vueltas a través de la habitación. Después Tom propuso a Dani volar fuera de casa a través de los árboles y el cielo estrellado e iluminado. Y tras volar durante muchísimo rato regresaron a la habitación de Dani. \n
		∙	Yo tengo que irme ya –dijo Tom. \n
		∙	Pero, ¿por qué no vuelves a tu forma normal? – Preguntó Dani extrañado. \n
		∙	Porque así es más fácil volar e ir a otros lugares –dijo Tom-, pero ahora sabes cómo ser un verdadero vampiro cuando te apetezca. \n'),
	(13,'Al cabo de un rato Dani escuchó la puerta y, al asomarse por la ventana, pudo ver como se despedían de su madre Mark y su amigo, alejándose tras ello poco a poco a paso tranquilo. Ya no era un murciélago…pero, ¿se trataba de un verdadero vampiro? La emoción no dejaba a Dani pensar con claridad y solo tenía clara una cosa… \n
		∙	¡Mamá! ¡Tenemos que invitarles a casa más! ¡Ha sido una noche increíble!')
	
INSERT INTO Question(IdContent,Text)
	VALUES
	(13,'¿Cómo se llama la mamá de Dani?'),
	(13,'¿Cómo se llama el amigo de la mamá de Dani?'),
	(13,'¿De que tenia una colección Dani en su cuarto?'),
	(13,'¿A que ayudo Tom a Dani en su cuarto?'),
	(13,'¿En que se transformaron Tom y Dani?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(74,1, 'Margaret'),
	(74,0, 'Juliet'),
	(74,0, 'Danielle'),
	(74,0, 'Brissia'),

	(75,0, 'Tom'),
	(75,0, 'Danielle'),
	(75,1, 'Mark'),
	(75,0, 'Elias'),

	(76,0, 'De monstruos'),
	(76,0, 'De autos'),
	(76,1, 'De vampiros'),
	(76,0, 'De superheroes'),

	(77,0, 'A limpiarlo'),
	(77,0, 'A completar su colección'),
	(77,1, 'A vestirse de vampiro'),
	(77,0, 'A encontrar un vampiro'),

	(78,1, 'En murciélagos'),
	(78,0, 'En hombres lobo'),
	(78,0, 'En fantasmas'),
	(78,0, 'En monstruos')

	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(2, 1, 'Hansel y Gretel')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(14,'En una cabaña cerca del bosque vivía un leñador con sus dos hijos, que se llamaban Hansel y Gretel. El hombre se había casado por segunda vez con una mujer que no quería a los niños. Siempre se quejaba de que comían demasiado y que, por su culpa, el dinero no les llegaba para nada. \n
		– Ya no nos quedan monedas para comprar ni leche ni carne – dijo un día la madrastra – A este paso, moriremos todos de hambre. \n
		– Mujer… Los niños están creciendo y lo poco que tenemos es para comprar comida para ellos – contestó compungido el padre.'),
	(14,'– ¡No! ¡Hay otra solución! Tus hijos son lo bastante espabilados como para buscarse la vida ellos solos, así que mañana iremos al bosque y les abandonaremos allí. Seguro que con su ingenio conseguirán sobrevivir sin problemas y encontrarán un nuevo lugar para vivir – ordenó la madrastra envuelta en ira. \n
		– ¿Cómo voy a abandonar a mis hijos a su suerte? ¡Son sólo unos niños! \n
		– ¡No hay más que hablar! – siguió gritando – Nosotros viviremos más desahogados y ellos, que son jóvenes, encontrarán la manera de salir adelante por sí mismos.'),
	(14,'El buen hombre, a pesar de la angustia que sentía en el pecho, aceptó pensando que quizá su mujer tuviera razón y que dejarles libres sería lo mejor. \n
		Mientras el matrimonio hablaba sobre este tema, Hansel estaba en la habitación contigua escuchándolo todo. Horrorizado, se lo contó al oído a su hermana Gretel. La pobre niña comenzó a llorar amargamente. \n
		– ¿Qué haremos, hermano, tú y yo solitos en el bosque? Moriremos de hambre y frío. \n
		– No te preocupes, Gretel, confía en mí ¡Ya se me ocurrirá algo! – dijo Hansel con ternura, dándole un beso en la mejilla.'),
	(14,'Al día siguiente, antes del amanecer, la madrastra les despertó dando voces. \n
		– ¡Levantaos! ¡Es hora de ir a trabajar, holgazanes! \n
		Asustados y sin decir nada, los niños se vistieron y se dispusieron a acompañar a sus padres al bosque para recoger leña. La madrastra les esperaba en la puerta con un panecillo para cada uno. \n
		– Aquí tenéis un mendrugo de pan. No os lo comáis ahora, reservadlo para la hora del almuerzo, que queda mucho día por delante. \n
		Los cuatro iniciaron un largo recorrido por el sendero que se adentraba en el bosque. Era un día de otoño desapacible y frío. Miles de hojas secas de color tostado crujían bajo sus pies. \n
		A Hansel le atemorizaba que su madrastra cumpliera sus amenazas. Por si eso sucedía, fue  dejando miguitas de pan a su paso para señalar el camino de vuelta a casa.'),
	(14,'Al llegar a su destino, ayudaron en la dura tarea de recoger troncos y ramas. Tanto trabajaron que el sueño les venció y se quedaron dormidos al calor de una fogata. Cuando se despertaron, sus padres ya no estaban. \n
		– ¡Hansel, Hansel! – sollozó Gretel – ¡Se han ido y nos han dejado solos! ¿Cómo vamos a salir de aquí? El bosque está oscuro y es muy peligroso. \n
		– Tranquila hermanita, he dejado un rastro de migas de pan para poder regresar – dijo Hansel confiado. \n
		Pero por más que buscó las miguitas de pan, no encontró ni una ¡Los pájaros se las habían comido!'),
	(14,'Desesperados, comenzaron a vagar entre los árboles durante horas. Tiritaban de frío y tenían tanta hambre que casi no les quedaban fuerzas para seguir avanzando. Cuando ya lo daban todo por perdido, en un claro del bosque vieron una hermosa casita de chocolate. El tejado estaba decorado con caramelos de colores y las puertas y ventanas eran de bizcocho. Tenía un jardín pequeño cubierto de flores de azúcar y de la fuente brotaba sirope de fresa. \n
		Maravillados, los chiquillos se acercaron y comenzaron a comer todo lo que se les puso por delante ¡Qué rico estaba todo! \n
		Al rato, salió de la casa una mujer vieja y arrugada que les recibió con amabilidad. \n
		– ¡Veo que os habéis perdido y estáis muertos de hambre, pequeños! ¡Pasad, no os quedéis ahí! En mi casa encontraréis cobijo y todos los dulces que queráis.'),
	(14,'Los niños, felices y confiados, entraron  en la casa sin sospechar que se trataba de una malvada bruja que había construido una casa de chocolate y caramelos para atraer a los niños y después comérselos. Una vez dentro, cerró la puerta con llave, cogió a Hansel y lo encerró en una celda de la que era imposible salir. Gretel, asustadísima,  comenzó a llorar. \n
		– ¡Tú, niñata, deja de lloriquear! A partir de ahora serás mi criada y te encargarás de cocinar para tu hermano. Quiero que engorde mucho y dentro de unas semanas me lo comeré. Como no obedezcas, tú correrás la misma suerte. \n
		La pobre niña tuvo que hacer lo que la bruja cruel le obligaba. Cada día, con el corazón en un puño, le llevaba ricos manjares a su hermano Hansel. La bruja, por las noches, se acercaba a la celda a ver al niño para comprobar si había ganado peso.'),
	(14,'– Saca la mano por la reja – le decía para ver si su brazo estaba más gordito. \n
		El avispado Hansel  sacaba un hueso de pollo en vez de su brazo a través de los barrotes.  La bruja, que era corta de vista y con la oscuridad no distinguía nada, tocaba el hueso y se quejaba de que seguía siendo un niño flaco y sin carnes.  Durante semanas consiguió engañarla, pero un día la vieja se hartó. \n
		– ¡Tu hermano no engorda y ya me he cansado de esperar! – le dijo a Gretel – Prepara el horno, que hoy me lo voy a comer. \n
		La niña, muerta de miedo, le dijo que no sabía cómo se encendían las brasas. La bruja se acercó al horno con una enorme antorcha. '),
	(14,'– ¡Serás inútil! – se quejó la malvada mujer mientras se agachaba frente al horno – ¡Tendré que hacerlo yo! \n
		La vieja metió la antorcha dentro del horno y cuando comenzó a crepitar el fuego, Gretel se armó de valor y de una patada la empujó dentro y cerró la puerta. Los gritos de espanto no conmovieron a la chiquilla; cogió las llaves de la celda y liberó a su hermano. \n
		Fuera de peligro, los dos recorrieron la casa y encontraron un cajón donde había valiosas joyas y piedras preciosas. Se llenaron los bolsillos y huyeron de allí. Se adentraron en el bosque de nuevo y la suerte quiso que encontraran fácilmente el camino que llevaba a su casa, guiándose por el brillante sol que lucía esa mañana. \n'),
	(14,'A lo lejos distinguieron a su padre sentado en el jardín, con la mirada perdida por la tristeza de no tener a sus hijos. Cuando les vio aparecer, fue corriendo a abrazarles.  Les contó que cada día sin ellos se había sido un infierno y que su madrastra ya no vivía allí. Estaba muy arrepentido. Hansel y Gretel supieron perdonarle y le dieron las valiosas joyas que habían encontrado en la casita de chocolate. \n
		¡Jamás volvieron a ser pobres y los tres vivieron muy felices y unidos para siempre!')


INSERT INTO Question(IdContent,Text)
	VALUES
	(14,'¿Qué relación tienen Hansel y Gretel?'),
	(14,'¿Por qué abandonaron a Hansel y Gretel en el bosque?'),
	(14,'¿Qué encontraron Hansel y Gretel en el bosque?'),
	(14,'¿Quién vivía en la casa que encontraron Hansel y Gretel en el bosque?'),
	(14,'¿Qué planeaba hacer la bruja con Hansel y Gretel?'),
	(14,'¿Cómo derrotaron a la bruja?')


INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(79,1, 'Son hermanos'),
	(79,0, 'Son amigos'),
	(79,0, 'Son primos'),
	(79,0, 'Son madre e hijo'),

	(80,0, 'Su mamá ya no los quería'),
	(80,1, 'Su papá ya no los quería'),
	(80,0, 'No tenían dinero para alimentarlos'),
	(80,0, 'Se perdieron'),

	(81,0, 'Un castillo de chocolate'),
	(81,0, 'Una casita de dulce'),
	(81,1, 'Una casita de chocolate'),
	(81,0, 'Un castillo gigante'),

	(82,0, 'Su mamá'),
	(82,0, 'Una princesa'),
	(82,1, 'Una bruja'),
	(82,0, 'Muchos niños'),

	(83,0, 'Tenerlos de sirvientes'),
	(83,0, 'Ponerlos a trabajar por ella'),
	(83,1, 'Comérselos'),
	(83,0, 'Ayudarlos a encontrar el camino a casa'),

	(84,1, 'La encerraron en el horno'),
	(84,0, 'La encerraron en el sótano '),
	(84,0, 'La encerraron en una jaula'),
	(84,0, 'La envenenaron')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(2, 1, 'La casa del terror')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(15,'Pablo era un niño muy miedoso que por la noche no podía dormir totalmente a oscuras, y cuando salía a la calle temía que las personas extrañas le hablaran. No es que fuese un cobarde, lo que sucedía era que tenía mucho cuidado y se preocupaba demasiado por todo, sobre todo porque sus papás le recordaban continuamente que el mundo estaba lleno de muchas cosas misteriosas. Así que el pequeño Pablo se imaginaba cada vez que escuchaba aquello un montón de duendes verdes, hadas mágicas y hasta señores con bastones largos y arrugados caminando por ahí, “¡por eso siempre hay que ir atento a las cosas que pasan a nuestro alrededor!”, se decía.'),
	(15,'Sin embargo, y a pesar de ser un niño tan precavido, hubo un día muy especial en el que Pablo sí que fue el niño más valiente del mundo. Todo ocurrió en las vacaciones de verano, cuando papá y mamá llevaron a Pablo y a sus amigos al parque de atracciones, donde subieron a toda clase de sitios emocionantes. Pero al caer el día y llegar la noche, todos juntos tuvieron una idea que asustó mucho al Pablo: \n
		•	Vamos a la casa del terror –Propuso Antonio, el más valiente de todos los niños. \n
		•	He escuchado que los verdaderos fantasmas viven en esos sitios–Comentó José, un poco asustado. \n
		•	Pues yo he escuchado que aprovechan la oscuridad y se llevan a los niños –dijo Pablo aterrado, – yo no quiero que me lleven, así que mejor vamos a otro sitio. \n
		•	Bah, esas cosas no son de verdad, Pablo –concluyó Antonio–, así que vamos, y lo haremos todos juntos. \n'),
	(15,'A pesar de las insistencias de Pablo, en un par de minutos llegaron todos juntos hasta la entrada de la casa del terror. Mamá y papá esperaban a todos en la salida, por lo que no iba a poder darles siquiera la mano. Pablo sintió entonces que se moría de miedo, pero tras respirar profundamente se dejó llevar y entró en la casa del terror siguiendo al resto de sus amigos, que parecían realmente emocionados por estar allí y por descubrir los misterios que pudiera haber tras aquellas paredes. \n
		Dentro de la casa del terror todo estaba oscuro, y una música escalofriante sonaba bajito acompañando a la neblina, que hacía que todo pareciera mucho más tenebroso. Poco a poco, mientras avanzaban, el resto del grupo (los amigos “valientes” de Pablo) comenzaron a sentir miedo también, por lo que todos se agarraron de las manos y caminaron lentamente mirando de forma constante a su alrededor con mucho temor. Entonces… “¡Muajajaja!”, la risa de una bruja salió de la nada sobresaltando a todos los niños que dieron gritos de terror y comenzaron a correr para poder escapar.'),
	(15,'•	 ¡Voy a comeros a todos! –Dijo a continuación un hombre terrorífico que parecía salir de la nada. \n
		Pablo y sus amigos corrieron sin parar, pero no conseguían encontrar la salida de la casa de terror. Se encontraban perdidos en aquel lugar tenebroso con los padres de Pablo fuera, y eso les hizo sentirse más asustados. Ante aquella desesperación Antonio y José comenzaron a llorar, pero Pablo intentó mantener la calma y quiso ser valiente para enfrentar la situación y tranquilizar a sus amigos. \n
		•	No lloréis, porque no nos pasará nada –dijo Pablo muy seguro, – vamos a salir de aquí, pero tendremos que movernos rápido. Cogeos todos de la mano, que yo os guiaré.'),
	(15,'De inmediato los amigos se cogieron de las manos y siguieron a Pablo. Pasaron entonces por un pasillo muy largo y negro, donde otra bruja salió de la nada riéndose a carcajada limpia, pero Pablo la ignoró y siguió con paso firme. Entonces a lo lejos vieron la luz de la salida y pudieron abandonar al fin la casa del terror. En la puerta se encontraban los padres de Pablo, y todos, muy emocionados al verles, se agarraron a ellos en un fuerte abrazo. \n
		•	¡Habéis sido muy valientes al entrar en la casa del terror! –dijo la mamá de Pablo orgullosa. – Yo ni siquiera me atrevo a entrar porque me da mucho miedo.'),
	(15,'Y tras aquellas palabras los niños se miraron y sonrieron orgullosos. Quizá no había sido para tanto, pues sabían que todo era un espectáculo… ¿O quizá no, y habían conseguido escapar de auténticos fantasmas de verdad? Bueno, el caso es que nunca lo sabrían porque no pensaban volver ni tampoco pensaban decirle a nadie que en realidad sí habían pasado miedo. Era su nuevo gran secreto. Al fin y al cabo ser valiente no se trata de no sentir miedo, sino de sentirlo y aun así lograr enfrentarse a las cosas… ¡O al menos eso decía el papá de Pablo!')
	

INSERT INTO Question(IdContent,Text)
	VALUES
	(15,'¿Cómo se llama el protagonista del cuento?'),
	(15,'¿Como se llaman los amigos de pablo?'),
	(15,'¿A dónde llevaron a pablo y sus amigos en las vacaciones de verano?'),
	(15,'¿Quién lloro en la casa del terror?'),
	(15,'¿Qué se encontraron en la casa del terror?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(85,0, 'Pablo'),
	(85,0, 'Antonio'),
	(85,0, 'Jose'),
	(85,0, 'Dani'),

	(86,0, 'Antonio y Dani'),
	(86,0, 'Antonio y Carlos'),
	(86,0, 'Antonio y José'),
	(86,0, 'Dani y Carlos'),

	(87,0, 'Al bosque'),
	(87,0, 'A la playa'),
	(87,0, 'Al parque de atracciones'),
	(87,0, 'A un campamento de verano'),

	(88,0, 'Pablo'),
	(88,0, 'Antonio y Pablo'),
	(88,0, 'Antonio y José'),
	(88,0, 'Antonio'),

	(89,0, 'Brujas y un hombre terrorífico'),
	(89,0, 'Fantasas y duendes'),
	(89,0, 'Brujas y duendes'),
	(89,0, 'Fantasmas y brujas')



--///////////////////////////////////////////////////////////////////////////////

--Fabula
--11/05/2020

--////////////////////////////////////////////////////////////////////////////////

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(5, 1, 'El cordero envidioso')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(16,'Esta pequeña y sencilla historia cuenta lo que sucedió a un cordero que por envidia traspasó los límites del respeto y ofendió a sus compañeros. ¿Quieres conocerla?  \n
		El corderito en cuestión vivía como un marqués, o mejor dicho como un rey, por la sencilla razón de que era el animal más mimado de la granja. Ni los cerdos, ni los caballos, ni las gallinas, ni el resto de ovejas y carneros mayores que él, disfrutaban de tantos privilegios. Esto se debía a que era tan blanquito, tan suave y tan lindo, que las tres hijas de los granjeros lo trataban como a un animal de compañía al que malcriaban y concedían todos los caprichos.'),
	(16,'Cada mañana, en cuanto salía el sol, las hermanas acudían al establo para peinarlo con un cepillo especial untado en aceite de almendras que mantenía sedosa y brillante su rizada lana. Tras ese reconfortante tratamiento de belleza lo acomodaban sobre un mullido cojín de seda y acariciaban su cabecita hasta que se quedaba profundamente dormido. Si al despertar tenía sed le ofrecían agua del manantial perfumada con unas gotitas de limón, y si sentía frío se daban prisa por taparlo con una amorosa manta de colores tejida por ellas mismas. En cuanto a su comida no era ni de lejos la misma que recibían sus colegas, cebados a base de pienso corriente y moliente. El afortunado cordero tenía su propio plato de porcelana y se alimentaba de las sobras de la familia, por lo que su dieta diaria consistía en exquisitos guisos de carne y postres a base de cremas de chocolate que endulzaban aún más su empalagosa vida.'),
	(16,'Curiosamente, a pesar de tener más derechos que ninguno, este cordero favorecido y sobrealimentado era un animal extremadamente egoísta: en cuanto veía que los granjeros rellenaban de pienso el comedero común, echaba a correr pisoteando a los demás para llegar el primero y engullir la máxima cantidad posible. Obviamente, el resto del rebaño se quedaba estupefacto pensando que no había ser más canalla que él en todo el planeta. \n
		Un día la oveja jefa, la que más mandaba, le dijo en tono muy enfadado: \n
		– ¡Pero qué cara más dura tienes! No entiendo cómo eres capaz de quitarle la comida a tus amigos. ¡Tú, que vives entre algodones y lo tienes todo!… ¡Eres un sinvergüenza! \n
		– Bueno, bueno, te estás pasando un poco… ¡Eso que dices no es justo!'),
	(16,'– ¡¿Qué no es justo?!…Llevas una vida de lujo y te atiborras a diario de manjares exquisitos, dignos de un emperador. ¿Es que no tienes suficiente con todo lo que te dan? ¡Haz el favor de dejar el pienso para nosotros! \n
		El cordero puso cara de circunstancias y, con la insolencia de quien lo tiene todo, respondió demostrando muy poca sensibilidad. \n
		– La verdad es que como hasta reventar y este pienso está malísimo comparado con las delicias que me dan, pero lo siento… ¡no soporto que los demás disfruten de algo que yo no poseo! \n
		La oveja se quedó de piedra pómez. \n
		– ¿Me estás diciendo que te comes nuestra humilde comida por envidia?'),
	(16,'El cordero se encogió de hombros y puso cara de indiferencia. \n
		– Si quieres llamarlo envidia, me parece bien. \n
		Ahora sí, la oveja entró en cólera. \n
		– ¡Muy bien, pues tú te lo has buscado! \n
		Sin decir nada más pegó un silbido que resonó en toda la granja. Segundos después, treinta y tres ovejas y nueve carneros acudieron a su llamada. Entre todos rodearon al desconsiderado cordero. \n
		– ¡Escuchadme atentamente! Como ya sabéis, este cordero repeinado e inflado a pasteles se come todos los días parte de nuestro pienso, pero lo peor de todo es que no lo hace por hambre, no… ¡lo hace por envidia! ¿No es abominable? '),
	(16,'El malestar empezó a palparse entre la audiencia y la oveja continuó con su alegato. \n
		– En un rebaño no se permiten ni la codicia ni el abuso de poder, así que, en mi opinión, ya no hay sitio para él en esta granja. ¡Que levante la pata quien esté de acuerdo con que se largue de aquí para siempre! \n
		No hizo falta hacer recuento: todos sin excepción alzaron sus pezuñas. Ante un resultado tan aplastante, la jefa del clan determinó su expulsión. \n
		– Amigo, esto te lo has ganado tú solito por tu mal comportamiento. ¡Coge tus pertenencias y vete!'),
	(16,'Eran todos contra uno, así que el cordero no se atrevió a rechistar. Se llevó su cojín de seda oriental como único recuerdo de la opulenta vida que dejaba atrás y atravesó la campiña a toda velocidad. Hay que decir que una vez más la fortuna le acompañó, pues antes del anochecer llegó a un enorme rancho que a partir de ese día se convirtió en su nuevo hogar. Eso sí, en ese lugar no encontró niñas que le cepillaran el pelo, le dieran agua con limón o le regalaran las sobras del asado. Allí fue, simplemente, uno más en el establo. \n
		Moraleja: Sentimos envidia cuando nos da rabia que alguien tenga suerte o disfrute de cosas que nosotros no tenemos. Si lo piensas te darás cuenta de que la envidia es un sentimiento negativo que nos produce tristeza e insatisfacción. Alegrarse por todo lo bueno que sucede a la gente que nos rodea no solo hace que nos sintamos felices, sino que pone en valor nuestra generosidad y nobleza de corazón.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(16,'¿Quiénes malcriaban al cordero?'),
	(16,'¿Porque el cordero se come la comida de los demas?'),
	(16,'¿Que hicieron los demás animales con el cordero?')


INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES	
	(90,0, 'Los demás animales'),
	(90,0, 'Las tres hijas de los granjeros'),
	(90,0, 'Los granjeros'),
	(90,1, 'La hija del granjero'),
	
	(91,0, 'Porque tiene mucha hambre'),
	(91,0, 'Por error'),
	(91,0, 'Por que lo obligaban'),
	(91,1, 'Por envidia'),
	
	(92,0, 'Lo golpearon'),
	(92,0, 'Se comieron su comida'),
	(92,1, 'Lo corrieron de la granja'),
	(92,0, 'Lo encerraron')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(5, 1, 'El mono y la naranja')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(17,'Érase una vez un mono que más que mono parecía una mula de lo terco que era. ¡Ah! ¿que no te lo crees?… Pues te invito a que descubras hasta qué punto llegaba su cabezonería y verás que no me falta razón. \n
		Resulta que una mañana, el susodicho mono se empeñó en pelar una naranja al tiempo que se rascaba la cabeza porque le picaba muchísimo. Como tenía las dos manos ocupadas en calmar el insoportable cosquilleo, cogió la naranja con la boca y la dejó caer al suelo. Acto seguido se agachó y tiró de la cáscara con sus potentes dientes.  Al primer contacto le supo terriblemente amarga y tuvo que escupir saliva para deshacerse del mal sabor de boca. \n
		– ¡Puaj, qué asco! Esta cáscara es agria y desagradable… Soy incapaz de morderla porque produce escozor en la lengua y… ¡y me entran ganas de vomitar! \n
		Después de cavilar unos segundos tuvo otra idea que le pareció sensacional; consistía poner un pie sobre la fruta para sujetarla, e ir despegando pequeños trozos de la corteza con una de las manos.'),
	(17,'– ¡Je, je, je! ¡Creo que por fin he dado en el clavo! \n
		Sin dejar de rascarse con la izquierda, liberó la derecha y se puso a ello con muchas ganas. El plan no estaba mal, pero a los pocos segundos tuvo que abandonarlo porque la postura era terriblemente incómoda y solo apta para contorsionistas profesionales. \n
		– ¡Ay, así tampoco puedo hacerlo, es imposible! Tendré que probar otra opción si no quiero pasar el resto de mi vida con dolor de riñones. \n
		¡No le quedaba otra que cambiar de estrategia! Se sentó en el suelo, cogió la naranja con la mano derecha, la colocó entre sus rodillas, y continuó retirando la monda mientras seguía rasca que te rasca con la izquierda. Desgraciadamente esta decisión también fracasó: ¡la naranja se le escurrió entre las patas y empezó a rodar por la hierba como una pelota! El desastre fue total porque la parte visible de la pulpa se llenó de tierra y restos de hojas secas.'),
	(17,'– ¡Grrr!… Hoy es mi día de mala suerte, pero no pienso darme por vencido. ¡Voy a comerme esta naranja sí o sí! \n
		¡Ni por esas dejó el mono de rascarse! Emperrado en hacer las dos cosas al mismo tiempo   agarró la naranja con una mano y la introdujo en el río para quitarle la suciedad. Una vez lavada puso sus enormes labios de simio sobre el trozo comestible e intentó succionar el jugo de su interior. De nuevo, las cosas se torcieron: la naranja estaba tan dura que por mucho que apretó con los cinco dedos no pudo exprimirla bien. \n
		– ¡¿Pero qué es esto?!… Solo caen unas gotitas… ¡Estoy hasta las narices!'),
	(17,'A esas alturas estaba tan harto que lanzó la naranja muy lejos y se dejó caer de espaldas sobre la hierba, completamente deprimido.  Mirando al cielo y sin dejar de rascarse, pensó: \n
		– ‘No puede ser que yo,  uno de los animales más desarrollados e inteligentes del planeta, no consiga pelar una simple naranja’. \n
		Cuando ya lo daba todo por perdido, un rayo de luz pasó por su mente. \n
		– ¡Claro, ya lo tengo! ¿Y si dejara de rascarme durante un rato para poder pelar la naranja con las dos manos?… Tendría que aguantar el picor durante un par de minutos, pero haciendo un pequeño esfuerzo  supongo que podría soportarlo. ¡¿Cómo no se me ha ocurrido antes una solución tan lógica y elemental?!'),
	(17,'Razonar con sensatez le dio buen resultado. Fue corriendo a por la naranja, la cogió con la mano derecha, volvió a remojarla en el río para dejarla reluciente, y con la izquierda retiró los trozos de piel con absoluta facilidad. \n
		– ¡Yupi! ¡Lo he conseguido! ¡Lo he conseguido! \n
		En un periquete tenía todos los gajos a la vista; desprendió el primero  y lo saboreó con placer. \n
		– ¡Oh, qué delicia, es lo más rico que he probado en mi vida!… La verdad es que el asunto no era complicado… ¡El complicado era yo!'),
	(17,'El mono degustó el apetitoso manjar procurando disfrutar del momento. Cuando terminó se limpió las manos y subió a la rama de su árbol favorito ¿sabes para qué?…  Pues para continuar rascándose a gusto con sus diez grandes dedos de primate. \n
		Moraleja: Si en alguna ocasión tienes que hacer dos tareas lo mejor es que pongas toda la atención en una, la termines correctamente, y luego realices la otra. De esta forma evitarás perder el tiempo de manera absurda y te asegurarás de que ambas salgan bien.')
	

INSERT INTO Question(IdContent,Text)
	VALUES
	(17,'¿Qué intentaba comerse el mono?'),
	(17,'¿Qué hacía el mono al mismo tiempo que intentaba pelar la naranja?'),
	(17,'¿Qué solución encontró el mono para poder pelar la naranja?')



INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(93,0, 'Un plátano'),
	(93,0, 'Una manzana'),
	(93,1, 'Una naranja'),
	(93,0, 'Un mango'),

	(94,1, 'Rascarse'),
	(94,0, 'Bailar'),
	(94,0, 'Colgarse de los arboles'),
	(94,0, 'Saltar'),

	(95,0, 'Pedir ayuda'),
	(95,0, 'Tomar otra naranja'),
	(95,0, 'Vender la naranja'),
	(95,1, 'Dejar de rascarse')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(5, 1, 'El zorro y el espino')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(18,'Érase una vez un zorro pelirrojo que vivía en el bosque. El animal era joven y gozaba de muy buena salud, así que se pasaba las horas corriendo por la hierba, husmeando entre las zarzamoras, escarbando dentro de las toperas, y descubriendo misteriosos escondrijos. ¡Nunca permanecía quieto más de un segundo! \n
		A lo largo del día jugaba mucho, pero por la noche… ¡por la noche su actividad era todavía más desenfrenada! Y es que mientras la mayoría de los animales roncaban plácidamente dentro de sus madrigueras, el incansable zorrito aprovechaba para encaramarse a los árboles y saltar de rama en rama como si fuera un equilibrista de circo. Tanto practicó que llegó a ser capaz de subirse a un pino y lanzarse a otro situado a varios metros de distancia con la precisión de un mono. Increíble, ¿verdad?'),
	(18,'Durante meses disfrutó de lo lindo haciendo estas locas piruetas nocturnas, pero llegó un momento en que se aburrió y decidió intentar una proeza realmente arriesgada: escalar una altísima montaña por la parte más rocosa. Se trataba de un reto peligroso para alguien de su especie, pero lejos de acobardarse sacó pecho y se lanzó a la aventura. \n
		Una noche, justo cuando la luna nacarada estaba más alta en el firmamento, el valiente y atlético animal comenzó a subir la ladera cubierta de piedras. Logró su objetivo en apenas tres horas, por lo que llegó con tiempo de sobra para ver despuntar el día. Las cabras, hasta ese momento únicos seres capaces de realizar semejante hazaña, se quedaron patitiesas cuando advirtieron que un pequeño zorro naranja alcanzaba la cumbre en tiempo record y sin apenas despeinarse el flequillo. \n
		– ¡Lo he conseguido!… ¡Casi puedo tocar las nubes!… ¡Yujuuuuu!'),
	(18,'Como es lógico, lo primero que hizo al llegar arriba fue celebrarlo dando botes y gritando de alegría. ¡Se sentía tan orgulloso de sí mismo!… Después hizo un esfuerzo por tranquilizarse, y cuando consiguió bajar las pulsaciones de su corazón y respirar con cierta normalidad, se sentó a disfrutar de la salida del sol. \n
		– Qué aire tan puro se respira aquí… ¡y qué amanecer tan impresionante! \n
		Con el mundo a sus pies se sintió el rey de la montaña. \n
		– Ya que subir me resultó fácil, a partir de ahora vendré a menudo. ¡Las vistas son increíbles! \n
		Tras una buena dosis de belleza y meditación, resolvió que había llegado la hora de regresar a su hogar. \n
		– ¡Bajar va a ser pan comido!… ¡Vamos allá!'),
	(18,'Pegó un salto para levantarse y fue entonces cuando algo terrible sucedió: por un descuido resbaló y empezó a caer montaña abajo dando más botes que una pelota de goma en el patio de un colegio. \n
		– ¡Socorro, que alguien me ayude! \n 
		Rodó y rodó durante un par de minutos que le resultaron interminables, al tiempo que gritaba: \n
		– ¡Ay, ay, me voy a estrellar!… ¡Socorro!… ¡Auxilio! \n
		Cuando estaba a punto de llegar al final y darse el tortazo del siglo, pasó junto a un arbolito cubierto de flores blancas. ¡Era su única oportunidad de salvación! Demostrando buenos reflejos estiró las patas delanteras y se agarró a él desesperadamente. En ese mismo instante, sintió un dolor muy intenso en los dedos. \n'),
	(18,'– ¡Ay, ay, ay, ay! ¡¿Pero qué demonios…?! ¡Ay! \n
		¡Qué mala suerte! El arbusto en cuestión era un espino que, como todos los espinos, tenía las ramas cubiertas de afiladísimas púas que se clavaron sin piedad en las patas del zorro. \n
		– ¡Oh, no, esto es horrible, creo que me voy a desmayar!… ¡Maldita planta! \n
		Al escuchar estas palabras, el espino se mostró muy ofendido. \n
		– Perdona que te lo diga, amigo, pero no sé de qué te quejas. Te sujetaste a mí porque te dio la gana. ¡Que yo sepa nadie te obligó! \n
		Con los ojos bañados en lágrimas, el zorro se lamentó:'),
	(18,'– ¡¿Cómo no me voy a quejar?! Solicité tu ayuda porque estaba a punto de matarme ¿y de esta forma me tratas?…  ¡Eres un ser verdaderamente cruel! Mira, me has herido a traición y ahora tengo las patas bañadas en sangre y… ¡llenas de agujeros! \n
		El orgulloso espino, con gesto enfadado, le replicó: \n
		– ¡Por supuesto que te he pinchado!… ¿Sabes por qué? ¡Pues porque soy un espino! Hago daño a todo el que se me acerca y, desde luego, tú no eres una excepción. \n
		El maltrecho zorro puso cara de no entender muy bien la situación, así que la planta volvió a dejar muy clara su manera de ser, su manera de vivir la vida, su manera de sentir.'),
	(18,'– Creo que estoy siendo muy sincero contigo: yo soy como ves y no voy a cambiar, así que lo mejor que puedes hacer es alejarte de mí para siempre. ¡Ah!, y un consejito te voy a dar: la próxima vez que necesites que alguien te eche una mano, recuerda elegir mejor al amigo que te pueda ayudar. \n
		El zorro se quedó en silencio y se puso a reflexionar sobre las palabras que acababa de escuchar. Finalmente, y a pesar de la frustración, la pena y el dolor que estaba sintiendo, fue capaz de comprender lo que el espino le quería decir. \n
		Y tú… ¿lo has entendido también?'),
	(18,'Moraleja: A lo largo de la vida conocemos a infinidad de personas. La mayoría suelen ser amigables, honestas, sensibles… En definitiva, seres humanos que se esfuerzan por hacer del mundo un lugar mejor. Pero también es cierto que a veces nos topamos con otras que solo piensan en sí mismas, hacen daño sin pensar en las consecuencias, y son incapaces de abrir su corazón para ponerse en el lugar del otro. \n
		Tú tienes capacidad para elegir a la mayoría de tus amigos, para decidir quién es la gente de confianza con la que quieres compartir los momentos más importantes de tu existencia, así que procura rodearte de personas bondadosas que te respeten y te quieran de verdad. Aprenderás buenos valores, serás mucho más feliz, y si alguna vez necesitas consejo o tienes un problema importante, estarán a tu lado para ayudarte y demostrarte su amor sincero.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(18,'¿Qué hacía el zorro en las noches?'),
	(18,'¿Qué decidió hacer el zorro despues de aburrirse de saltar?'),
	(18,'¿Qué pasó con el zorro al querer bajar?'),
	(18,'¿De donde intentó sujetarse el zorro al caer?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	
	(96,0, 'Se comía la comida de los demás'),
	(96,1, 'Saltaba de rama en rama'),
	(96,0, 'Salía en busca de comida'),
	(96,0, 'Molestaba a los demás animales'),

	(97,1, 'Escalar una montaña'),
	(97,0, 'Irse a otro sitio'),
	(97,0, 'Molestar a los demás animales'),
	(97,0, 'Dormir'),

	(98,0, 'Se perdio'),
	(98,0, 'No encontró el camino'),
	(98,0, 'Lo atraparon'),
	(98,1, 'Se cayó'),

	(99,0, 'De un árbol'),
	(99,0, 'De una roca'),
	(99,1, 'De un espino'),
	(99,0, 'De una cuerda')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(5, 1, 'La niña y el acróbata')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(19,'Hace muchos años vivía en la India una niña huérfana de padre y madre. Era una chiquilla preciosa, de carita redonda y ojos almendrados del color de la miel. Sus dientes parecían copos de nieve y tenía el cabello ondulado y negro como el azabache. Además de bonita, era bondadosa y muy sensata para sus cinco años de edad. \n
		Desde que tenía uso de razón vivía en un orfanato y se pasaba el día soñando con encontrar una familia. Pensaba que nunca llegaría ese momento, pero un día, pasó por su pueblo un acróbata y decidió adoptarla. \n
		¡Qué contenta se puso! Metió lo poco que tenía en una maletita de piel y se fue con su nuevo padre a vivir una vida muy diferente lejos de allí. El buen hombre la acogió con cariño y la trató como a una verdadera hija.'),
	(19,'Desde el día que sus vidas se cruzaron, fueron de aquí para allá recorriendo el país porque se ganaban la vida representando un fantástico número de circo. Siempre juntos y de la mano, caminaban varios kilómetros diarios. Cuando llegaban a una ciudad, se situaban en el centro de la plaza principal y hacían lo siguiente: el hombre colocaba un palo mirando al cielo sobre su nuca, soltaba las manos, y la pequeña trepaba y trepaba hasta la punta  del palo. Una vez arriba, saludaba al público haciendo una suave reverencia con la cabeza. \n
		A su alrededor siempre se arremolinaban un montón de personas que se quedaban pasmadas ante aquel acróbata, quieto como una estatua de cera, que sostenía a una niña en lo alto de una vara sin perder el equilibrio ¡Más de uno se tapaba los ojos  y giraba la cabeza de la impresión que le causaba!'),
	(19,'Sí, el espectáculo era genial ¡pero también muy arriesgado! : un solo fallo y la niña podría caerse sin remedio  desde tres metros sobre el suelo. Al terminar, todos los presentes aplaudían entusiasmados y respiraban tranquilos al ver que pisaba tierra firme, sana y salva. \n
		Casi nadie se iba sin dejar unas monedas en el cestillo. En cuanto se quedaban a solas, contaban las ganancias, compraban comida y, después de una siesta, recogían los petates y tomaban el camino a la siguiente población. \n
		A pesar de que ya tenían mucha práctica y se sabían el número al dedillo,  el acróbata siempre  se sentía intranquilo por si uno de los dos cometía un error y la actuación acababa en tragedia. Un día, le dijo a la niña:'),
	(19,'– He pensado que para evitar un accidente, lo mejor es que cuando hagamos el número, tú estés pendiente de mí y yo de ti ¿Qué te parece? ¡Me da miedo que te caigas del palo y te hagas daño! Si tú vigilas lo que yo hago y yo te vigilo a ti, será mucho mejor. \n
		La niña reflexionó sobre estas palabras y mirándole con ternura, le respondió: \n
		– No, padre, eso no es así. Yo me ocuparé de mí misma y tú de ti mismo, pues la única forma de evitar una catástrofe, es que cada uno esté pendiente de lo suyo. Tú procura hacer bien tu trabajo, que yo haré bien el mío. \n
		El acróbata sonrió y le dio un beso en la mejilla ¡Se sintió muy afortunado por tener una hija tan prudente y capaz de asumir sus responsabilidades!'),
	(19,'Y así fue cómo, durante muchos años, continuaron alegrando la vida a la gente con sus acrobacias. Como era de esperar, jamás ocurrió ningún percance. \n
		Moraleja: En la vida es genial contar con los demás, pero antes de nada, tenemos que aprender a cuidarnos a nosotros mismos y a ser responsables con nuestras tareas. Si te esfuerzas cada día por mejorar, por vencer tus propios miedos y por hacer bien las cosas, llegarás lejos y te sentirás  orgulloso de tus logros.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(19,'¿En donde se desarrolla la historia?'),
	(19,'¿De que color eran los ojos de la niña?'),
	(19,'¿Cuántos años tiene la niña?'),
	(19,'¿En que trabajaba el hombre que adopto a la niña?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(100,1, 'La india'),
	(100,0, 'México'),
	(100,0, 'Estados Unidos'),
	(100,0, 'España'),

	(101,0, 'Azul'),
	(101,0, 'Verda'),
	(101,1, 'Miel '),
	(101,0, 'Cafés'),

	(102,0, '10'),
	(102,0, '7'),
	(102,1, '5'),
	(102,0, '12'),

	(103,0, 'Doctor'),
	(103,0, 'Mago'),
	(103,1, 'Acróbata'),
	(103,0, 'Bombero')


	INSERT INTO Content(IdTypeContent, Status, Title) VALUES(5, 1, 'Los tres ciegos y el elefante')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(20,'Había una vez tres ancianos que se conocían desde la infancia y disfrutaban pasando buenos ratos juntos. Tenían en común que eran hombres cultos e inteligentes, pero también que los tres eran ciegos de nacimiento.  Afortunadamente, a pesar de no poder ver, en su día a día se desenvolvían muy bien, pues todavía estaban en buena forma física, sus mentes funcionaban a pleno rendimiento, podían oler, tocar, escuchar, saborear… \n
		Un precioso día de verano se reunieron en su lugar favorito junto al río, se sentaron sobre la hierba, y empezaron a conversar sobre temas científicos. En medio del interesantísimo coloquio se sobresaltaron al escuchar el sonido de varias pisadas. \n
		El anciano que tenía la barba blanca se giró, y algo inquieto preguntó en voz alta: \n
		– ¡¿Quién anda ahí?!'),
	(20,'Por suerte no era ni un espía ni un asaltante de caminos, sino un viajero que llevaba a su lado un enorme elefante con una correa al cuello, como si de un perrillo se tratara. \n
		– Me llamo Kiran, caballeros. Perdonen si les he asustado. Mi elefante y yo venimos a beber  agua fresca y ya nos vamos, que para nada queremos interrumpir su agradable charla. \n
		Los tres pusieron una cara bastante rara, mezcla de sorpresa y emoción. El segundo anciano, que tenía barba negra, quiso asegurarse de lo que Kiran había dicho. \n
		– ¿He oído bien?… Ha dicho usted… ¿elefante?… ¿Un elefante de verdad? \n
		El desconocido reparó en los bastones tirados en la hierba y se fijó en la mirada perdida de los tres viejecitos. Fue cuando se dio cuenta de que eran invidentes. \n
		– Sí señor, voy con mi elefante. Es un animal muy grande, pero no se preocupen, no les hará ningún daño.'),
	(20,'El tercer anciano se atusó la barba pelirroja y le confesó: \n
		– Hemos oído hablar de la existencia de esos animales, pero a este pueblo nunca ha venido ninguno y no sabemos cómo son. ¿Podríamos tocar el suyo para hacernos una idea del aspecto que tienen? \n
		Kiran se mostró encantado. \n
		– ¡Claro, faltaría más! Es un ser muy pacífico y bonachón. ¡Vengan a acariciarlo, no tengan miedo! \n
		Los tres amigos se levantaron, dieron unos pasos  y extendieron la mano derecha. El anciano de barba blanca se topó con una de las patas delanteras y durante un rato la palpó de arriba abajo. \n
		– ¡Ahora ya sé cómo es un elefante! Es como la columna de un templo, o mejor dicho, es como un el tronco de un árbol: cilíndrico, grande y muy rugoso. '),
	(20,'Mientras, la mano del anciano de barba negra había ido a parar a una de las gigantescas orejas. El animal sintió unas cosquillitas y la sacudió ligeramente hacia delante y hacia atrás. \n
		– ¡Qué dices, querido amigo, un elefante nada tiene que ver con una columna! Mi conclusión es que parece un enorme abanico por dos razones muy obvias: primero, por su forma plana, y segundo, porque al  moverse produce un airecillo de lo más agradable. ¿Es que vosotros no lo notáis? \n
		En ese momento, el anciano de barba pelirroja rozó con la punta de los dedos algo blando que colgaba de algún lugar mucho más alto que él. Era la trompa del cuadrúpedo, pero claro, él no lo sabía. \n
		– ¡Pero qué me estáis contando! Por lo que puedo comprobar un elefante es como una cuerda. Claramente, se trata de un espécimen alargado, flexible y blandito, como una anguila o una serpiente. Sin duda una forma extraña para un mamífero, pero en fin…  ¡Por todos es sabido que la naturaleza es sorprendente!'),
	(20,'El dueño del elefante observaba la escena en silencio y no pudo evitar pensar: \n
		– ‘¡Qué situación tan curiosa!… Los tres ancianos han acariciado al mismo elefante, pero al hacerlo en partes diferentes de su cuerpo, cada uno de ellos se ha hecho una idea totalmente distinta de cómo es en realidad. Para el anciano de barba blanca, un elefante es como una columna,  para el anciano de barba negra, tiene forma de abanico, y  para el anciano de barba pelirroja, es igual a una serpiente. Ciertamente, todos tienen parte de razón, pero ninguno la verdad completa.’ \n
		Tras esta reflexión  decidió que antes de que le preguntaran a él, lo mejor era irse cuanto antes. \n
		– Señores, me están esperando en el pueblo y temo que se me haga tarde. Espero que les haya resultado interesante la experiencia de tocar un elefante. Que pasen  ustedes un buen día. ¡Adiós!'),
	(20,'Acompañado de su voluminosa ‘mascota’ Kiran se alejó dejando a los tres amigos inmersos en una ardiente discusión sobre quién tenía la razón. Una conversación que, por cierto, duró horas y no sirvió de nada: los ancianos fueron incapaces de ponerse de acuerdo sobre la verdadera  forma que tienen los elefantes. \n
		Moraleja: Las personas opinamos en función de nuestra experiencia personal y por eso siempre creemos que tenemos la razón. Si analizas esta fábula verás que los demás, pensando distinto a nosotros y viendo las cosas desde otro punto de vista, también pueden tenerla. Nunca menosprecies otras creencias, otras formas de ver la vida, pues a menudo, la verdad absoluta no existe y todo depende del color del cristal con que se mire.')



INSERT INTO Question(IdContent,Text)
	VALUES
	(20,'¿Sobre que conversaban los ancianos en el río?'),
	(20,'¿Que tienen en común los ancianos?'),
	(20,'¿Como se llamaba el viajero que se encontraron los ancianos?'),
	(20,'¿Que traía el viajero consigo?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(104,0, 'Sobre temas científicos'),
	(104,0, 'Sobre su infancia'),
	(104,0, 'Sobre sus nietos'),
	(104,1, 'Sobre temas científicos'),

	(105,0, 'Tienen la misma edad'),
	(105,0, 'Se llaman igual'),
	(105,0, 'Son hermanos'),
	(105,1, 'Eran ciegos'),

	(106,1, 'Kiran'),
	(106,0, 'Marco'),
	(106,0, 'Kenan'),
	(106,0, 'Kristof'),

	(107,0, 'Un tigre'),
	(107,0, 'Un león'),
	(107,1, 'Un elefante'),
	(107,0, 'Un camello')

	



--///////////////////////////////////////////////////////////////////////////////

--Aventura
--11/05/2020

--////////////////////////////////////////////////////////////////////////////////
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'Caperucita roja')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(21,'Había una vez una niña muy bonita. Su madre le había hecho una capa roja y la muchachita la llevaba tan a menudo que todo el mundo la llamaba Caperucita Roja. \n
		Un día, su madre le pidió que llevase unos pasteles a su abuela que vivía al otro lado del bosque, recomendándole que no se entretuviese por el camino, pues cruzar el bosque era muy peligroso, ya que siempre andaba acechando por allí el lobo. \n
		Caperucita Roja recogió la cesta con los pasteles y se puso en camino. La niña tenía que atravesar el bosque para llegar a casa de la Abuelita, pero no le daba miedo porque allí siempre se encontraba con muchos amigos: los pájaros, las ardillas... \n
		De repente vio al lobo, que era enorme, delante de ella.'),
	(21,'- ¿A dónde vas, niña? - le preguntó el lobo con su voz ronca. \n
		- A casa de mi Abuelita - le dijo Caperucita. \n
		- No está lejos - pensó el lobo para sí, dándose media vuelta. \n
		Caperucita puso su cesta en la hierba y se entretuvo cogiendo flores: - El lobo se ha ido -pensó-, no tengo nada que temer. La abuela se pondrá muy contenta cuando le lleve un hermoso ramo de flores además de los pasteles. \n
		Mientras tanto, el lobo se fue a casa de la Abuelita, llamó suavemente a la puerta y la anciana le abrió pensando que era Caperucita. Un cazador que pasaba por allí había observado la llegada del lobo. \n
		El lobo devoró a la Abuelita y se puso el gorro rosa de la desdichada, se metió en la cama y cerró los ojos. No tuvo que esperar mucho, pues Caperucita Roja llegó enseguida, toda contenta. La niña se acercó a la cama y vio que su abuela estaba muy cambiada. '),
	(21,'- Abuelita, abuelita, ¡qué ojos más grandes tienes! \n
		- Son para verte mejor - dijo el lobo tratando de imitar la voz de la abuela. \n
		- Abuelita, abuelita, ¡qué orejas más grandes tienes! \n
		- Son para oírte mejor - siguió diciendo el lobo. \n
		- Abuelita, abuelita, ¡qué dientes más grandes tienes! \n
		- Son para...¡comerte mejoooor! - y diciendo esto, el lobo malvado se abalanzó sobre la niñita y la devoró, lo mismo que había hecho con la abuelita. \n
		Mientras tanto, el cazador se había quedado preocupado y creyendo adivinar las malas intenciones del lobo, decidió echar un vistazo a ver si todo iba bien en la casa de la Abuelita. Pidió ayuda a un serrador y los dos juntos llegaron al lugar. Vieron la puerta de la casa abierta y al lobo tumbado en la cama, dormido de tan harto que estaba.'),
	(21,'El cazador sacó su cuchillo y rajó el vientre del lobo. La Abuelita y Caperucita estaban allí, ¡vivas!. \n
		Para castigar al lobo malo, el cazador le llenó el vientre de piedras y luego lo volvió a cerrar. Cuando el lobo despertó de su pesado sueño, sintió muchísima sed y se dirigió a un estanque próximo para beber. Como las piedras pesaban mucho, cayó en el estanque de cabeza y se ahogó. \n
		En cuanto a Caperucita y su abuela, no sufrieron más que un gran susto, pero Caperucita Roja había aprendido la lección. Prometió a su Abuelita no hablar con ningún desconocido que se encontrara en el camino. De ahora en adelante, seguiría las juiciosas recomendaciones de su Abuelita y de su Mamá.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(21,'¿De qué color era la capa de caperucita?'),
	(21,'¿Qué es lo que caperucita le llevaba a su abuela?'),
	(21,'¿Con qué animal caperucita se encontró en su viaje a la casa de su abuelita?'),
	(21,'¿Quien salvó a caperucita y a su abuela del lobo feroz?'),
	(21,'¿Qué lección de este cuento?'),
	(21,'¿Que personaje del cuento dice la siguiente frase "Abuelita, abuelita, ¡qué orejas más grandes tienes!"?'),
	(21,'¿Que personaje del cuento dice la siguiente frase Son para...¡comerte mejoooor! ?')
	

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(108,0, 'Azul'),
	(108,1, 'Roja'),
	(108,0, 'Amarilla'),
	(108,0, 'Verde'),

	(109,1, 'Pasteles'),
	(109,0, 'Galletas'),
	(109,0, 'Pan'),
	(109,0, 'Frutas'),

	(110,1, 'Un lobo feroz'),
	(110,0, 'Una ardilla'),
	(110,0, 'Un tigre'),
	(110,0, 'Un oso'),

	(111,0, 'El abuelito de caperucita'),
	(111,0, 'La mamá de caperucita'),
	(111,0, 'Un leñador'),
	(111,1, 'Un cazador y un serrador'),

	(112,0, 'No confiar en extraños'),
	(112,0, 'Ser responsable'),
	(112,1, 'No hablar con extraños'),
	(112,0, 'Comer sanamente'),

	(113,0, 'La mamá de caperucita'),
	(113,1, 'Caperucita'),
	(113,0, 'El lobo feroz'),
	(113,0, 'El cazador'),

	(114,0, 'La mamá de caperucita'),
	(114,0, 'Caperucita'),
	(114,1, 'El lobo feroz'),
	(114,0, 'El cazador')


	INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'El hada y la sombra')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(22,'Hace mucho, mucho tiempo, antes de que los hombres y sus ciudades llenaran la tierra, antes incluso de que muchas cosas tuvieran un nombre, existía un lugar misterioso custodiado por el hada del lago. Justa y generosa, todos sus vasallos siempre estaban dispuestos a servirle. Y cuando unos malvados seres amenazaron el lago y sus bosques, muchos se unieron al hada cuando les pidió que la acompañaran en un peligroso viaje a través de ríos, pantanos y desiertos en busca de la Piedra de Cristal, la única salvación posible para todos. \n
		El hada advirtió de los peligros y dificultades, de lo difícil que sería aguantar todo el viaje, pero ninguno se asustó. Todos prometieron acompañarla hasta donde hiciera falta, y aquel mismo día, el hada y sus 50 más leales vasallos comenzaron el viaje. El camino fue aún más terrible y duro que lo había anunciado el hada. '),
	(22,'Se enfrentaron a bestias terribles, caminaron día y noche y vagaron perdidos por el desierto sufriendo el hambre y la sed. Ante tantas adversidades muchos se desanimaron y terminaron por abandonar el viaje a medio camino, hasta que sólo quedó uno, llamado Sombra. No era el más valiente, ni el mejor luchador, ni siquiera el más listo o divertido, pero continuó junto al hada hasta el final. Cuando ésta le preguntaba que por qué no abandonaba como los demás, Sombra respondía siempre lo mismo "Os dije que os acompañaría a pesar de las dificultades, y éso es lo que hago. No voy a dar media vuelta sólo porque haya sido verdad que iba a ser duro". \n
		Gracias a su leal Sombra pudo el hada por fin encontrar la Piedra de Cristal, pero el monstruoso Guardián de la piedra no estaba dispuesto a entregársela. Entonces Sombra, en un último gesto de lealtad, se ofreció a cambio de la piedra quedándose al servicio del Guardián por el resto de sus días...'),
	(22,'La poderosa magia de la Piedra de Cristal permitió al hada regresar al lago y expulsar a los seres malvados, pero cada noche lloraba la ausencia de su fiel Sombra, pues de aquel firme y generoso compromiso surgió un amor más fuerte que ningún otro. Y en su recuerdo, queriendo mostrar a todos el valor de la lealtad y el compromiso, regaló a cada ser de la tierra su propia sombra durante el día; pero al llegar la noche, todas las sombras acuden el lago, donde consuelan y acompañan a su triste hada.')
	



INSERT INTO Question(IdContent,Text)
	VALUES
	(22,'¿Qué era lo que buscaban el Hada y sus vasallos?'),
	(22,'¿Cuál es el nombre del único vasallo que no abandonó en el largo camino a la Hada?'),
	(22,'¿Cómo logró obtener la piedra de cristal el hada?'),
	(22,'¿Qué valores demostró sombra a la hada?')


INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(115,1, 'Una Piedra de cristal'),
	(115,0, 'Un pozo de los deseos'),
	(115,0, 'A un valiente guerrero'),
	(115,0, 'Una lámpara mágica'),

	(116,0, 'Espejo'),
	(116,0, 'Cobarde'),
	(116,1, 'Sombra'),
	(116,0, 'Nazario'),

	(117,1, 'Sombra en su último gesto de lealtad se ofreció a cambio de la piedra'),
	(117,0, 'Le pidieron la piedra de cristal al guardián de cuidaba la piedra'),
	(117,0, 'Derrotaron al guardián de dicha piedra'),
	(117,0, 'Ninguna de las anteriores'),

	(118,0, 'Responsabilidad y liderazgo'),
	(118,0, 'Compromiso y valor'),
	(118,0, 'Justicia y equidad'),
	(118,1, 'Lealtad y compromiso')

	
	
	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'El pirata barba alegre')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(23,'Barba Alegre era un capitán pirata muy apreciado por toda su tripulación. Todos los piratas que estaban bajo su mando sabían que era justo y trabajador. \n
		Un día, Barba Alegre anunció algo importante a todos los piratas: \n
		-En pocos días llegaremos a Isla Platina, llamada así por todos los tesoros que allí se esconden. \n
		Todos los piratas vitorearon a su capitán. \n
		-Pero solo tenemos una semana para cargar los tesoros en el barco. Lo que no esté cargado en siete días se quedará allí. Todo lo que cojamos será repartido a partes iguales, como siempre. \n
		Los piratas estaban muy contentos. Muchos ya pensaban en retirarse de la vida pirata gracias a ese gran botín.'),
	(23,'Pero cuando llegaron a Isla Platina muchos piratas estaban enfermos. Habían comido algo en mal estado y no tenían fuerzas a para cargar. \n
		-Tranquilos, los demás trabajaremos mientras os recuperáis -dijo el capitán Barba Alegre-. Pero no os preocupéis. Os llevaréis vuestra parte, igual que los demás. \n
		Todos los demás piratas decidieron trabajar más duro para poder sacar más tesoros mientras sus compañeros estaban enfermos. \n
		Pero después de seis días sin trabajar, los piratas enfermos no mejoraban. Con la mosca detrás de la oreja, el pirata Barba Alegre se escondió para que los enfermos no advirtieran su presencia. Entonces, les oyó decir:'),
	(23,'-Estos pánfilos están haciendo todo el trabajo mientras nosotros descansamos. Esto sí que es un buen negocio. \n
		En ese momento, el capitán Barba Alegre salió de su escondite y le dijo: \n
		-¡Ah, qué malos compañeros sois! Pues vais a tener vuestro merecido. Solo os llevaréis lo que seáis capaces de sacar por vosotros mismos durante el último día, pues no permitiré que abuséis del trabajo de los demás. Y con eso os dejaré en el primer puerto que encuentre. \n
		Los piratas intentaron hablar. \n
		-Capitán… \n
		-¡Silencio! -dijo este-. Dad gracias de que no os deje aquí, a vuestra suerte. \n
		Y así fue como los piratas abusones se llevaron su merecido y como los demás, que habían trabajo muy duro, se llevaron mucha más recompensa de la que esperaban.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(23,'¿En el cuento quién era barba alegre?'),
	(23,'¿Cuál es el nombre de la isla a donde barba alegre encontraría escondido los tesoros?'),
	(23,'¿Cuáles son las características que describen a barba alegre?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(119,0, 'Marinero'),
	(119,1, 'Capitán '),
	(119,0, 'Cocinero'),
	(119,0, 'Ninguno de los anteriores '),

	(120,0, 'Isla Alegre'),
	(120,0, 'Isla Esmeralda'),
	(120,1, 'Isla Platina'),
	(120,0, 'Isla Paraiso'),

	(121,1, 'Justo y trabajador'),
	(121,0, 'Malo y arrogante'),
	(121,0, 'Valiente y simpático'),
	(121,0, 'Flojo y enojon')

	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'En busca del peor libro del mundo')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(24,'Huno odiaba los libros y el mundo. Estaba enojado porque alguna vez le obligaron a leer, y buscaba su venganza llena de rabia. Por eso, cuando se enteró de que en una antigua biblioteca se ocultaban los peores libros del mundo, decidió no parar hasta encontrarla. Pensaba hacerse con el peor de todos, para obligar a leerlo a todos sus enemigos, y a todo el mundo. \n
		Viajó por todas partes revisando libros y mapas, visitando antiguas ruinas, siguiendo pistas mágicas y enigmas misteriosos. Escapó de ladrones de tumbas y contrabandistas, encontró pergaminos perdidos, cruzó islas y volcanes hasta que, finalmente, descubrió la antigua y abandonada biblioteca. \n
		Ninguno de los cientos de libros que encontró allí tenía título. Tendría que empezar a leerlos para elegir el peor, y Huno abrió el primero. Era un libro de aventuras. '),
	(24,'Como a Huno le gustaba todo lo que tuviera que ver con viajes y aventuras, leyó varias páginas seguidas. Para cuando se dio cuenta de que aquel no podía ser el peor libro del mundo, estaba tan metido en la historia que ya no pudo dejar de leerlo.  \n
		Al día siguiente Huno tomó otro libro que atrapó su imaginación aún más que el anterior, tal y como ocurrió también un día después. Y así, cada día, tomaba un libro con la esperanza de encontrar el peor libro del mundo, pero terminaba leyendo un apasionante libro de aventuras hasta bien entrada la noche. Pasó varios años leyendo, disfrutando tanto que llegó a olvidar por qué estaba allí, hasta que encontró, casi escondido, un libro distinto.  \n
		Cuando lo abrió, leyó la única frase escrita en la primera hoja: “Este es el peor libro del mundo” ¡Por fin! ¡Lo había encontrado! Impaciente, pasó la página para empezar a leer.'),
	(24,'Pero la página estaba vacía, y también la siguiente, y todas las demás hojas del libro. Al verlas así, abandonadas, esperando tener una historia que contar, Huno sintió una gran pena. En el fondo, tenía tantas ganas de seguir leyendo que comprendió que era verdad que solo un libro sin escribir podía ser el peor libro del mundo.  \n
		Pensó entonces que había llegado su momento y, tomando la pluma, comenzó a escribir todas sus aventuras para llenar aquellas páginas en blanco. Escribió durante días y días, dando lugar a un libro increíble. Pero no le puso título y, cuando terminó, lo colocó entre los demás y fue a comprar un libro vacío. De vuelta en la biblioteca, escribió la primera hoja del libro vacío: “Este es el peor libro del mundo” y lo dejó como él lo había encontrado. Y salió de allí esperando que el próximo visitante de aquella mágica biblioteca tuviera una apasionante historia que contar.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(24,'¿Por que Huno odiaba los libros ?'),
	(24,'¿Cuál era el plan malvado de Huno?'),
	(24,'¿Que contenía el peor libro que encontró Huno en la biblioteca?'),
	(24,'¿Que hizo a Huno con el libro “Este es el el peor libro del mundo”?'),
	(24,'5-¿Qué sucedió al final del cuento?')
	

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(122,1, 'Por que una vez lo obligaron a leer'),
	(122,0, 'No le gustaba leer'),
	(122,0, 'No sabía leer'),
	(122,0, 'Ninguna de las anteriores'),

	(123,0, 'No tenía ningún plan malvado'),
	(123,0, 'Quemar el peor libro del mundo'),
	(123,0, 'Quemar todos los libros del mundo'),
	(123,1, 'Encontrar el peor libro del mundo para obligar a leerlo a todo el mundo'),

	(124,1, 'Estaba vacío no tenía hojas escritas.'),
	(124,0, 'Tenía escrito una aventura mágica'),
	(124,0, 'Estaba escrito en un idioma que Huno no pudo leer'),
	(124,0, 'Ninguna de las anteriores'),

	(125,0, 'Tiró el libro a la basura ya que no contenía nada'),
	(125,1, 'Escribió una historia en paginas vacias'),
	(125,0, 'Se lo llevó a su casa'),
	(125,0, 'No hizo nada'),

	(126,0, 'Huno como un libro vacio y le pone por título “Este es el peor libro del mundo” y lo deja en la bibloteca'),
	(126,0, 'Quema todos lo libros de la biblioteca'),
	(126,0, 'No ase nada solo se retira de la biblioteca'),
	(126,0, 'Se lleva todos los libros de la biblioteca a su casa')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(1, 1, 'La palabra salvaje')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(25,'Érase una vez un reino que sufría el ataque continuo de ogros, brujas y dragones. Solo podían defenderse con la valentía de sus soldados, pues desde la muerte del gran mago, nadie había sido capaz de leer los hechizos del libro mágico. Estos eran muy poderosos, pero tan peligrosos, que un pequeño error en su pronunciación podría ser terrible. Por eso el mago antes de morir protegió el libro con la más difícil de las palabras salvajes, que son aquellas que nunca antes han sido bien leídas. Esperaba así encontrar un digno sucesor, alguien capaz de utilizar la magia sin hacer daño. \n
		Por eso desde pequeños los niños de aquel reino podían elegir entre prepararse para ser soldados o magos. Pero mientras el entrenamiento de los soldados estaba lleno de ejercicio y aventuras desde el primer día, el de los magos obligaba a estudiar y leer durante mucho tiempo antes de enfrentarse al gran libro y su palabra salvaje. Y de los pocos que terminaron su preparación, ninguno consiguió leer y comprender correctamente aquella misteriosa palabra.'),
	(25,'Marko era uno de los niños que debería elegir aquel año. Como la mayoría, solo pensaba en ser soldado. Pero justo el día anterior a su decisión, el reino sufrió un terrible ataque y pudo ver cómo el enemigo derrotaba con facilidad incluso a los soldados más fuertes y valientes. A pesar de que cada vez había más y mejores soldados, nunca habían estado tan cerca de perder la guerra. Hacía falta un gran cambio, y Marco comenzó por él mismo: se prepararía para ser mago. El primero en intentarlo en años. \n
		Tal y como esperaba, el comienzo fue difícil. Aprender letras que no significaban nada. Luego juntarlas sin ver ningún resultado. Después crear las primeras palabras, tan fáciles de decir que las sabría hasta un bebé, pero mucho más difíciles de leer. Hasta que finalmente, cuando comenzaba a desanimarse, empezó a comprender frases y palabras, y pudo leer sus primeros libros, y consiguió el acceso a la gran biblioteca.'),
	(25,'Allí encontró muchos libros que ya no eran cosa de bebés. Hablaban de cosas más bonitas y sorprendentes, de las que nada sabían los niños de su edad que se preparaban para las batallas. Y hablaban también de batallas, de las que Marko leyó tanto que se convirtió en un experto. En aquellos libros aprendía tantas cosas, que no paraba de leerlos uno tras otro. Y Marko, siendo apenas un niño, empezó a darse cuenta de que sus libros le estaban convirtiendo en uno de los mayores sabios del reino. Pronto comprendió que nadie había sustituido al gran mago porque estaban tan ocupados aprendiendo a luchar que apenas dedicaban tiempo para aprender a leer correctamente. Y pensó que había llegado el momento de enfrentarse a la palabra salvaje. \n
		Hacía años que nadie lo intentaba y todos acudieron emocionados a la gran plaza. Marko abrió el libro y por fin vio la palabra: \n
		“Hiktrikostakuntijagoni“.'),
	(25,'Marko reconoció la palabra inmediatamente y sonrió de oreja a oreja ¡Qué fácil! ¡Y qué listo había sido el mago! Aquella palabra no significaba nada por sí misma. Solo era el título de uno de los libros más raros y escondidos que había en la biblioteca, uno que le había encantado a Marko. Un libro lleno de palabras raras que explicaba las mejores técnicas de lucha contra ogros, brujas y dragones, con sus puntos débiles y todo lo necesario para derrotarlos fácilmente. Marko corrió a buscarlo a la biblioteca y descubrió un mensaje oculto en su última página: \n
		“Yo, el Gran Mago, te nombro a ti, seas quien seas, mi sucesor. Y comparto contigo el mayor de mis secretos: nunca fui mago. Todo el poder que tuve vino de lo que aprendí en estos libros, como lo has hecho tú. Este libro solo completa ese poder ayudándote a parecer mágico, pues los brutos soldados no seguirían a un simple sabio, pero sí a un poderoso mago.”'),
	(25,'Marko comprendió entonces para qué servían todas aquellas palabras raras. No eran más que falsos hechizos, un simple truco para conseguir un líder sabio. \n
		Y así fue como Marko, el mago que nunca fue mago, llegó a dirigir a los soldados del reino hacia la victoria, y a vivir mil y una aventuras gracias a la sabiduría que descubrió en los olvidados libros de una biblioteca.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(25,'¿Por Qué el mago protegió el libro mágico con las más difícil de las palabras?'),
	(25,'¿Cuál era la palabra salvaje?'),
	(25,'¿Porque Marko cambio de opinión acerca de ser soldado? '),
	(25,'¿Qué significaba realmente la palabra salvaje?'),
	(25,'¿Cuál es el nombre del niño que se relata en el cuento?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(127,0, 'No quería que nadie lo pudiera leer'),
	(127,0, 'Queria hacer mas interesante el libro'),
	(127,1, 'Esperaba así encontrar a un digno sucesor'),
	(127,0, 'Ninguna de las anteriores'),

	(128,1, 'Hiktrikostakuntijagoni'),
	(128,0, 'Dragarian'),
	(128,0, 'Abra cadrabra'),
	(128,0, 'Ari bbaba'),

	(129,0, 'Porque era muy temeroso'),
	(129,1, 'Porque un día antes vio cómo los atacantes derrotaron con facilidad a los mejores soldados.'),
	(129,0, 'Le gustaba mucho leer'),
	(129,0, 'Ninguna de las anteriores'),

	(130,0, 'Era el hechizo mas poderoso'),
	(130,0, 'Era el nombre de un mago'),
	(130,0, 'No lo dice el cuento'),
	(130,1, 'Nada, era el título de un libro'),

	(131,1, 'Marko'),
	(131,0, 'Jose'),
	(131,0, 'Marcos'),
	(131,0, 'Jorel')


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Catetegoria ciencia ficcion
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(8, 1, 'Ernestus, el robot filosófico')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(26,'Esta historia viene de un país lejano, más allá e la Galaxia Centuria Laudi 489, pasando por el cinturón de Orión, incluso más lejos del mar de asteroides de plata, en la inmensa oscuridad de la garganta del cráter Mobidub74, había una civilización ancestral que habitaba esas tierras desde los orígenes del universo. Su era nombre Modernia.  \n
		Allí había muy buenos artesanos, expertos en la fabricación de magníficas baterías llenas de energía.Todo transcurría sin problemas en Modernia, todos los días los artesanos se levantaban, construían nuevas baterías y todas las noches las colocaban con orgullo en sus tiendas. \n
		Un día, sin embargo, surgió un problema: los habitantes tenían tantas baterías que ni siquiera sabían dónde ponerlas… ¡los almacenes estaban llenos y, lo que es más triste, no había nadie con quien compartir toda esa energía!'),
	(26,'Pensaron y repensaron, finalmente tuvieron una gran idea: ¡construir robots para usar esas baterías! \n
		En poco tiempo, robots de todo tipo y carácter comenzaron a vagar por Modernia: había robots larguiruchos llenos de muelles, pequeños robots regordetes con muchas luces, rebots de varias manos, otros tenían dos cabezas, algunos andaban muy deprisa, otros volaban… Más que nada en el mundo, a los robots les encantaban las baterías eléctricas, sobretodo las que se fabricaban en Modernia. Les daba la fuerza para caminar, hablar y pensar, en resumen, les dieron la energía para vivir. Para los robots, nada era mejor que una batería nueva, porque cuanto más nueva era la batería, más energía podían recibir. Era como la comida para los humanos. \n
		Los artesanos, que respetaban y querían mucho a sus amigos robots, siempre trataron de mejorar la calidad de las baterías que fabricaban, convencidos de que apreciaban esa atención y que de alguna manera los robots algún día se la devolverían.'),
	(26,'Pero, en realidad, los robots sólo estaban allí porque necesitaban las baterías para vivir, les daba igual dónde o cómo conseguirlas…. \n
		Las baterías, almacenadas en los depósitos, estaban disponibles para todos los robots que pudieran recogerlas por sí mismos. Los robots sólo necesitaban una batería para vivir, y si se pasaban de glotones y trataban de conectarse a dos, podían estropearse y fundirse los plomos. Por eso había un gran letrero en la pared del almacén que decía: «¡No te pongas más de una! ¡Podrías hacerte daño!». \n
		Un robot llamado «Notesacias» fue una vez al depósito debido a su incapacidad para conformarse con las baterías que usaba. Había leído esa advertencia muchas veces pero, desde hacía algún tiempo, había empezado a pensar que los artesanos tenían que ser algo tacaños y que, sólo por esta razón, no permitían que los robots llevaran más de una batería. \n
		Ese día había decidido no obedecer más la señal: así que miró a su alrededor y cuando nadie lo vio, cogió dos baterías, las instaló y… ¡PUM! ¡Todos los circuitos se fundieron! \n'),
	(26,'Cuando los otros robots encontraron a su compañero en ese estado, inmediatamente comenzaron a rebelarse: «¡Los artesanos lo hicieron a propósito! ¡Le dieron una batería en mal estado! Sólo un robot, llamado «Ernestus», defendió a los habitantes de la ciudad: «Ellos no son los culpables, el culpable fue el robot Notesacias que se colocó dos baterías y ahora tendrá que ir al mecánico a que le arreglen por completo. \n
		Pero aunque Ernestus tenía razón, la gran mayoría de robots estaba enfadada y no era capaz de entrar en razón. Sus discos duros estaban echando chispas. \n
		Después de este acontecimiento, la vida de los habitantes de la ciudad cambió rápidamente. Los robots se volvieron antipáticos y maleducados y los artesanos sufrían de ese comportamiento injusto. Los robots les decían: «¡Fuera de la ciudad, eres un inútil! ¡No te necesitamos!».'),
	(26,'Sus cerebros de tostadora no entendían que sin el trabajo de los artesanos, ninguno de los robots habría sobrevivido todo este tiempo. No se daban cuenta de que sus baterías eran hechas por las manos de esos hombres bajitos de barbas blanca y esas mujeres de estrafalarios peinados. \n
		Ernestus, que era sin duda el robot más inteligente y bueno de la galaxia, siempre pensaba ayudar a los demás, sin importar si eran humanos o robots. Así que encontró una solución para evitar que los malos humos de los robots hicieran daño a los artesanos. \n 
		Como era un robot filosófico, encontró las palabras perfectas para convencer a las dos partes. \n
		Les propuso a los artesanos irse a otro lugar, para demostrar a los robots que les necesitaban. Para ello, llenaron todas las baterías que había en Modernia en un almacén, y sobre ese almacén pusieron un gran faro de rayos láser. Si en algún momento, los robots querían que los artesanos volvieran a la ciudad, solo bastaría con encender aquella luz.'),
	(26,'Los artesanos entendieron perfectamente el plan de Ernestus, se montaron en sus motos espaciales… \n
		Y se fueron… \n
		Al ver desaparecer en el infinito horizonte del Universo a los artesanos, los robots estallaron de júbilo. Pensaron que tenían razón, ya que ellos habían ganado la discusión, y que por pegar gritos y hacerse las víctimas de los artesanos, estos habían sido vencidos y ahora todo Modernia era suyo, repleto de jugosas baterías, sin reglas estúpidas de cuántas se podían un robot conectar. \n
		Todo parecía salir victorioso para los robots, mientras tanto, Ernestus aguardaba en lo alto de la torre de luz, sobre el almacén de baterías. \n
		Allí pudo ver cómo poco a poco las despensas se iban agotando, y el almacén cada vez estaba más vacío.'),
	(26,'Pasaron los años, en los que Ernestus se dedicó a reparar a los robots que quedaban dañados por tratar de conectarse varias baterías. Mientras tanto, el resto de la población robótica seguía disfrutando de su triunfo sobro los artesanos, creían que todo este tiempo sin necesitarles, afianzaba más todavía, que ellos tenían razón. \n
		Además, pensaban que el incidente que sufrió Notesacias era evidentemente causado por los artesanos, porque… \n
		¿Cómo era posible que ningún otro robot hubiera sufrido otro percance similar? \n
		La respuesta, era sencilla. Ernestus se encargaba de recoger a los robots cuando por avaricia, se fundían los circuitos al conectarse varias baterías. Después los reparaba en lo alto de su torre de luz, les explicaba que había sucedido y ellos entendían que estaban enormemente equivocados.'),
	(26,'Como Ernestus era muy sabio y paciente, les convencía para que se quedaran en la torre con ellos, que no volvieran a salir de ella y que esperaran pacientemente junto a él. \n
		Así fueron pasando los días, los meses, los años. Llegó un momento en que casi había la misma cantidad de robots en Modernia que en la torre de Ernestus. \n
		Y por fín, la última batería se agotó… El almacén había quedado vacío. \n
		Fue entonces cuando cundió el pánico entre los habitantes robóticos de Modernia, que comenzaron a gritar y a corres despavoridos por todo el país «¿Qué hacemos ahora?» «No quedan baterías» \n
		Con ello, lo que consiguieron fue agotar la energía que les quedaba y uno a uno se fueron apagando todos los robots de Modernia, para siempre…\n
		¿Todos?'),
	(26,'No, Ernestus y sus aliados, aguardaban este día escondidos en su torre de luz. \n
		Uno a uno, fueron conectándose a los enchufes de la torre, para así poder cargar la batería central del foco. Pasadas unas horas, el rayo láser atravesaba la galaxia en busca de los Artesanos nómadas que habían estado vagando con sus motos por todo el Universo desde entonces. \n
		Cuando vieron a lo lejos el destello de luz, no tuvieron que mediar palabra entre ellos. Todos comprendieron que el plan de Ernestus había funcionado a la perfección y volvieron corriendo a Modernia. \n
		Al llegar, el panorama era desolador, cientos y cientos de robots sin batería, tirados por la calle.'),
	(26,'Poco a poco, los robots que se habían quedado con Ernestus, los artesanos y el propio Ernestus, recargaron las baterías de todos los habitantes de Modernia… Que entonces comprendieron lo que Ernestus les quería decir hacía tiempo atrás. \n
		Todos entendieron que los artesanos eran inocentes, y que demás eran los que les permitían seguir viviendo en Modernia. Los robots juraron lealtad y amistad a los artesanos de por vida y desde entonces, reina la paz y la armonía en aquel remoto país, que desde ese día, cambió su nombre por el de «Ernestus» en honor al sabio robot filosófico que les cambió la vida.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(26,'¿Como se llamaba el país donde habitaba la civilización astral? '),
	(26,'¿Cual era el nombre del robot filósofo de modernia? '),
	(26,'¿Que era lo que creaban los artesanos de modernia?'),
	(26,'¿Porque decidieron crear robots? '),
	(26,'¿Qué pasaba si algún robot utilizaba 2 baterías? ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(132,1, 'Modernia'),
	(132,0, 'Modzael'),
	(132,0, 'Ernestux'),
	(132,0, 'Modernex'),

	(133,0, 'Ernesto'),
	(133,0, 'Modernux'),
	(133,1, 'Ernestus'),
	(133,0, 'Modernio'),

	(134,1, 'Baterias '),
	(134,0, 'Figuras'),
	(134,0, 'Esculturas'),
	(134,0, 'Armas'),

	(135,0, 'Porque necesitaban que les ayudaran a conseguir materiales para construir más cosas'),
	(135,0, 'Porque necesitaban que les ayudaran a construir más baterías'),
	(135,1, 'Porque se excedieron con las baterías y ya ni sabían qué hacer con ellas. '),
	(135,0, 'Porque los iban a usar para una batalla que se aproximaba'),

	(136,0, 'El robot se volvía más inteligente'),
	(136,1, 'Se funden sus circuitos'),
	(136,0, 'Se vuelven incontrolables'),
	(136,0, 'Les da más tiempo de vida')

	

	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(8, 1, 'Los inmortales')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(27,'Durante el año 2152 se encontraban las personas festejando el fin de año con mucha alegría porque comenzaría un nuevo año lleno de sorpresas, pero el mundo ya les tenía una de antemano y antes de que terminaran los festejos se encendieron todas las televisiones al mismo tiempo para enterarse de la última noticia que verían en la tierra. \n
		Todos los asteroides que se encuentran alrededor de Marte y Saturno se habían desviado de su recorrido y vendría directamente hacia estrellarse con la tierra. \n
		Cayó uno en Brasil, otro en Japón, en Chile, Estados Unidos y en todas partes del mundo entero haciendo que la tierra explote. '),
	(27,'Las personas que en ese entonces se encontraban con vida no murieron tras la explosión porque directamente lo que sucedió fue que quedaron con vida en otro sistema solar, su nombre era Galaxy y tenía 4 planetas que lo conformaban, pero el que cayeron contaba de poco alimento y agua ya que le pertenecía a una raza de extraterrestres. \n
		Una batalla se libró entre los hombres que llegaron a su planeta y quienes allí habitaban hace tiempo, la ganaron los humanos la guerra y tuvieron que irse a un planeta vecino los extraterrestres. Las personas con el tiempo volvieron a armar sus civilizaciones y a tener mejores tecnologías que las anteriores, también otros materiales para poder utilizar en las mismas. Estas personas que hicieron el viaje hacia un nuevo lugar ahora eran totalmente inmortales y eso es lo que habían ganado por resistir la explosión de la tierra.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(27,'¿En que año se desarrolla la historia? '),
	(27,'¿En que planetas estaban los asteroides que se desviaron? '),
	(27,'¿Qué iba a pasar con los asteroides que se desviaron? '),
	(27,'¿Qué paso con los habitantes de la tierra cuando exploto? '),
	(27,'¿Cuántos planetas tiene galaxy? ')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(137,0, '2020'),
	(137,0, '2252'),
	(137,1, '2152'),
	(137,0, '3152'),

	(138,0, 'Marte y Jupiter'),
	(138,1, 'Marte y Saturno'),
	(138,0, 'Jupiter y Saturno'),
	(138,0, 'Saturno y Neptuno'),

	(139,0, 'Iban a chocar entre ellos '),
	(139,0, 'Iban a chocar con un satélite '),
	(139,1, 'Iban a estrellarse con la tierra'),
	(139,0, 'Iban a estrellarse con una nave espacial '),

	(140,1, 'Se trasladaron a otro sistema solar'),
	(140,0, 'Murieron'),
	(140,0, 'Salieron de la tierra en una nave espacial'),
	(140,0, 'No les sucedió nada'),

	(141,0, '7'),
	(141,0, '5'),
	(141,1, '4'),
	(141,0, '2')



	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(8, 1, 'Los tres cosmonautas')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(28,'Había una vez una Tierra. Y al mismo tiempo, un planeta llamado Marte. Estaban muy lejos el uno del otro, en medio del cielo, y a su alrededor había millones de planetas y galaxias. \n
		La gente de la Tierra quería ir a Marte y a los otros planetas: ¡pero estaban tan lejos! \n
		Sin embargo, no cesaron en su empeño. Primero lanzaron satélites que dieron la vuelta a la Tierra durante dos años y luego volvieron. Luego lanzaron cohetes que dieron la vuelta a la Tierra unas cuantas veces, pero en lugar de regresar, terminaron escapando de la atracción de la gravedad y se dirigieron al espacio. Después de varios años merodeando por el espacio, volvían a la Tierra… Pero había un problema. \n
		Al mando de estos cohetes iban perros \n'),
	(28,'Pero los perros no podían hablar, y en la radio de la estación espacial solo se podía oír «guau guau» así que nadie entendía lo que habían visto y lo lejos que habían llegado. \n
		Por fin encontraron hombres valientes que querían ser cosmonautas. Los cosmonautas tenían este nombre porque iban a explorar el cosmos, que es el espacio infinito con los planetas, las galaxias y todo lo que les rodea. \n
		Los cosmonautas se fueron y no sabían si volverían o no. Querían conquistar las estrellas para que un día todos pudieran viajar de un planeta a otro, porque la Tierra se había vuelto demasiado estrecha y la población mundial crecían cada día. \n
		En una hermosa mañana, tres cohetes de tres puntos diferentes dejaron la Tierra.'),
	(28,'El primero fue un americano, que silbó alegremente una pegadiza canción country mientras se alejaba. \n
		En el segundo había un ruso que cantaba con voz grave una comparsa tradicional. \n
		En el tercero, un chino, que cantó una hermosa canción ancestral. \n
		Cada uno quería ser el primero en llegar a Marte, para demostrar que era el más valiente. \n
		Como los tres eran valientes, llegaron a Marte casi al mismo tiempo. Bajaron de sus naves con casco y traje espacial… Y descubrieron un paisaje maravilloso y perturbador: el terreno estaba surcado por largos canales llenos de agua verde esmeralda. Había extraños árboles azules con pájaros nunca antes vistos, con plumas de colores muy extraños. Allí en el horizonte había montañas rojas que emitían extraños destellos.'),
	(28,'Los cosmonautas miraban el paisaje, se miraban unos a otros, y se mantenían separados, cada uno desconfiando de los demás. Entonces llegó la noche. \n
		Había un extraño silencio alrededor, y la tierra brillaba en el cielo como si fuera una estrella lejana. Los cosmonautas se sintieron tristes y perdidos en la oscuridad. \n
		Pero inmediatamente entendieron que estaban sintiendo lo mismo. Sonreían por primera vez desde que habían pisado el extraño planeta. \n
		Al rato encendían juntos un hermoso fuego y cada uno cantaba canciones de su país. \n
		Finalmente, llegó la mañana \n
		Y hacía mucho frío…'),
	(28,'De repente, un marciano salió de entre un grupo de árboles. ¡Su aspecto era terrible! Era de un color verde viscoso, hacía daño a los ojos de lo que brillaba, tenía dos antenas en el lugar de las orejas, un tronco y seis brazos. Los miró y dijo: ¡Grrr! \n
		En su lengua quería decir: \n
		«Hola seres extraños ¿os habéis perdido?» \n
		Pero los terrícolas no le entendieron y pensaron que era un rugido de guerra. Era tan diferente de ellos que no podían entenderlo. Los tres sintieron inmediatamente miedo por si les atacaba… \n
		Ante ese monstruo, sus pequeñas diferencias desaparecieron. ¿Qué importaba si hablaban otro idioma? Comprendieron que eran los tres seres humanos. El otro no. Era demasiado diferente, y los terrícolas pensaban que aquello que no entienden era malo. Por eso decidieron reducirlo a polvo atómico con sus rayos espaciales…'),
	(28,'Cuando los tres cosmonautas se habían armado de valor y estaban apuntando al monstruoso alien… Algo extraño sucedió. \n
		De entra las sombras, apareció un hermoso pájaro de muchos y brillantes colores, volaba con dificultad porque parecía tener algo viscoso enredado entre sus alas. Se movía haciendo gestos de dolor y su cara reflejaba el agotamiento de tratar de luchar contra aquella situación. Cuando revoloteaba sobre las cabezas de los cosmonautas, el pájaro cayó agotado contra el suelo, haciendo un estrepitoso ruido. Justo quedo entre medias del marciano y los cosmonautas. \n
		Rápidamente, el alienígena se movió con pasos torpes hacia el animal, los tres cosmonautas, asustados, agarraron fuerte sus rayos láser, pensando que el alien iba a devorar aquel pobre pajarillo.'),
	(28,'Para cuando se dieron cuenta, el alienígena estaba emitiendo unos extraños ruidos gruturales, que con tan solo observar detenidamente, los tres cosmonautas entendieron que se trataba de un llanto. \n
		Y los terrícolas de repente se dieron cuenta de que el marciano lloraba a su manera, igual que los humanos. \n
		Luego lo vieron inclinarse hacia el pájaro y sostenerlo en sus seis brazos, tratando de calentarlo. \n
		Y así los cosmonautas entendieron una valiosa lección: \n
		«Pensamos que este monstruo era diferente de nosotros, y después de todo también ama, sufre o ríe» \n
		Por eso se acercaron al marciano y le extendieron las manos. Y él, que tenía seis, les dio la mano a los tres a la vez, mientras que con sus manos libres hizo gestos de saludo.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(28,'¿Quién estaba al mando de los primeros cohetes que se enviaron a explorar el espacio? '),
	(28,'¿Porque se le llamaban así a los cosmonautas? '),
	(28,'¿A que planeta fueron los tres cosmonautas? '),
	(28,'¿De que países eran los cosmonautas que fueron a marte? '),
	(28,'¿Que especies vieron los cosmonautas al llegar a marte? '),
	(28,'¿Como fue que los cosmonautas notaron que el marciano no era tan diferente a ellos? ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(142,1, 'Perros'),
	(142,0, 'Simios'),
	(142,0, 'Aliens '),
	(142,0, 'Robots'),

	(143,0, 'Es una combinación de sus nombres'),
	(143,0, 'Es el apellido de ellos tres, son familia'),
	(143,1, 'Porque iban a explorar cosmos'),
	(143,0, 'Por un programa de televisión muy conocido'),

	(144,1, 'Marte'),
	(144,0, 'Jupiter'),
	(144,0, 'Saturno'),
	(144,0, 'Neptuno'),

	(145,1, 'Estados Unidos, Rusia, China'),
	(145,0, 'Los tres eran de China'),
	(145,0, 'Estados Unidados, Mexico, China'),
	(145,0, 'Japon, Estados Unidos, Rusia'),

	(146,0, 'Muchos marcianos de color verde y 4 brazos'),
	(146,0, 'Unos pajaros con plumas de colores muy extraño y un marciano de 4 brazos'),
	(146,0, 'Marcianos de diferentes colores y muchos brazos cada uno'),
	(146,1, 'Un marciano con 6 brazos y unos pajaros con plumas de colores muy extraños'),

	(147,0, 'Cuando el marciano los saludo'),
	(147,0, 'Cuando el marciano comenzó a cantar canciones en su idioma'),
	(147,0, 'Cuando notaron que podía entenderlos'),
	(147,1, 'Cuando notaron que el alien empezo a llorar ')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(8, 1, 'Perrobot')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(29,'Calisto era un inventor al que le encantaban los perros. Pero no podría adoptar ninguno porque le daban alergia. \n
		Como no se resignaba a vivir sin mascota decidió inventar un robot perro. Y así nació Perrobot. \n
		Tras años haciendo pruebas, cálculos y experimentos, Calisto consiguió crear el robot perro perfecto. \n
		Perrobot recibía a Calisto con alegres ladridos cuando llegaba a casa, le provocaba para jugar, se acurrucaba con él y paseaba con él como cualquier otro perro. ¡Incluso le pedía comía, aunque luego no se comiera! \n
		Lo que más le gustaba a Calisto es que Perrobot le entendía. Pero de verdad. Le podía ordenar cualquier cosa o contar lo que fuera, que él le entendía ya actuaba en consecuencia.'),
	(29,'Pero había algo que fallaba. Calisto era demasiado duro. No estaba suave y blandito como los perros de verdad. Y estaba más bien frío. \n
		Calisto intentó solucionar esto poniéndole una especie de abrigo peludo. Pero Perrobot no funcionaba bien con el abrigo. Fallaba. Y aunque hubiera funcionado, no hubiera servido de mucho. Porque, aunque parecía que le agradaban las caricias, Calisto sabía que, en el fondo, Perrobot era una máquina. \n
		-No sé qué hacer contigo, Perrobot -le dijo un día Calisto-. Eres un gran compañero, pero cuanto más estoy contigo más cuenta de doy de que lo que quiero es un perro de verdad. \n
		Perrobot procesó la información y, en menos de medio minuto, se puso a tirar de Calisto, haciéndole señas de que le sacara a la calle. Calisto accedió y siguió a Perrobot.'),
	(29,'Después de un rato acabaron en la comisaría de policía. \n
		-¿Esto quieres? ¿Quedarte con la policía? \n
		Perrobot ladró. \n
		-¡Pues serías un perrobot policía espectacular! -dijo Calisto-. Vamos a ver qué dice el comisario. \n
		Perrobot se convirtió en perro policía, robot policía, según se mire. Y tuvo tanto éxito que Calisto recibió un montón de encargos. \n
		Tal vez Perrobot no solucionara el problema de Calisto, pero su idea fue de gran ayuda. Y, aunque no consiguió lo que quería, Calisto está muy contento por haberlo intentado.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(29,'¿Cuál era el nombre del inventor de perrobot?'),
	(29,'¿Cómo fue que nació perrobot?'),
	(29,'¿A dónde llevo perrobot a su inventor?'),
	(29,'¿Qué fue lo que paso con perrobot después de que lo dejaran en la comisaria?'),
	(29,'¿Qué paso con Calisto al final?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(148,0, 'Tulio'),
	(148,1, 'Calisto'),
	(148,0, 'Armando'),
	(148,0, 'Julio'),

	(149,1, 'Su inventor quería un perro pero era alérgico'),
	(149,0, 'La hija del inventor era alérgica a los perros'),
	(149,0, 'Necesitaba un perro robot para un concurso'),
	(149,0, 'Era un regalo para la esposa del inventor'),

	(150,0, 'Con más perrobots'),
	(150,1, 'A la comisaria de policia'),
	(150,0, 'Al laboratorio de otro inventor'),
	(150,0, 'Al basurero'),

	(151,0, 'Lo arrestaron'),
	(151,0, 'Se escapo y consiguió una familia'),
	(151,1, 'Se volvió un perro policia'),
	(151,0, 'Se convirtió en la mascota del comisario'),

	(152,0, 'Invento una cura para su alergia y adopto un perro real'),
	(152,0, 'Se dio cuenta que extrañaba a perrobot y creo otro'),
	(152,0, 'Creo a una familia para perrobot'),
	(152,1, 'Recibio muchos encargos gracias al éxito de perrobot ')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(8, 1, 'Un viaje a la luna')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(30,'Unos chicos se reunieron para trabajar de a 4 en una tarea escolar, podían decidir de qué harían la tarea. Uno de ellos quiso que fuera un cuento, pero otro quiso que fuera de matemáticas, como había que pensar mucho para eso, el siguiente quiso lo mismo que el primero y el último prefirió viajar a la luna. \n
		Es completamente imposible hacer un viaje a la luna, es lo que todos pensaron y por eso no quería hacerlo, pero al mismo tiempo les parecía una super idea y muy divertida, por eso luego de tanto hablar la terminaron aceptando.'),
	(30,'El día siguiente fueron a la escuela y se reunirían en la salida, donde cada uno llevaría algo diferente, uno de ellos herramientas, otros las partes de cartón para la nave y los cascos, por último otro los alimentos y frazadas. Estuvieron todo el día trabajando en la nave porque la estaban haciendo muy grande y se fijaban en cada detalle para que sea perfecta, pero acabaron durmiendo dentro. \n
		Al rato sienten los pequeños que se estaban moviendo y al mirar por las ventanas vieron a la luna, así como a las estrellas. Bajaron de la nave con sus cascos y entonces vieron a un extraterrestre parado sobre la luna y junto a él a un hombre que tenía ropa de color naranja, pero sin embargo era un humano. Caminaron por la luna y encontraron un galpón, entonces entraron y había fotos, así como toda clase de cosas de los humanos hace más de 50.000 años.'),
	(30,'Por último todos se despertaron al escuchar los gritos de la madre de uno de ellos que los llamaba para tomar la leche, así es como los niños nunca supieron si realmente visitaron la luna o solamente había sido un sueño.')



INSERT INTO Question(IdContent,Text)
	VALUES
	(30,'¿Cuántos niños de reunieron para hacer la tarea? '),
	(30,'¿Qué decidieron hacer de tarea? '),
	(30,'¿Qué vieron los niños al llegar a la luna? '),
	(30,'¿De que color era la ropa del hombre que vieron en la luna? '),
	(30,'¿De que época eran las cosas que encontraron los niños en la luna? ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(153,0, '3'),
	(153,1, '4'),
	(153,0, '5'),
	(153,0, '6'),

	(154,0, 'Inventar un cuento'),
	(154,0, 'Crear un robot'),
	(154,1, 'Viajar a la luna'),
	(154,0, 'Inventar un cuento sobre un viaje a la luna'),

	(155,0, 'Un extraterrestre '),
	(155,0, 'Un astronauta'),
	(155,1, 'Un extraterrestre y un hombre'),
	(155,0, 'Un hombre y su nave espacial'),

	(156,1, 'Naranja'),
	(156,0, 'Amarilla'),
	(156,0, 'Blanca '),
	(156,0, 'Azul'),

	(157,0, 'Del futuro'),
	(157,0, 'De hace mas de 10,000 años'),
	(157,1, 'De hace mas de 50,000 años'),
	(157,0, 'De hace 100 años')


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Catetegoria clasicos
-------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(7, 1, 'El flautista de hamelin')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(31,'Érase una vez a la orilla de un gran río en el Norte de Alemania una ciudad llamada Hamelin. Sus ciudadanos eran gente honesta que vivía felízmente en sus casas de piedra gris. Los años pasaron, y la ciudad se hizo rica y próspera. \n
		Hasta que un día, sucedió algo insólito que perturbó su paz. \n
		Hamelin siempre había tenido ratas, y bastantes, pero nunca habían sido un peligro, pues los gatos las mantenían a rayo de la manera habitual: cazándolas. Pero de pronto, las ratas comenzaron a multiplicarse. \n
		Con el tiempo, una gran marea de ratas cubría la ciudad. Primero atacaron las tiendas y graneros, y cuando no les quedó nada, fueron por madera, ropa o cualquier cosa. Lo único que no comían era el metal. Los aterrados ciudadanos se manifestaron ante el ayuntamiento para que los librara de la plaga de ratas, pero el consejo ya llevaba tiempo reunido tratando de pensar un plan.'),
	(31,'- Necesitaríamos un ejército de gatos. \n
		Pero los gatos ya estaban muertos. \n
		- Deberíamos matarlas con comida envenenada. \n
		Pero apenas les quedaba comida, y el ni siquiera el veneno era capaz de detenerlas. \n
		- Necesitamos ayuda- dijo el alcalde abatido. \n
		En ese preciso instante, mientras los ciudadanos se agolpaban afuera, llamaron fuertemente a la puerta. ¿Quién podría ser? se preguntaban preocupados los miembros del consejo, temerosos de las iras de la gente. Abrieron la puerta con precaución y, ante su sorpresa, apareció ante ellos un hombre alto, vestido con ropas de brillantes colores, con una larga pluma en su sombrero y una larga flauta dorada.'),
	(31,'- He librado ciudades de escarabajos y murciélagos - dijo el extraño- y por mil florines, también les libraré de las ratas. \n
		- ¡Mil florines!- exclamó el alcande- ¡Le daríamos cincuenta mil si lo hiciera! \n
		El extraño salió entonces diciendo: \n
		- Ahora es tarde, pero mañana al amanecer no quedará ni una rata en Hamelin \n
		Todavía no había salido es sol cuando el sonido de una flauta se escuchó a través de las calles de Hamelin. El flautista fue pasando lentamente por entre las casas, y todas las ratas le seguían. Salían de todas partes: de las puertas, de las ventanas, de las cañerías, todas detrás del flautista. Mientras tocaba, el extranjero bajó hacia el río y lo cruzó. Tras él, las ratas seguían sus pasos, y todas y cada una de ellas se ahogaron y fueron arrastradas por la corriente.'),
	(31,'Al mediodía, no quedaba ni una sola rata en la ciudad. Todos en el consejo estaban encantados, hasta que el flautista acudió a reclamar su pago. \n
		- ¿Cincuenta mil florines?- exclamaron - ¡Jamás! \n
		- ¡Que sean mil al menos! - gritó furioso el flautista. Pero el alcalde respondió: \n
		- Ahora todas las ratas están muertas y no volverán. Así que confórmate con cincuenta florines, sin es que no quieres quedarte sin nada. \n
		Con los ojos encendidos de ira, el flautista señaló con su dedo al alcalde: \n
		- Te arrepentirás amargamente de haber roto tu promesa \n
		Y desapareció.'),
	(31,'Una sombra de miedo envolvió a los consejeros, pero el alcalde se encogió de hombros y dijo emocionado: \n
		- ¡Qué diablos! Acabamos de ahorrarnos cincuenta mil florines. \n
		Aquella noche, liberados de la pesadilla de las ratas, los habitantes de Hamelin durmieron más profundamente que nunca. Y cuando el extraño sonido de una flauta flotó por las calles al amanecer, solo los niños lo escucharon. Como atraídos de un modo mágico, los niños salían de sus casas. Y de la misma forma que había ocurrido el día anterior, el flautista recorrió tranquilamente las calles, reuniendo a todos los niños, que le seguían dócilmente al son de la extraña música.'),
	(31,'Pronto la larga hilera dejó la ciudad y se encaminó al bosque, y tras cruzarlo alcanzó la falda de una gran montaña. Cuando el flautista alcanzó la roca, tocó su instrumento con más fuerza, y en la montaña se abrió una gran puerta que daba acceso a una cueva. Los niños entraron tras el flautista, y cuando el último de ellos se adentró en la oscuridad, la entrada se cerró. \n
		Un gran movimiento de tierras cerró la entrada de la cueva para siempre, y solo un pequeño niño cojo pudo escapar de la tragedia. Fue él quien contó a los angustiados habitantes de Hamelin, que buscaban sus niños desesperadamente, lo que había ocurrido. Y de nada sirvieron todos sus esfuerzos: la montaña nunca devolvió a sus víctimas. 
		Muchos años tuvieron que pasar hasta que las alegres voces de los niños volvieron a resonar en las calles de Hamelin, pero el recuerdo de la aquella terrible lección permaneció para siempre en los corazones de todos, y fue pasando de padres a hijos a través de los siglos.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(31,'¿En qué país se sitúa el cuento?'),
	(31,'¿Cómo se llama la ciudad donde transcurre la historia?'),
	(31,'¿Cómo hizo el flautista para librarse de las ratas?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(158,0, 'Hamelin'),
	(158,0, 'Italia'),
	(158,0, 'Irlanda'),
	(158,1, 'Alemania'),

	(159,1, 'Hamelin'),
	(159,0, 'Alemania'),
	(159,0, 'Berlin'),
	(159,0, 'Hessel'),

	(160,0, 'Las atrajo con su flauta y las quemo'),
	(160,0, 'Las atrajo con su flauta y las enveneno'),
	(160,1, 'Las atrajo con su flauta y las ahogo'),
	(160,0, 'Las atrajo con su flauta y las enveneno')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(7, 1, 'El gato con botas')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(32,'Había una vez un molinero pobre que cuando murió sólo pudo dejar a sus hijos por herencia el molino, un asno y un gato. En el reparto el molino fue para el mayor, el asno para el segundo y el gato para el más pequeño. Éste último se lamentó de su suerte en cuanto supo cuál era su parte. \n
		- ¿Y ahora qué haré? Mis hermanos trabajarán juntos y harán fortuna, pero yo sólo tengo un pobre gato. \n
		El gato, que no andaba muy lejos, le contestó: \n
		- No os preocupéis mi señor, estoy seguro de que os seré más valioso de lo que pensáis. \n
		- ¿Ah sí? ¿Cómo?, dijo el amo incrédulo \n
		- Dadme un par de botas y un saco y os lo demostraré. \n
		El amo no acababa de creer del todo en sus palabras, pero como sabía que era un gato astuto le dio lo que pedía.'),
	(32,'El gato fue al monte, llenó el saco de salvado y de trampas y se hizo el muerto junto a él. Inmediatamente cayó un conejo en el saco y el gato puso rumbo hacia el palacio del Rey. \n
		- Buenos días majestad, os traigo en nombre de mi amo el marqués de Carabás - pues éste fue el nombre que primero se le ocurrió - este conejo. \n
		- Muchas gracias gato, dadle las gracias también al señor Marqués de mi parte. \n
		Al día siguiente el gato cazó dos perdices y de nuevo fue a ofrecérselas al Rey, quien le dio una propina en agradecimiento. \n
		Los días fueron pasando y el gato continuó durante meses llevando lo que cazaba al Rey de parte del Marqués de Carabás. \n
		Un día se enteró de que el monarca iba a salir al río junto con su hija la princesa y le dijo a su amo: \n
		- Haced lo que os digo amo. Acudid al río y bañaos en el lugar que os diga. Yo me encargaré del resto.'),
	(32,'El amo le hizo caso y cuando pasó junto al río la carroza del Rey, el gato comenzó a gritar diciendo que el marqués se ahogaba. Al verlo, el Rey ordenó a sus guardias que lo salvaran y el gato aprovechó para contarle al Rey que unos forajidos habían robado la ropa del marqués mientras se bañaba. El Rey, en agradecimiento por los regalos que había recibido de su parte mandó rápidamente que le llevaran su traje más hermoso. Con él puesto, el marqués resultaba especialmente hermoso y la princesa no tardó en darse cuenta de ello. De modo que el Rey lo invitó a subir a su carroza para dar un paseo. \n
		El gato se colocó por delante de ellos y en cuanto vio a un par de campesinos segando corrió hacia ellos. \n
		- Buenas gentes que segáis, si no decís al Rey que el prado que estáis segando pertenece al señor Marqués de Carabás, os harán picadillo como carne de pastel.'),
	(32,'Los campesinos hicieron caso y cuando el Rey pasó junto a ellos y les preguntó de quién era aquél prado, contestaron que del Marqués de Carabás. \n
		Siguieron camino adelante y se cruzaron con otro par de campesinos a los que se acercó el gato. \n
		- Buenas gentes que segáis, si no decís al Rey que todos estos trigales pertenecen al señor Marqués de Carabás, os harán picadillo como carne de pastel. \n
		Y en cuanto el Rey preguntó a los segadores, respondieron sin dudar que aquellos campos también eran del marqués. \n
		Continuaron su paseo y se encontraron con un majestuoso castillo. El gato sabía que su dueño era un ogro así que fue a hablar con el. \n
		- He oído que tenéis el don de convertiros en cualquier animal que deseéis. ¿Es eso cierto? \n
		- Pues claro. Veréis cómo me convierto en león \n
		Y el ogro lo hizo. El pobre gato se asustó mucho, pero siguió adelante con su hábil plan.'),
	(32,'- Ya veo que están en lo cierto. Pero seguro que no sóis capaces de convertiros en un animal muy pequeño como un ratón. \n
		- ¿Ah no? ¡Mirad esto! \n
		El ogro cumplió su palabra y se convirtió en un ratón, pero entonces el gato fue más rápido, lo cazó de un zarpazo y se lo comió. \n
		Así, cuando el Rey y el Marqués llegaron hasta el castillo no había ni rastro del ogro y el gato pudo decir que se encontraban en el estupendo castillo del Marqués de Carabás. \n
		El Rey quedó fascinado ante tanto esplendor y acabó pensando que se trataba del candidato perfecto para casarse con su hija. \n
		El Marqués y la princesa se casaron felizmente y el gato sólo volvió a cazar ratones para entretenerse.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(32,'¿Qué dejo de herencia el molinero a sus hijos?'),
	(32,'¿Cuántos hijos tiene el molinero?'),
	(32,'¿Qué le dejo al hijo mayor?'),
	(32,'¿Qué le dejo a su segundo hijo?'),
	(32,'¿Qué le dejo al menor?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(161,1, 'Un molino, un asno y un gato'),
	(161,0, 'Un molino y mucho oro'),
	(161,0, 'Un gato con botas'),
	(161,0, 'Un molino, un asno y mucho oro'),

	(162,0, '5'),
	(162,0, '2'),
	(162,1, '3'),
	(162,0, '4'),

	(163,0, 'Mucho oro'),
	(163,1, 'El molino'),
	(163,0, 'Un asno '),
	(163,0, 'Un gato'),

	(164,0, 'El molino'),
	(164,0, 'Un gato'),
	(164,1, 'Un asno'),
	(164,0, 'Mucho oro'),

	(165,0, 'Mucho oro'),
	(165,0, 'Un asno'),
	(165,0, 'Mucho oro'),
	(165,1, 'Un gato')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(7, 1, 'El soldadito de plomo')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(33,'Érase una vez un niño que tenía muchísimos juguetes. Los guardaba todos en su habitación y, durante el día, pasaba horas y horas felices jugando con ellos. \n
		Uno de sus juegos preferidos era el de hacer la guerra con sus soldaditos de plomo. Los ponía enfrente unos de otros, y daba comienzo a la batalla. Cuando se los regalaron, se dio cuenta de que a uno de ellos le faltaba una pierna a causa de un defecto de fundición. \n
		No obstante, mientras jugaba, colocaba siempre al soldado mutilado en primera línea, delante de todos, incitándole a ser el más aguerrido. Pero el niño no sabía que sus juguetes durante la noche cobraban vida y hablaban entre ellos, y a veces, al colocar ordenadamente a los soldados, metía por descuido el soldadito mutilado entre los otros juguetes.'),
	(33,'Y así fue como un día el soldadito pudo conocer a una gentil bailarina, también de plomo. Entre los dos se estableció una corriente de simpatía y, poco a poco, casi sin darse cuenta, el soldadito se enamoró de ella. Las noches se sucedían deprisa, una tras otra, y el soldadito enamorado no encontraba nunca el momento oportuno para declararle su amor. Cuando el niño lo dejaba en medio de los otros soldados durante una batalla, anhelaba que la bailarina se diera cuenta de su valor por la noche , cuando ella le decía si había pasado miedo, él le respondía con vehemencia que no. \n
		Pero las miradas insistentes y los suspiros del soldadito no pasaron inadvertidos por el diablejo que estaba encerrado en una caja de sorpresas. Cada vez que, por arte de magia, la caja se abría a medianoche, un dedo amonestante señalaba al pobre soldadito. \n
		Finalmente, una noche, el diablo estalló.'),
	(33,'-¡Eh, tú!, ¡Deja de mirar a la bailarina! \n
		El pobre soldadito se ruborizó, pero la bailarina, muy gentil, lo consoló: \n
		-No le hagas caso, es un envidioso. Yo estoy muy contenta de hablar contigo. \n
		Y lo dijo ruborizándose. \n
		¡Pobres estatuillas de plomo, tan tímidas, que no se atrevían a confesarse su mutuo amor! \n
		Pero un día fueron separados, cuando el niño colocó al soldadito en el alféizar de una ventana. \n
		-¡Quédate aquí y vigila que no entre ningún enemigo, porque aunque seas cojo bien puedes hacer de centinela!- \n
		El niño colocó luego a los demás soldaditos encima de una mesa para jugar.'),
	(33,'Pasaban los días y el soldadito de plomo no era relevado de su puesto de guardia. Una tarde estalló de improviso una tormenta, y un fuerte viento sacudió la ventana, golpeando la figurita de plomo que se precipitó en el vacío. Al caer desde el alféizar con la cabeza hacia abajo, la bayoneta del fusil se clavó en el suelo. El viento y la lluvia persistían. ¡Una borrasca de verdad! El agua, que caía a cántaros, pronto formó amplios charcos y pequeños riachuelos que se escapaban por las alcantarillas. Una nube de muchachos aguardaba a que la lluvia amainara, cobijados en la puerta de una escuela cercana. Cuando la lluvia cesó, se lanzaron corriendo en dirección a sus casas, evitando meter los pies en los charcos más grandes. Dos muchachos se refugiaron de las últimas gotas que se escurrían de los tejados, caminando muy pegados a las paredes de los edificios. \n'),
	(33,'Fue así como vieron al soldadito de plomo clavado en tierra, chorreando agua. \n
		-¡Qué lástima que tenga una sola pierna! Si no, me lo hubiera llevado a casa -dijo uno. \n
		-Cojámoslo igualmente, para algo servirá -dijo el otro, y se lo metió en un bolsillo. \n
		Al otro lado de la calle descendía un riachuelo, el cual transportaba una barquita de papel que llegó hasta allí no se sabe cómo. \n
		-¡Pongámoslo encima y parecerá marinero!- dijo el pequeño que lo había recogido. \n
		Así fue como el soldadito de plomo se convirtió en un navegante. El agua vertiginosa del riachuelo era engullida por la alcantarilla que se tragó también a la barquita. En el canal subterráneo el nivel de las aguas turbias era alto. \n
		Enormes ratas, cuyos dientes rechinaban, vieron como pasaba por delante de ellas el insólito marinero encima de la barquita zozobrante. ¡Pero hacía falta más que unas míseras ratas para asustarlo, a él que había afrontado tantos y tantos peligros en sus batallas!'),
	(33,'La alcantarilla desembocaba en el río, y hasta él llegó la barquita que al final zozobró sin remedio empujada por remolinos turbulentos. \n
		Después del naufragio, el soldadito de plomo creyó que su fin estaba próximo al hundirse en las profundidades del agua. Miles de pensamientos cruzaron entonces por su mente, pero sobre todo, había uno que le angustiaba más que ningún otro: era el de no volver a ver jamás a su bailarina... \n
		De pronto, una boca inmensa se lo tragó para cambiar su destino. El soldadito se encontró en el oscuro estómago de un enorme pez, que se abalanzó vorazmente sobre él atraído por los brillantes colores de su uniforme. \n
		Sin embargo, el pez no tuvo tiempo de indigestarse con tan pesada comida, ya que quedó prendido al poco rato en la red que un pescador había tendido en el río.'),
	(33,'Poco después acabó agonizando en una cesta de la compra junto con otros peces tan desafortunados como él. Resulta que la cocinera de la casa en la cual había estado el soldadito, se acercó al mercado para comprar pescado. \n
		-Este ejemplar parece apropiado para los invitados de esta noche -dijo la mujer contemplando el pescado expuesto encima de un mostrador. \n
		El pez acabó en la cocina y, cuando la cocinera la abrió para limpiarlo, se encontró sorprendida con el soldadito en sus manos. \n 
		-¡Pero si es uno de los soldaditos de...! -gritó, y fue en busca del niño para contarle dónde y cómo había encontrado a su soldadito de plomo al que le faltaba una pierna. \n
		-¡Sí, es el mío! -exclamó jubiloso el niño al reconocer al soldadito mutilado que había perdido.'),
	(33,'-¡Quién sabe cómo llegó hasta la barriga de este pez! ¡Pobrecito, cuantas aventuras habrá pasado desde que cayó de la ventana!- Y lo colocó en la repisa de la chimenea donde su hermanita había colocado a la bailarina. \n
		Un milagro había reunido de nuevo a los dos enamorados. Felices de estar otra vez juntos, durante la noche se contaban lo que había sucedido desde su separación. \n 
		Pero el destino les reservaba otra malévola sorpresa: un vendaval levantó la cortina de la ventana y, golpeando a la bailarina, la hizo caer en el hogar. \n
		El soldadito de plomo, asustado, vio como su compañera caía. Sabía que el fuego estaba encendido porque notaba su calor. Desesperado, se sentía impotente para salvarla.'),
	(33,'¡Qué gran enemigo es el fuego que puede fundir a unas estatuillas de plomo como nosotros! Balanceándose con su única pierna, trató de mover el pedestal que lo sostenía. Tras ímprobos esfuerzos, por fin también cayó al fuego. Unidos esta vez por la desgracia, volvieron a estar cerca el uno del otro, tan cerca que el plomo de sus pequeñas peanas, lamido por las llamas, empezó a fundirse. \n
		El plomo de la peana de uno se mezcló con el del otro, y el metal adquirió sorprendentemente la forma de corazón. \n
		A punto estaban sus cuerpecitos de fundirse, cuando acertó a pasar por allí el niño. Al ver a las dos estatuillas entre las llamas, las empujó con el pie lejos del fuego. Desde entonces, el soldadito y la bailarina estuvieron siempre juntos, tal y como el destino los había unido: sobre una sola peana en forma de corazón.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(33,'¿Cuál era uno de los juegos favoritos del niño?'),
	(33,'¿Qué le faltana a uno de los soldados de plomo?'),
	(33,'¿De quien se enamoro el soldado de plomo?'),
	(33,'¿Quién salvo al soldado de plomo?')


	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(166,0, 'Jugar al espacio con los astronautas'),
	(166,0, 'Jugar con sus dinosaurios'),
	(166,0, 'Jugar a salvar al mundo con sus superheroes'),
	(166,1, 'Jugar a la guerra con sus soldados de plomo'),

	(167,1, 'Un pierna'),
	(167,0, 'Un brazo'),
	(167,0, 'La cabeza'),
	(167,0, 'Los dos brazos'),

	(168,0, 'De una princesa de porcelana'),
	(168,0, 'De una princesa de plástico'),
	(168,1, 'De una bailarina de plomo'),
	(168,0, 'De una bailarina de porcelana'),

	(169,1, 'El niño'),
	(169,0, 'La bailarina'),
	(169,0, 'Los demás soldados de plomo'),
	(169,0, 'Los demás juguetes')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(7, 1, 'Los deseos ridiculos')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(34,'Había una vez un leñador tan pobre que ya no tenía ilusiones en esta vida. Estaba desanimado porque jamás había tenido suerte. Su vida era trabajo y más trabajo. Nada de lujos, nada de viajes, nada de diversiones… \n
		Un día, paseando por el bosque, comenzó a lamentarse en voz alta, pensando que nadie le escuchaba. \n
		– No sé lo que es una buena comida, ni dormir en sábanas de seda, ni tener un día libre para holgazanear un poco ¡La vida no ha sido buena conmigo! \n
		En ese instante, se le apareció el gran dios Júpiter con un rayo en la mano. El leñador, asustadísimo, se echó hacia atrás y, tapándose los ojos, empezó a gritar: \n
		– ¡No me haga nada, señor! ¡Por favor, no me haga nada!'),
	(34,'Júpiter le tranquilizó.
		– No temas, amigo, no voy a hacerte ningún daño. Vengo a demostrarte que te quejas sin fundamento. Quiero que te des cuenta por ti mismo de las cosas que realmente merecen la pena. \n
		– No comprendo lo que quiere decir, señor… \n
		– ¡Escúchame atentamente! Te daré una oportunidad que deberás aprovechar muy bien. Pide tres deseos, los que tú quieras, y te los concederé. Eso sí, mi consejo es que pienses  bien lo que vas a pedirme, porque sólo son tres y no hay marcha atrás. \n
		En cuanto dijo estas palabras, el dios se esfumó en el aire levantando una nube de polvo. El leñador, entusiasmado, echó a correr hacia su casa para contarle todo a su mujer. \n'),
	(34,'Como os podéis imaginar, su esposa se puso como loca de contenta ¡Por fin la suerte había llegado a sus vidas! Empezaron a hablar de futuro, de todas las cosas que querían comprar y de la cantidad de lugares lejanos que podrían visitar. \n
		– ¡Será genial vivir en una casa grande rodeada de un jardín repleto de magnolios! ¿Verdad, querida mía? \n
		– ¡Sí, sí! Y al fin podremos ir a París ¡Dicen que es precioso! \n
		– ¡Pues a mí me gustaría cruzar el océano Atlántico en un gran barco y llegar a las Américas!… \n
		¡No cabían en sí de gozo! Dejaron volar su imaginación y se sintieron muy afortunados. Pasado un rato se calmaron un poco y la mujer puso un poco de orden en todo el asunto. \n
		– Querido, no nos impacientemos. Estamos muy emocionados  y no podemos pensar con claridad. Vamos a decidir bien los tres deseos antes de decirlos para no equivocarnos.'),
	(34,'– Tienes razón. Voy a servir un poco de vino y lo tomaremos junto a la chimenea mientras charlamos ¿Te apetece? \n
		– ¡Buena idea! \n
		El leñador sirvió dos vasos y se sentaron juntos al calor del fuego. Estaban  felices y algo más tranquilos. Mientras bebían, el hombre exclamó: \n
		– Este vino está bastante bueno ¡Si tuviéramos una salchicha para acompañarlo sería perfecto! \n
		El pobre leñador no se dio cuenta de que con estas palabras acababa de formular su primer deseo, hasta que una enorme salchicha apareció ante sus narices. \n
		Su esposa dio un grito y, muy enfadada, comenzó a recriminarle. \n
		– ¡Serás tonto…! ¿Cómo malgastas un deseo en algo tan absurdo como una salchicha? ¡No vuelvas a hacerlo! Ten cuidado con lo que dices o nos quedaremos sin nada.'),
	(34,'– Tienes razón… Ha sido sin querer. Tendré más cuidado la próxima vez. \n
		Pero la mujer había perdido los nervios y seguía riñéndole sin parar. \n
		– ¡Eso te pasa por no pensar las cosas! ¡Deberías ser más sensato! ¡Mira que pedir una salchicha!… \n
		El hombre, harto de recibir reprimendas, acabó poniéndose nervioso él también y contestó con rabia a su mujer: \n
		– ¡Vale, vale, cállate ya! ¡Deja de hablar de la maldita salchicha! ¡Ojalá la tuvieras pegada a la nariz! \n
		La rabia y la ofuscación del momento le llevó a decir algo que, en realidad, no deseaba, pero el caso es que una vez que lo soltó, sucedió: la salchicha salió volando y se incrustó en la nariz de su linda mujer como si fuera una enorme verruga colgante.'),
	(34,'¡La pobre leñadora casi se desmaya del susto! Sin comerlo ni beberlo, ahora tenía una salchicha gigante en la cara. Se miró al espejo y vio con espanto su nuevo aspecto. Intentó quitársela a tirones pero fue imposible: esa salchicha se había pegado a ella de por vida. \n
		Con lágrimas en los ojos e intentando controlar la ira, se giró hacia su marido con los brazos en jarras. \n
		– ¿Y ahora qué hacemos? Sólo podemos formular un último deseo y las cosas se han torcido bastante, como puedes comprobar. \n
		Efectivamente, la decisión era peliaguda. Tratando de conservar la calma, se sentaron a deliberar sobre cómo utilizar ese deseo. Había dos opciones: pedir que la salchicha se despegara de la nariz de una vez por todas, o aprovechar para pedir oro y joyas que les permitirían vivir como reyes el resto de su vida. Lo que estaba clarísimo era que a una de las dos cosas debían renunciar.'),
	(34,'La mujer no quería ser portadora de una salchicha que afeara eternamente su bello rostro, y el leñador, que la amaba, no quería verla con ese aspecto monstruoso. Al final se pusieron de acuerdo y el hombre, levantándose, exclamó: \n
		– ¡Que la salchicha desaparezca de la nariz de mi mujer! \n
		Un segundo después, la  descomunal salchicha se había volatilizado. La muchacha recobró su belleza y él se sintió feliz de que volviera a ser la misma de siempre. \n
		La posibilidad de ser millonarios ya no existía, pero en lugar de sentir frustración, se abrazaron con mucho amor. El leñador comprendió, tal y como Júpiter le había advertido, que la auténtica felicidad no está en la riqueza, sino en ser felices con las personas que queremos.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(34,'¿A qué se dedica el protagonista de esta historia?'),
	(34,'¿Qué se le apareció al leñador en el bosque?'),
	(34,'¿Cuál fue el primer deseo del leñador?'),
	(34,'¿Cuál fue el segundo deseo?'),
	(34,'¿Cuál fue el tercer deseo?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(170,0, 'Es pescador'),
	(170,0, 'Es panadero'),
	(170,1, 'Es leñador'),
	(170,0, 'En granjero'),

	(171,1, 'El dios júpiter'),
	(171,0, 'Un lobo'),
	(171,0, 'Un zorro'),
	(171,0, 'El dios venus'),

	(172,0, 'Un castillo'),
	(172,0, 'Un gran banquete'),
	(172,0, 'Mucho dinero'),
	(172,1, 'Una salchicha'),

	(173,0, 'Mucho dinero'),
	(173,1, 'Que su mujer tuviera la salchicha pegada a la nariz'),
	(173,0, 'Un castillo'),
	(173,0, 'Un gran banquete'),

	(174,0, 'Mucho oro y riqueza'),
	(174,0, 'Un castillo'),
	(174,0, 'Ser los reyes del pueblo'),
	(174,1, 'Que la salchicha desaparezca de la nariz de su esposa')

	


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(3, 1, 'Pulgarcito')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(35,'Pulgarcito era un niño del tamaño de un pulgar. Era el menor de los 7 hijos de unos leñadores tan pobres que decidieron abandonar a sus hijos en el bosque. Pulgarcito los escuchó, y se preparó para ir dejando caer piedras por el camino y guiar a sus hermanos de vuelta. \n
		Aunque inicialmente sus padres se alegraron del regreso, tiempo después volvieron a intentarlo. Esta vez Pulgarcito arrojó las migas de su pan para marcar el camino, pero los pájaros se las comieron y resultaron perdidos. '),
	(35,'Tras muchas vueltas encontraron la casa de un ogro, aficionado a comer niños, que vivía con su mujer y sus siete hijas. El ogro, al descubrir a los niños, quiso matarlos, pero la mujer le convenció para reservarlos para mejor ocasión. Aquella noche Pulgarcito cambió su gorro y el de sus hermanos por las coronas de las hijas del ogro y, cuando el ogro despertó a oscuras y pensó de nuevo en matarlos, fue a sus hijas a quienes mató, mientras Pulgarcito y sus hermanos huían. \n
		Al descubrir lo ocurrido el ogro persiguió a los niños calzando sus botas de siete leguas, capaces de avanzar esa distancia tanto a cada paso. El ogro buscó largo rato y acabó dormido sin saber que Pulgarcito lo vigilaba. '),
	(35,'Este le robó las botas y las usó para llegar hasta el palacio del rey y ponerse a su servicio como mensajero, lo que le hizo enriquecerse de tal modo que ni él ni su familia volvieron a pasar hambre.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(35,'¿De que tamaño es pulgarcito?'),
	(35,'¿Cuántos hermanos tiene pulgarcito?'),
	(35,'¿Qué hicieron los padres de pulgarcito con el y sus hermanos?'),
	(35,'¿Qué encontraron en el bosque pulgarcito y sus hermanos?'),
	(35,'¿Cuántas hijas tenia el ogro?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(175,0, 'De 2 metros'),
	(175,0, 'De un gigante'),
	(175,0, 'De un raton'),
	(175,1, 'De un pulgar'),

	(176,0, '7'),
	(176,0, '2'),
	(176,1, '6'),
	(176,0, '5'),

	(177,1, 'Los abandonaron en el bosque'),
	(177,0, 'Les regalaron juguetes a cada uno'),
	(177,0, 'Los dejaron en un castillo'),
	(177,0, 'Los pusieron a trabajar'),

	(178,1, 'La casa de un ogro'),
	(178,0, 'Un castillo'),
	(178,0, 'A sus padres'),
	(178,0, 'La casa de una bruja'),

	(179,0, '6'),
	(179,1, '7'),
	(179,0, '5'),
	(179,0, '2')

------------------------------------------------------------------------------------------------------------------
	--Leyendas
	--Creador abel
------------------------------------------------------------------------------------------------------------------

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(3, 1, 'El tucan y el párajo carpintero')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(36,'Hace muchísimos años, en la selva amazónica, vivía un pequeño pájaro carpintero que iba a ser papá.  Los días habían pasado rápido y sus crías estaban a punto de nacer. Necesitaba fabricar un nido en un lugar seguro, lejos de los depredadores; por este motivo, eligió la parte alta de un tronco centenario, lejos de miradas indiscretas. \n
		Como no disponía de mucho tiempo, se dedicaba día y noche a picotear sin descanso la corteza del árbol ¡Tenía que hacer un agujero grande y confortable para los huevos! '),
	(36,'El sonido de su pico golpeando la madera se extendió por los alrededores y llamó la atención de un tucán. Al principio, el ave de colores no encontraba de dónde salía ese repiqueteo, pero indagó un poco y descubrió al pájaro carpintero trabajando, oculto por el follaje de los árboles. \n
		– ¡Hola, amigo! Veo que estás haciendo un nido para tu familia. \n
		– Sí, así es. Tengo que terminarlo cuanto antes porque mis pequeñuelos llegarán al mundo de un momento a otro. \n
		El tucán estaba fascinado. Nunca había visto a nadie trabajar con tanto interés y decidió hacerle una proposición.'),
	(36,'– ¿Sabes? Yo no tengo casa y me veo obligado a anidar a la intemperie y en cualquier lugar. Nunca me siento seguro y paso bastante frío. Me preguntaba si podría contar contigo para que fabriques un nido para mí. \n
		El pájaro carpintero dejó por un momento de picar la madera y le miró muy interesado. Sus ojos se posaron en el pecho del tucán, un ave realmente hermosa y colorida. \n
		– ¡Se me ocurre una idea! Si te parece bien, yo me comprometo a fabricar tu nido y a cambio, tú me regalas algunas de tus preciosas plumas rojas ¡Creo que serían el adorno perfecto para mi cabeza! \n
		– ¡Fantástico! Es un trato justo para los dos ¡Cuenta con ello!'),
	(36,'En cuanto el pájaro carpintero terminó de construir su nido, se puso a taladrar otro agujero en un árbol vecino para el tucán. Al finalizar la obra, el tucán le felicitó por su buen hacer, se quitó unas cuántas plumas, y se las colocó a su nuevo amigo en la cabeza. Después, los dos volaron hasta una charca que habían formado las lluvias de la mañana. El pájaro carpintero se inclinó un poco para verse y se encontró guapísimo. \n
		– ¡Oh, qué bien me quedan! Muchas gracias, amigo ¡Son preciosas! \n
		– Gracias a ti por construir mi nuevo hogar. \n
		Se abrazaron y entre ellos se creó una amistad para toda la vida.'),
	(36,'Dice la leyenda que, desde ese día, los pájaros carpinteros lucen orgullosos un simpático penacho de plumas y que los tucanes siempre encuentran agujeros para vivir, pues sus amigos los pájaros carpinteros se los ceden para que puedan guarecerse y anidar.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(36,'¿En donde se desarrolla la historia?'),
	(36,'¿Quién iba a ser papá?'),
	(36,'¿Qué necesitaba fabricar el pájaro carpintero para sus crías?'),
	(36,'¿Qué le pidió el tucán al pájaro carpintero?'),
	(36,'¿Qué le pidió el pájaro carpintero al tucán a cambio de hacer el nido?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(180,1, 'La selva amazónica'),
	(180,0, 'En China'),
	(180,0, 'En China'),
	(180,0, 'En un rio'),

	(181,1, 'El pájaro carpintero'),
	(181,0, 'El pájaro carpintero'),
	(181,0, 'El mono'),
	(181,0, 'El perezoso'),

	(182,0, 'Nada'),
	(182,0, 'Juguetes'),
	(182,1, 'Un nido'),
	(182,0, 'Una caja de música'),

	(183,0, 'Que le buscara comida'),
	(183,0, 'Que se fuera de ese árbol porque era de el'),
	(183,0, 'Que dejara de hacer ruido'),
	(183,1, 'Que le construyera un nido'),

	(184,0, 'Que le ayudara a construir el nido'),
	(184,1, 'Que le regalara de sus plumas'),
	(184,0, 'Que le trajera comida'),
	(184,0, 'Que cuidara a sus crías')

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(3, 1, 'La leyenda del crisantemo')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(37,'Hace muchos años, en un pueblecito del lejano Japón, vivía un humilde matrimonio con su pequeño hijo. Los tres formaban una familia feliz hasta que un día el niño cayó enfermo.  Todas las mañanas se levantaba ardiendo de fiebre y con la carita pálida como la luna en invierno, pero nadie sabía qué le pasaba ni cuál era el origen de sus males. \n
		Los padres probaron todo tipo de pócimas y mejunjes, pero ninguno  de los tratamientos surtió efecto y el chiquillo no hacía más que empeorar.  Desesperados, pensaron que solo les quedaba una oportunidad: visitar al anciano de barbas blancas que vivía en el bosque.'),
	(37,'Según se contaba por toda la región no había hombre más sabio que él. Conocía todas las hierbas medicinales y los remedios para cada enfermedad por rara que fuera ¡Quizá pudiera curar a su hijo! \n
		– ¡Querido, tenemos que intentarlo! Quédate con el niño mientras yo voy a pedir ayuda al anciano del bosque ¡Solo él puede salvar a nuestro chiquitín! \n
		Derramando lágrimas como gotas de lluvia, la madre se puso una capa de lana y se adentró entre la maleza. Caminó durante una hora hasta que por fin divisó una cabaña de madera rodeada por un cercado. Se acercó a la entrada, llamó a la puerta con el puño y un hombre muy arrugado con barba blanca hasta la cintura salió a recibirla.'),
	(37,'– ¿Qué buscas por aquí, mujer? \n
		– ¡Perdone que le moleste pero necesito su ayuda! \n
		– No te preocupes; percibo angustia en tus ojos y en tu voz… ¡Pasa y cuéntemelo todo! \n
		La mujer entró y se acomodó en un sencillo banco construido con un tronco. Con el corazón encogido y los ojos hinchados de tanto llorar, explicó al anciano el motivo de su visita. \n
		– Señor, mi hijo de dos años está muy grave. Hace días que enfermó y no conseguimos bajarle la temperatura ¡Tiene muchísima fiebre y el rostro blanco como el mármol! No come nada y cada día está más débil. Si no encontramos una cura para él me temo que…'),
	(37,'– Lo siento,  lo siento muchísimo…. Voy a ser muy sincero contigo: no conozco el remedio para la enfermedad de tu hijo, pero puedo decirte cuántos días va a vivir. \n
		– ¿Cómo dice? ¡¿Y sin son pocos?! …¡No sé si quiero saberlo! \n
		– No pierdas la esperanza…  ¡Nunca se sabe! \n
		El anciano la miró con ternura y continuó hablando: \n
		– Escúchame con atención: ve al bosque y busca una planta que da unas flores amarillas llamadas crisantemos. Elige una de esas flores, córtala y cuenta los pétalos; el resultado que obtengas será el número de días que va a vivir tu pequeño, o lo que es lo mismo, sabrás si se va a curar o no.'),
	(37,'La madre, rota de dolor, echó a correr en busca de la planta que el anciano le había indicado. No tardó mucho en encontrar un arbusto cubierto de preciosas flores amarillas. Se acercó, arrancó una flor y contó sus pétalos. \n
		– ¡Oh, no, no puede ser! Sólo tiene cuatro pétalos… ¡Eso significa que solo va a vivir cuatro días más! \n
		Se derrumbó sobre el suelo y gritó con amargura durante un largo rato para desahogarse,  pero no se resignó a ese cruel destino. Decidida a alargar la vida de su hijo por muchos años trató de calmarse, se sentó en una piedra y, con mucha delicadeza, comenzó a rasgar los pétalos del crisantemo en finísimas tiras hasta que cada uno quedó dividido en miles de partes.'),
	(37,'Cuando terminó, regresó a la cabaña del anciano y le mostró la flor. El hombre, con mucha paciencia, se puso a contar los pétalos, pero eran infinitos y le resultó imposible. \n
		Se atusó su larga barba blanca, suspiró y miró a la mujer con una sonrisa. \n
		– Tengo buenas noticias para ti. Esta flor tiene miles y miles de pétalos, y eso significa que tu hijito vivirá muchísimos años. Seguro que se casará y tendrá y muchos hijos y muchos nietos, ya lo verás.  Ahora, regresa junto a él y confía en su recuperación. \n
		– ¡Mil gracias, señor! Jamás olvidaré lo que ha hecho por mí y por mi familia.'),
	(37,'La mujer, desbordante de felicidad, volvió a casa y entró en el cuarto de su hijo. El chiquitín ya no estaba inmóvil en la cama, sino sentado sobre unos almohadones,  sonriente  y comiendo un plato de sopa ¡Se estaba recuperando! \n
		Pocos días después, el color sonrosado de sus mejillas indicó que había sanado por completo. \n
		Cuenta la leyenda que desde entonces los crisantemos ya no tienen cuatro pétalos sino muchísimos, tantos que nadie es capaz de contarlos todos ¡Puedes comprobarlo cuando veas uno!')


INSERT INTO Question(IdContent,Text)
	VALUES
	(37,'¿En qué país se desarrolla la historia?'),
	(37,'¿De cuantas personas está conformada la familia protagonista?'),
	(37,'¿Qué le paso al hijo de la familia?'),
	(37,'¿Cuántos años tiene el hijo de la familia?'),
	(37,'¿De que color son las flores que el anciano mando a la madre a buscar?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(185,1, 'Japón'),
	(185,0, 'China'),
	(185,0, 'México'),
	(185,0, 'España'),

	(186,1, '3, Papá, mamá y un hijo'),
	(186,0, '4, Papá, mamá, un hijo y una hija'),
	(186,0, '3, Mamá, un hijo y una hija'),
	(186,0, '5, Papá, mamá, dos hijos y una hija'),

	(187,0, 'Tuvo un accidente'),
	(187,0, 'Se perdió'),
	(187,1, 'Se enfermo'),
	(187,0, 'Se fue de la casa'),

	(188,0, '10'),
	(188,0, '7'),
	(188,0, '15'),
	(188,1, '2'),

	(189,0, 'blancas'),
	(189,1, 'amarillas'),
	(189,0, 'rosas	'),
	(189,0, 'lilas')


	INSERT INTO Content(IdTypeContent, Status, Title) VALUES(3, 1, 'El molino mágico')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(38,'Una antigua leyenda de Noruega nos cuenta por qué el agua del océano es salada ¿Queréis conocer la historia?… \n
		Parece ser que hace muchísimos años, vivía en el norte de Europa un hombre que se dedicaba a recorrer el mundo en su viejo barco. Era un capitán valiente y acostumbrado a vencer las más temibles tempestades, pero por lo visto, también muy ambicioso: le encantaba amasar dinero y ganar cuanto más mejor. \n
		Surcaba los mares transportando mercancías que luego vendía en diferentes puertos del mundo. Si cerraba un buen trato, pagaba a los marineros de su tripulación lo que les correspondía, guardaba sus propias ganancias a buen recaudo en su camarote, y silbando de alegría agarraba el timón para dirigirse a un nuevo destino.'),
	(38,'En una ocasión, llegó a un importante puerto de Noruega donde multitud de comerciantes vendían el pescado fresco recién capturado.  Al capitán le dio buena espina ver tanto bullicio  y se acercó a la lonja deseando hacer un negocio redondo. \n
		Mientras paseaba por allí, observó que un anciano de barba blanca y sombrero de lana calado hasta las orejas, ofrecía unos enormes bloques de sal. Inmediatamente se acercó, y como no eran demasiado caros, los compró todos. Pesaban mucho y tenía claro que tardaría al menos un par de horas en trasladarlos hasta su embarcación, pero le daba igual: el esfuerzo bien merecía la pena porque sabía que en otros países, le comprarían esa sal a precio de oro.'),
	(38,'Anochecía cuando soltó amarras y, junto a su tripulación, viró el barco rumbo al sur. Las estrellas le servían de guía y el mar estaba en calma como una balsa de aceite. Parecía una noche perfecta,  pero súbitamente, aparecieron unos enormes nubarrones y estalló una terrible tormenta. La lluvia empezó a inundar el barco y la fuerza de las olas casi les impide mantener el barco a flote. \n
		Por suerte, consiguieron navegar hasta una pequeña isla con la intención de guarecerse hasta que la tormenta amainara. Nunca imaginaron lo que iban a encontrarse allí. \n
		El capitán y los marineros atravesaron la playa y se adentraron en la zona de bosque buscando una cueva. De pronto, escucharon un misterioso sonido y se escondieron tras una roca. Lo que vieron fue algo realmente extraño: en un claro entre la tupida vegetación, un mago manejaba una máquina rarísima que jamás habían visto. '),
	(38,'Se fijaron bien  y descubrieron de qué se trataba: ¡Era un artilugio que trituraba piedras sin que hiciera falta tocarlo! Lo único que hacía el mago para que se pusiera en funcionamiento era decir: \n
		– ¡Muele que te muele! ¡Muele que te muele! ¡Muele que te muele! \n
		¡Los hombres no podían creer lo que estaban viendo! Habían contemplado muchas cosas insólitas en sus viajes por el mundo, pero nunca un artefacto mágico que trabajaba cuando una voz se lo ordenaba. \n
		El capitán, por supuesto, se empeñó en que ese molino tenía que ser suyo. Puso un dedo sobre sus labios para indicar a los hombres que se mantuvieran en silencio y les pidió que no movieran ni un músculo del cuerpo para no ser descubiertos. \n
		Durante un buen rato, el grupo permaneció quieto, observando…  La espera se hizo eterna. Finalmente, el hechicero acabó de moler la piedra, cogió el saco y se fue.'),
	(38,'¡Había llegado el momento!  El capitán y los marineros se abalanzaron sobre el molino para robarlo y lo transportaron sigilosamente hasta el barco.  El sol volvía a lucir en lo alto y  pudieron salir zumbando de aquella ínsula. \n
		Nada más alejarse de la costa, el capitán se puso manos a la obra ¡Tenía muy claro cómo sacarle provecho al molinillo! Se dio cuenta de que podía moler los gigantescos bloques de sal que había comprado en el puerto de Noruega y venderla en sacos pequeños. Definitivamente, se haría muy rico. \n
		Colocaron la máquina en la bodega  y metieron dentro los bloques de sal. Terminada la complicada operación, el capitán mandó salir a todo el mundo para quedarse a solas y comenzó a gritar: \n
		– ¡Muele que te muele! ¡Muele que te muele! ¡Muele que te muele! \n
		Como esperaba, los grandes bloques empezaron  a desmenuzarse convirtiéndose en  millones de granos finos, más pequeños incluso  que los de la arena de la playa.'),
	(38,'Todo iba sobre ruedas, pero el capitán no tuvo en cuenta la potencia de la máquina y en cuestión de minutos la sal comenzó a esparcirse, salió por la puerta e invadió la cubierta de la nave. Asustadísimo, quiso parar el molino, pero no pudo y se encontró con una situación descontrolada. \n
		La sal se desparramaba por todas partes y estaba a punto de llegar a la cima del mástil que sostenía la bandera. Por si esto fuera poco, debido al peso, el barco comenzó a hundirse.  A los desesperados marineros y al capitán no les quedó más remedio que saltar al agua para intentar salvar sus vidas. \n
		Por suerte, consiguieron llegar a nado hasta la costa más cercana. Desde allí, agotados por el esfuerzo, contemplaron con tristeza cómo el barco desaparecía para siempre bajo el profundo y oscuro océano. \n
		Cuenta la leyenda que, aun hoy en día, el molino mágico continúa moliendo la sal dentro de los restos hundidos del barco y que por eso todos los océanos y mares del mundo son salados.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(38,'¿De que país es la leyenda?'),
	(38,'¿En que recorría el mundo el hombre?'),
	(38,'¿De que estaba hecho el sombrero del anciano?'),
	(38,'¿Qué ofrecía el anciano?'),
	(38,'¿A quien se encontraron en la isla?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(190,1, 'Noruega'),
	(190,0, 'Alemania'),
	(190,0, 'España'),
	(190,0, 'Francia'),

	(191,1, 'En un barco'),
	(191,0, 'En una avioneta'),
	(191,0, 'En auto'),
	(191,0, 'En bicicleta'),

	(192,0, 'De paja'),
	(192,0, 'De tela'),
	(192,1, 'De lana'),
	(192,0, 'De plástico'),

	(193,0, 'Pescado'),
	(193,0, 'Sombreros de paja'),
	(193,0, 'Sombreros de lana'),
	(193,1, 'Bloques de sal'),

	(194,0, 'Al anciano que les vendió la sal'),
	(194,1, 'A un mago'),
	(194,0, 'A unos niños'),
	(194,0, 'A un niño')

	INSERT INTO Content(IdTypeContent, Status, Title) VALUES(3, 1, 'Por qué los osos polares tienen la cola corta')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(39,'Un frío día de invierno un gran oso polar deambulaba de aquí para allá buscando comida cuando de repente pasó por delante de él una zorra que llevaba varios peces en una bolsa. \n
		El oso estaba muerto de hambre y sintió que la boca se le hacía agua al ver el suculento manjar que la zorra se iba a zampar. Levantó la voz y le preguntó: \n
		– ¡Hola, amiga! Veo que has tenido suerte y hoy vas a cenar como una reina… ¿Dónde has conseguido ese estupendo botín? \n
		La zorra se paró en seco y con cara de despreocupación le dijo: \n 
		– Sencillo, amigo, simplemente fui a pescar. \n
		– ¿A pescar? ¡Pero si el lago está helado! \n
		La zorra, que era muy sabionda, se lo explicó de forma sencilla para que lo entendiera.'),
	(39,'– ¡Amigo, no te enteras! El lago está helado en la superficie pero no en el fondo. Haz un agujero en el hielo con tus garras y después prueba a meter la cola en el agua. En cuanto los peces la vean se acercarán y se agarrarán a ella para mordisquearla.  Cuando notes que han picado unos cuantos, da un tirón fuerte y ya está ¡Comida fresca y abundante para ti! \n
		– ¡Uy, pues sí que parece muy fácil!… \n
		– Lo es, pero te advierto que el agua está muy fría. Tienes que aguantar lo más que puedas porque cuantos más peces se peguen a tu cola mejor será la recompensa, pero tampoco te pases porque las consecuencias pueden ser nefastas. Yo diría que máximo cinco minutos. \n
		– ¡Entendido!  Muchas gracias por tu ayuda y tus buenos consejos. \n
		– ¡De nada, amigo, que tengas mucha suerte!'),
	(39,'La zorra continuó su camino y el gran oso blanco apretó el paso para llegar cuanto antes al lago. Como ya sabía se encontró con que no había agua sino una enorme plancha blanca que sólo servía para patinar o como mucho, para jugar un rato a tirar piedras y verlas rebotar. Animado por la sugerencia  de la zorra, hizo un agujero con las patas, sentó sobre él su enorme trasero, y dejó caer su larga cola dentro del agua. \n
		– ¡Brrrr, brrrr! ¡Qué fría está! \n
		El oso sentía que el frío se apoderaba de todo su cuerpo pero intentó no moverse ni una pizca. Armado de paciencia esperó y esperó hasta que los peces empezaron a arremolinarse junto a su cola. En seguida percibió unos mordisquitos muy suaves y calculó que serían unos diez o doce peces nada más.'),
	(39,'– Parece que el plan funciona pero tengo mucha hambre  y necesito pescar al menos tres docenas. Aguantaré un ratito más a ver… \n
		Dejó pasar no cinco sino diez minutos y el pobre ya no soportaba más la gélida temperatura del agua, así que se levantó de golpe y dio un fuerte tirón. Desgraciadamente la cola se había congelado como si fuera una estalactita de hielo y se partió de cuajo casi desde la raíz. \n
		Por ser demasiado avaricioso el oso polar se quedó ese día sin comer, pero lo realmente curioso de esta historia es que desde entonces, él y sus congéneres nacen con la cola pequeñita y muy corta.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(39,'¿Qué estaba buscando el oso polar?'),
	(39,'¿Con quien se encontró el oso polar?'),
	(39,'¿Qué llevaba la zorra en la bolsa?'),
	(39,'¿Como consiguió los peces la zorra?'),
	(39,'¿Qué paso con la cola del oso?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(195,1, 'Comida'),
	(195,0, 'Agua'),
	(195,0, 'Compañía'),
	(195,0, 'Un lugar para dormir'),

	(196,1, 'Con una zorra'),
	(196,0, 'Con un oso polar'),
	(196,0, 'Con un anciano'),
	(196,0, 'Con unos pingüinos'),

	(197,0, 'Frutos'),
	(197,0, 'Nada'),
	(197,1, 'Peces'),
	(197,0, 'Piedras'),

	(198,0, 'Los encontró en esa bolsa'),
	(198,0, 'Se los robo'),
	(198,0, 'Se los regalaron'),
	(198,1, 'Pescando'),

	(199,0, 'Nada'),
	(199,1, 'Se congelo'),
	(199,0, 'Se lastimo'),
	(199,0, 'Se la comieron los peces')

	INSERT INTO Content(IdTypeContent, Status, Title) VALUES(3, 1, 'La leyenda del maíz')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(40,'Hace varios siglos, antes del descubrimiento de América, en México vivían los aztecas. Cuenta la leyenda que se alimentaban de raíces de plantas que iban encontrando y de los animales que conseguían cazar cada día. \n
		Su mayor deseo era comer maíz, pero no podían porque crecía escondido detrás de unas altas y escarpadas montañas, imposibles de atravesar. \n
		Un día, pidieron ayuda a varios dioses y éstos, deseando prestar ayuda a los humanos, probaron a separar las gigantescas montañas para que pudieran pasar y llegar hasta el maíz. No sirvió de nada, pues ni los dioses, utilizando toda la fuerza que tenían, lograron moverlas. \n
		Pasó el tiempo y, estaban tan desesperados, que suplicaron al gran dios Quetzalcóatl que hiciera algo. Necesitaban el maíz para hacer harina, y con ella poder fabricar pan. El dios se comprometió a echarles una mano, pues su poder era inmenso. '),
	(40,'A diferencia de los otros dioses,  Quetzalcóatl no quiso probar con la fuerza, sino con el ingenio. Como era un dios muy inteligente, decidió transformarse en una pequeña hormiga negra. Nadie, ni hombres ni mujeres, ni niños ni ancianos, comprendían para qué se había convertido en ese pequeño insecto. \n
		Sin perder tiempo, invitó  a una hormiga roja a acompañarle en la dura travesía de cruzar las altas montañas. Durante días y con mucho esfuerzo, las dos hormiguitas subieron juntas por la dura pendiente hasta llegar a la cumbre nevada. Una vez allí, iniciaron la bajada para pasar al otro lado. Fue un camino muy largo y llegaron agotadas a su destino, pero mereció la pena ¡Allí estaban las doradas mazorcas de maíz que su pueblo tanto deseaba!'),
	(40,'Se acercaron a la que parecía más apetitosa y de ella, extrajeron uno de sus granos amarillos. Entre las dos, iniciaron el camino de regreso con el granito de maíz bien sujeto entre  sus pequeñas mandíbulas. Si antes el camino había sido fatigoso, la vuelta lo era mucho más. La carga les pesaba muchísimo y sus patitas se doblaban a cada paso, pero por nada del mundo podían perder ese granito del color del sol. \n
		Los aztecas recibieron entusiasmados a las hormigas, que llegaron casi arrastrándose y sin aliento ¡Qué admirados se quedaron cuando vieron que lo habían conseguido!'),
	(40,'La hormiga negra, que en realidad era el gran dios, agradeció a la hormiga roja el haberle ayudado y prometió que sería generoso con ella. Después entregó el grano de maíz a los aztecas, que corrieron a plantarlo con mucho mimo. De él salió, en poco tiempo, la primera planta de maíz y, de esa planta, muchas otras que en pocos meses poblaron los campos. \n
		A partir de entonces, los aztecas hicieron pan para alimentar a sus hijos, que crecieron sanos y fuertes. En agradecimiento a Quetzalcóatl comenzaron a adorarle y se convirtió en su dios más amado para el resto de los tiempos')

INSERT INTO Question(IdContent,Text)
	VALUES
	(40,'¿En qué época se desarrolla la historia?'),
	(40,'¿A qué civilización pertenecían los protagonistas de la historia?'),
	(40,'¿Cuál era el mayor deseo de los aztecas?'),
	(40,'¿A que dios le suplicaron los aztecas?'),
	(40,'¿En qué se convirtió Quetzalcóatl?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(200,1, 'Antes del descubrimiento de América'),
	(200,0, 'Después del descubrimiento de América'),
	(200,0, 'En el futuro'),
	(200,0, 'En el año 2020'),

	(201,1, 'Aztecas'),
	(201,0, 'Mayas'),
	(201,0, 'Olmecas'),
	(201,0, 'Mexicas'),

	(202,0, 'Salud para todos'),
	(202,0, 'Tener mucho oro'),
	(202,1, 'Comer maíz'),
	(202,0, 'Tener mucha comida'),

	(203,0, 'Tlaloc'),
	(203,0, 'Huitzilopochtli'),
	(203,0, 'Coatlicue'),
	(203,1, 'Quetzalcóatl'),

	(204,0, 'En una hormiga roja'),
	(204,1, 'En una hormiga negra'),
	(204,0, 'En una serpiente'),
	(204,0, 'En un aguila')



	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Catetegoria historicos
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	INSERT INTO Content(IdTypeContent, Status, Title) VALUES(9, 1, 'Charles Darwin y la evolución de las especies')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(41,'El pez de Lorena se llamaba Darwin. En realidad, el nombre se lo había puesto su hermana mayor, que estudiaba Biología. Lorena nunca se había parado a pesar en la razón. Hasta que un día decidió investigar y descubrió lo siguiente. \n
		Charles Robert Darwin nació en 1809 en Inglaterra y tenía 4 hermanos. Su padre y su abuelo eran médicos muy famosos y ambos influyeron mucho en sus teorías posteriores. Aunque no era muy buen estudiante, en 1825 Darwin fue a la Universidad de Edimburgo en Escocia a estudiar Medicina, aunque acabó por abandonar. Finalmente se licenció en Botánica, la ciencia que estudia las plantas.'),
	(41,'De hecho finalmente se convirtió en un importante naturalista. Darwin estudió muchas plantas y animales diferentes y recolectó muchos especímenes, investigando sobre su ubicación y hábitos de vida. Se dio cuenta de que ciertos tipos de organismos existían solo en algunas áreas y que muchos habían sufrido cambios para poder sobrevivir en determinados entornos. \n
		Darwin escribió breves relatos sobre la evolución de las especies y sus cambios y mejoras. En 1859, publicó el trabajo Sobre el origen de las especies mediante la selección natural. Entre otras cosas, sostenía que los rasgos de las especies suelen ser heredables, es decir, que pasan de padres a hijos. No solamente rasgos como el color, el tamaño o la forma de las patas, sino también la forma de defenderse de los depredadores o de buscar comida.'),
	(41,'Pensaba que, en su lucha por la supervivencia, algunos organismos se adaptaban mejor que otros a su entorno y así las especies evolucionaban. Su obra más famosa es El origen de las especies. Darwin hablaba de la supervivencia del más apto. \n
		El libro atrajo la atención mundial y hoy sigue siendo un importante referente. De hecho, el “darwinismo”​ es un término que describe las ideas de Charles Darwin, en relación a la evolución biológica por selección natural. Sin embargo, el darwinismo no es sinónimo de evolucionismo ya que la teoría de la evolución no se reduce solo a las ideas postuladas por Charles Darwin.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(41,'¿En qué país nació Charles Robert Darwin?'),
	(41,'¿De qué se graduó Charles Robert Darwin? '),
	(41,'¿De que hablaba El origen de las especies publicado por Charles Robert Darwin? '),
	(41,'¿Qué termino es el que describe las ideas de Charles Robert Darwin? '),
	(41,'¿Cómo se llamaba el pez de Lorena?  ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	
	(205,0, 'Australia'),
	(205,0, 'Honda'),
	(205,1, 'Inglaterra'),
	(205,0, 'México'),

	(206,1, 'Botánica'),
	(206,0, 'Historiador'),
	(206,0, 'Medico'),
	(206,0, 'Arquitecto'),

	(207,0, 'De la alimentación de las especies'),
	(207,0, 'La variedad de flora y fauna'),
	(207,1, 'Los rasgos de las especies suelen ser heredables'),
	(207,0, 'Donde aparecieron los primeros seres humanos'),

	(208,1, 'Darwinismo'),
	(208,0, 'Neoclásico'),
	(208,0, 'Charwinismo'),
	(208,0, 'Neowinismo'),
	
	(209,0, 'Charles'),
	(209,0, 'Carlos'),
	(209,0, 'Gari'),
	(209,1, 'Darwin')


INSERT INTO Content(IdTypeContent, Status, Title) VALUES(9, 1, 'Cómo se descubrió el fuego')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(42,'Aunque sabía que siempre había que tener mucho cuidado, a Lolo le encantaba todo lo relacionado con el fuego. Las cerillas, los mecheros, la chimenea de su casa del pueblo… Un día, intrigado, se dispuso a leer sobre cómo se descubrió el fuego, el primer gran invento de la Humanidad. \n
		El fuego existe desde hace más de 5 millones de años y gracias a su descubrimiento se hicieron un montón de avances que mejoraron la vida de las personas. Pero Lolo seguía haciéndose la misma pregunta: ¿cómo se descubrió el fuego? ¿Quién lo hizo? La verdad es que los investigadores y los restos arqueológicos indican que la especie humana Homo Erectus conocía el fuego hace ya 1.600.000 años.'),
	(42,'Estos hombres primitivos sabían utilizar el fuego, pero no sabían cómo encenderlo. Poco a poco fueron apareciendo técnicas para generarlo y mantenerlo. Para tareas tan importantes como cocinar alimentos o combatir el frío. Hay teorías que dicen que una persona vio el fuego por primera vez por un rayo de tormenta que incendió un montón de hierba seca. \n
		Después se logró generar fuego. El primer método fue frotar un palo con madera seca. Se hizo también raspando rápidamente dos piedras o rozando una cuerda contra una madera. \n
		Lo siguiente que se intentó fue transportar el fuego. Se hizo usando antorchas. Como decimos, el principal uso del fuego fue el de mantenernos calientes y cocinar.'),
	(42,'Nuestros antepasados se dieron cuenta de que la carne duraba más si se cocinaba. Además se logró la eliminación de gérmenes cocinándola antes de comerla.El fuego también empezó a usarse como elemento de defensa. Aportó además otros beneficios como la iluminación en las cuevas oscuras donde dormían los homínidos en la Antigüedad. Además, si algún depredador se acercaba por la noche, el fuego lo ahuyentaba. \n
		Con el paso del tiempo, la mandíbula fue evolucionando y menguando poco a poco porque, como la carne estaba cocinada, había que hacer menos fuerza para masticar. De este modo, al ser la mandíbula más pequeña, quedó más espacio para el cerebro y los homínidos fueron haciéndose poco a poco más inteligentes.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(42,'¿Cuál fue el primer gran invento de la humanidad? '),
	(42,'¿Hace cuánto que existe el fuego? '),
	(42,'¿Cuál fue el primer método para generar fuego? '),
	(42,'¿Para que utilizaban los primeros seres humanos el fuego? ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(210,0, 'El fierro'),
	(210,0, 'La comida cocinada'),
	(210,0, 'La rueda'),
	(210,1, 'El fuego'),

	(211,1, 'Hace más de 5 millones de años'),
	(211,0, 'Hace unos años'),
	(211,0, 'Aún no existe'),
	(211,0, 'Hace 100 años'),

	(212,0, 'Con un rayo'),
	(212,1, 'Frotar un palo con madera seca'),
	(212,0, 'Con cerillos'),
	(212,0, 'Con un encendedor'),

	(213,0, 'Hacer grandes fogatas'),
	(213,0, 'Para ver en la noche'),
	(213,1, 'Calientes y cocinar.'),
	(213,0, 'Ninguna de las anteriores')

		INSERT INTO Content(IdTypeContent, Status, Title) VALUES(9, 1, 'Conociendo a Napoleón Bonaparte')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(43,'En este nuevo cuento vamos a conocer un poco a uno de los personajes más importantes de la historia de Europa y del mundo: Napoleón Bonaparte. \n
		Napoleón nació el 15 de agosto de 1769 en Córcega (Francia) en una familia de 8 hermanos. Desde pequeño le gustaron muchos las matemáticas y, gracias a su habilidad con los números, pudo ingresar en una importante escuela militar. A los 17 años le nombraron subteniente. Al tiempo, fue enviado a Italia para luchar contra los austriacos y los piamonteses. A pesar de que el ejército con el que contaba era muy malo, las cualidades militares de Napoleón le permitieron rápidamente ir ganando territorios en Italia. Fue organizando la política de la península italiana según sus propios criterios porque no le solía gustar contar con las opiniones de los demás, sino hacer las cosas a su manera y dando órdenes.'),
	(43,'Años más tarde, Napoleón Bonaparte empezó a ser más conocido como militar, sobre todo durante la Revolución Francesa que comenzó en París en 1789. En aquella época, la mayor parte de los franceses vivían en la pobreza y no tenían libertad para decidir quién les gobernaba. Pero el rey, la iglesia y los nobles acumulaban grandes riquezas y privilegios y organizaban lujosas fiestas y bailes en palacios. Al final, los ciudadanos se cansaron y se lanzaron a la calle el 14 de julio de 1789. \n
		Durante la época de la Revolución Francesa, un hombre llamado Robespierre ayudó mucho a Napoleón. En estos años también conoció a la que sería su esposa: Josefina. Poco a poco fue logrando objetivos y convirtiéndose en un maestro de la estrategia militar.'),
	(43,'Diez años después del comienzo de la Revolución Francesa, Napoleón se nombró a sí mismo emperador de Francia. Su ambición lo llevó a conquistar varios países de Europa siempre haciendo uso de las armas. Sin embargo, fracasó a la hora de conquistar Rusia y España. Napoleón trató de bloquear las rutas y puertos comerciales de los británicos invadiendo Portugal. No lo logró y además perdió a gran parte de su ejército en el intento. En 1812, las tropas rusas del zar Alejandro I, sumadas al frío y al hambre, acabaron con el ejército napoleónico. Toda Europa, cansada ya de tanta guerra, se levantó entonces contra el emperador Napoleón. \n
		Durante la batalla de Waterloo fue vencido por los ingleses y sus aliados. Acabó entregándose y fue encerrado para siempre en una cárcel en una isla en pleno Océano Atlántico. Fue enterrado en un edificio de París que se llama Los Inválidos.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(43,'¿En qué país nació Napoleón? '),
	(43,'¿A qué edad fue nombrado subteniente? '),
	(43,'¿Cuál era el segundo apellido de Napoleón? '),
	(43,'¿Cuál es el nombre de la esposa de Napoleón? '),
	(43,'¿Cómo se llamó así mismo Napoleón? ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(214,0, 'Inglaterra'),
	(214,0, 'España'),
	(214,1, 'Francia'),
	(214,0, 'Rusia'),

	(215,0, '60 años'),
	(215,0, '30 años'),
	(215,0, 'Nunca fue teniente'),
	(215,1, '17 años'),

	(216,1, 'Bonaparte'),
	(216,0, 'Venamires'),
	(216,0, 'Iturbide'),
	(216,0, 'Carrasco'),

	(217,0, 'María'),
	(217,1, 'Josefina'),
	(217,0, 'Marisol'),
	(217,0, 'Elizabeth'),

	(218,0, 'Emperador de Francia'),
	(218,1, 'Centauro del norte'),
	(218,0, 'Sultán de Europa'),
	(218,0, 'Rey de Norte')
	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(9, 1, 'La batalla de Maratón')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(44,'Los padres de Luna eran muy aficionados a las maratones. Se preparaban a conciencia durante todo el año para poder correr una cada mes de enero con los compañeros de su club de atletismo. Un día, intrigada, Luna quiso saber por qué se llamaba así a esas carreras, de dónde venía el término “maratón”. Así que se fue a la biblioteca y se puso a investigar. \n
		La bibliotecaria le recomendó un libro en que se narraba la batalla de Maratón. Luna leyó que esta tuvo lugar entre los griegos y persas en Maratón, una gran llanura a 40 kilómetros al noreste de Atenas, en Grecia. Se libró entre las fuerzas griegas y sus aliados bajo el mando de Milcíades. Por su parte, a las fuerzas persas las dirigía Darío I y dos comandantes: Datis y Artafernes.'),
	(44,'La victoria de los griegos sobre los persas fue muy importante para la evolución de la historia militar griega. De hecho, esta batalla en la llanura de Maratón fue el fin de la invasión persa y permitió a los griegos convertirse en una potencia militar dominante en el Mediterráneo. \n
		Pero, ¿cómo fue la batalla? Luna leyó que, durante varios días, los griegos y persas lucharon en los más de 3.200 metros de la amplia llanura de Maratón. En una mañana, a mediados de septiembre del 490 a. C, los griegos se dieron cuenta de que la caballería persa ya no estaba en la llanura. Milcíades ordenó por lo tanto un ataque general contra la infantería persa. Los griegos iban armados con cascos, armaduras pesadas, escudos, lanzas y espadas. Milcíades dirigió a 10.000 atenienses a la victoria frente a 20.000 persas. Cuando vieron que iban a perder, las tropas persas comenzaron a correr hacia sus barcos de guerra.'),
	(44,'La batalla puso de manifiesto la superioridad griega. De todas formas. estos también se aprovecharon del armamento ligero de los persas y de sus débiles armaduras. \n
		Según cuenta la leyenda, un mensajero ateniense fue enviado desde Maratón hasta Atenas para anunciar la victoria griega. Corrió los 40 kilómetros que separan la llanura de la capital griega. Al llegar, anunció la victoria de su ejército y después murió por agotamiento. Por eso ahora, a esas carreras que corren los padres de Luna y mucha más gente se las llama maratones.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(44,'¿Quiénes eran los involucrados en la batalla de maratón? '),
	(44,'¿Que era maratón en el libro? '),
	(44,'¿Qué ejercito fue el ganador en dicha batalla? '),
	(44,'¿Qué noticia lleva a Grecia el mensajero? '),
	(44,'¿Cuantos kilómetros recorrió el mensajero para poder llevar la noticia a Grecia?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(219,0, 'Los romanos y persas'),
	(219,1, 'Los griegos y persas '),
	(219,0, 'Trollanos y holandeses'),
	(219,0, 'Eguito y griegos'),

	(220,1, 'Una gran llanura'),
	(220,0, 'Un lago'),
	(220,0, 'Una montaña'),
	(220,0, 'Un bosque'),

	(221,0, 'Los persas'),
	(221,0, 'Los hindúes'),
	(221,1, 'Los griegos'),
	(221,0, 'Los romanos'),

	(222,0, 'La derrota de Grecia'),
	(222,0, 'La victoria de los persas'),
	(222,0, 'Ninguna de las anteriores'),
	(222,1, 'La victoria de los griegos'),

	(223,0, '100 kilómetros'),
	(223,1, '40 kilómetros'),
	(223,0, '10 kilómetros'),
	(223,0, '20 kilómetros')
		

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(9, 1, 'La historia del rey Midas')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(45,'Midas era un rey que vivía en Frigia, un país en el que nadie pasaba hambre. Los árboles siempre estaban cargados de fruta, el ganado estaba sano y las personas tenían una vida tranquila disfrutando de todo lo que les daba la tierra. \n
		Sin embargo, al contrario que sus súbditos, el rey Midas era muy avaricioso y siempre deseaba más, a pesar de ser ya inmensamente rico. Aunque tuviera el palacio lleno de riquezas y lujos, siempre le parecía poco y soñaba con que su riqueza creciese hasta el infinito. \n
		Un día apareció en  Dionisos, el dios del vino y de la fiesta. Él y sus acompañantes se pasaban el día de bailando, cantando y bebiendo vino. Se quedaban dormidos en sitios super extraños porque al final acababan perdiendo la noción del tiempo. Un día, uno de los amigos de Dionisos, Sileno, se separó del grupo y se quedó dormido bajo un rosal en el jardín del rey Midas.'),
	(45,'Por la mañana, un jardinero le encontró y le condujo ante el rey. Midas, que era un muy buen anfitrión, le acogió en su palacio durante diez días. Cuando pasó ese tiempo y Sileno volvió junto al dios Dionisio, este quiso agradecer a Midas lo bien que había tratado a su amigo. Por eso, fue en busca del rey y le dijo: \n
		-En agradecimiento por haber sido tan hospitalario con mi amigo, te concedo el don que quieras. \n
		Midas llegó a la conclusión de que, aunque fuera muy rico, había un don que siempre había deseado poseer: convertir en oro todo lo que tocase. \n
		Muy feliz con su nuevo don, Midas se fue al jardín a probarlo. Tocó una roca y esta se convirtió en oro. Luego hizo lo mismo con una rosa. Pensó que era el hombre más afortunado del mundo.'),
	(45,'Sin embargo, la emoción le duró poco. Midas tenía un perro al que quería mucho. Un día que el animal se acercó a su amo y este le dio una caricia, se convirtió en oro. Al tiempo, a la hija de Midas, tras abrazar al rey también le pasó lo mismo. Fue entonces cuando Midas empezó a lamentarse por haber pedido eso al dios Dionisos. Además dejó de poder comer y beber porque todo alimento que tocaba se convertía en oro. Desesperado, fue a ver a Dionisos y le rogó: \n
		-Por favor, quítame el don que me diste. \n
		Dionisos le dijo que tenía que bañarse en la fuente del río Pactolo y hacer lo mismo con su hija para que la joven volviese a la vida. Así lo hizo y Midas consiguió salvar su vida y aprendió que la avaricia nunca trae nada bueno.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(45,'¿Cuál fue el deseo de Midas? '),
	(45,'¿Cómo describe el cuento al rey midas? '),
	(45,'¿Cuál fue la razón por la cual Midas ya no quería el don que le había obsequiado Dionisos? '),
	(45,'¿Cómo se quitó el don, Midas? ')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(224,0, 'Ser el hombre más rico del mundo'),
	(224,1, 'Convertir en oro todo lo que tocase.'),
	(224,0, 'Ser el hombre fuerte del mundo'),
	(224,0, 'Quería ser un dios'),

	(225,1, 'Una persona avaricioso'),
	(225,0, 'Un hombre simpático'),
	(225,0, 'Un hombre alto y fuerte'),
	(225,0, 'Un hombre muy cruel'),

	(226,1, 'Por qué convirtió a su hija en oro'),
	(226,0, 'Le parecía aburrido su don'),
	(226,0, 'Quería otro don'),
	(226,0, 'Quería regalar su don a su hija'),

	(227,0, 'Tomando una Pócima de un hechicero'),
	(227,0, 'Solo desapareció'),
	(227,1, 'Bañándose en la fuente de rico Pactolo'),
	(227,0, 'Ninguna de las anteriores')


--------------------------------------------------------------------------------------------------------------------------------------------------------------
--Categoria de informativos

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(6, 1, 'El elefante')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(46,'El elefante es un animal muy grande que pertenece a los vertebrados mamíferos. Esto quiere decir que tiene un esqueleto con espina dorsal, además de otros huesos en todo el cuerpo, y además que alimenta a sus crías con la leche que produce la hembra.  \n
		Los elefantes viven en Africa y Asia y se conocen tres especies, los africanos, los asiáticos y los elefantes africanos de la sabana. Aunque son similares en su aspecto, varía su tamaño, el tamaño de sus orejas, o el largo de su trompa. Pero en breve, el elefante asiático es más pequeño que el africano.  \n
		Uno de sus rasgos físicos más característicos es su trompa. Esta les ayuda a respirar, llevar agua y alimentos a su boca y levantar objetos. En zonas rurales, muchos elefantes que han sido entrenados por hombre les ayudan an sus labores de tala y recolección de madera. Con sus potentes trompas recogen los troncos y los llevan al aserradero. '),
	(46,'Aunque a los elefantes se les ve en sus ambientes naturales en junglas, sabanas y desiertos, lo cierto es que prefieren estar cerca al agua. Los elefantes son herbívoros, quiere decir esto que solo comen hojas y plantas. \n
		Los elefantes adultos no tienen depredadores, pero los elefantes pequeños pueden ser víctimas de leones, hienas, y tigres. Estos pequeños están cerca a sus madres desde su nacimiento hasta que tienen tres años, y las hembras son las que forman manadas cuidando a otros pequeños. Los machos se alejan de la manada cuando se vuelven adolescentes y suelen vivir de manera solitaria o con otros machos; solo regresan a las manadas para buscar una pareja para poder aparearse. '),
	(46,'Los elefantes pueden vivir hasta 70 años en la naturaleza, y tanto los elefantes africanos como los asiáticos son una especie vulnerable que debemos proteger. Los cazadores de marfil han diezmado los números de estos animales; el marfil es el material del que están hecho los cuernos de los elefantes y es un material muy preciado para algunas culturas.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(46,'¿Que es un elefante?'),
	(46,'¿Cuanto tiempo pueden vivir los elefantes?'),
	(46,'¿Donde viven los elefantes?'),
	(46,'¿Cuantas especie se conocen?'),
	(46,'¿Como se llaman las especies  conocidas?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(228,0, 'Una flor'),
	(228,0, 'Un árbol'),
	(228,0, 'Una roca'),
	(228,1, 'Un animal'),

	(229,0, '50 años'),
	(229,0, '80 años'),
	(229,1, '70 años'),
	(229,0, '100 años'),

	(230,1, 'Africa y asia '),
	(230,0, 'Antártida'),
	(230,0, 'América'),
	(230,0, 'Asia y américa'),

	(231,0, '8'),
	(231,1, '3'),
	(231,0, '6'),
	(231,0, '2'),

	(232,0, 'Los africanos y americanos'),
	(232,1, 'Los africanos, los asiáticos y los elefantes africanos de la sabana.'),
	(232,0, 'Los asiáticos y americanos'),
	(232,0, 'Los africanos y asiáticos')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(6, 1, 'La tierra')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(47,'La tierra es el planeta donde habitan los humanos y los animales, donde hay agua y plantas. Es uno de muchos planetas en el universo, pero es el único en donde, hasta ahora, se sabe hay vida gracias a que su atmósfera y condiciones climáticas, entre otras características, así lo permite.\n
		La tierra es el tercer planeta desde el sol, y gira alrededor de esta durante todo un año, al mismo tiempo que gira sobre su mismo eje. Esto quiere decir que en 365 días, o lo que conocemos como un año, doce meses, la tierra gira al rededor del sol. Esto produce cambios en el clima de los hemisferios a través de a las estaciones (verano, primavera, invierno, otoño), entre otros fenómenos naturales.'),
	(47,'Al mismo tiempo que hace este recorrido, la tierra gira sobre su propio eje en ciclos de 24 horas, o lo que conocemos como un día. Cuando una cara de la tierra está mirando al sol hay luz día en esa parte de la tierra, y esta va disminuyendo (atardecer) a medida que la rotación continúa hasta que se hace noche cuando ya esa cara no está mirando al sol. \n
		En sitios diferentes de la tierra, al mismo tiempo, unas personas tienen luz día mientras otras no. Por ejemplo, si en Nueva York, Estados Unidos, son las 11:00 am en un día de primavera y hay luz sol para salir a jugar, en Tokio en Japón, aunque es primavera también, son las 12 de la media noche y no hay luz sol. \n
		¡En la tierra habitan 7,714,576,923 de personas! Esos son muchos millones de millones de gente como tú y yo. ')


INSERT INTO Question(IdContent,Text)
	VALUES
	(47,'.¿Qué es la tierra?'),
	(47,'.¿Quien habita en la tierra?'),
	(47,'.¿Cuantas estaciones hay en el años?'),
	(47,'.¿Cuáles son las estaciones del año?'),
	(47,'.¿Cuanto tiempo dura la tierra, al dar la vuelta alrededor de sol?')
	

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(233,1, 'Un planeta'),
	(233,0, 'Un meteorito'),
	(233,0, 'Un animal'),
	(233,0, 'Una planta'),

	(234,0, 'Terrícolas'),
	(234,0, 'Zombis'),
	(234,1, 'Humanos y animales'),
	(234,0, 'Marcianos'),

	(235,0, '7'),
	(235,0, '3'),
	(235,0, '6'),
	(235,1, '4'),

	(236,1, 'Verano, primavera, invierno, otoño'),
	(236,0, 'Primera, júpiter, invierno, otoño'),
	(236,0, 'Sol, primavera, invierno, marte'),
	(236,0, 'Verano, primavera , otoño,mercurio'),

	(237,0, '4 años'),
	(237,0, '2 años'),
	(237,1, '1 año'),
	(237,0, '10 años')
	
	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(6, 1, 'Los dientes y la boca')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(48,'Los dientes en tu boca son parte fundamental del proceso digestivo. Gracias a tus dientes puedes masticar todas las comidas por eso debes cuidarlos y prestarles la atención e higiene adecuada. Además, en tu boca está la lengua, el paladar y las encías. \n
		Con la boca puedes hablar, sonreír y hacer gestos que comunican tu estado de ánimo. También puedes respirar a través de la boca.  \n
		El paladar es duro en la parte delantera y separa a la boca de la cavidad nasal que está arriba; el paladar blando está atrás y se cierra cuando deglutes para evitar que de devuelva comida a la nariz. En el paladar blando está la campanilla y a los lados de estas las amígdalas (que son unas membranas que se pueden inflamar y que en algunos casos se deben operar para extraerlas).'),
	(48,'En la lengua, que es un músculo, están las papilas gustativas que te ayudan a percibir el sabor de las comidas. En la boca también están las glándulas salivares, que secretan la saliva que mantiene tu boca mojada y ayuda a mojar la comida que consumes y formar el bolo alimenticio.  \n
		Los dientes están hechos de cuatro tipos de tejido, pulpa, dentina, cemento y esmalte. En la boca de un adulto hay 32 dientes, y en la boca de un niño hay 20. Alrededor de los seis años de edad, un poco después para algunos, los niños y niñas comienzan a perder los dientes de bebé y estos son reemplazados por los dientes de adultos. \n
		Los dientes se dividen en incisivos, caninos, premolares y molares. No todo el mundo tiene las así llamadas "muelas del juicio" que salen en la parte más trasera de los molares y que a veces causan mucho dolor y por lo tanto deben ser extraídos por un médico. ')


INSERT INTO Question(IdContent,Text)
	VALUES
	(48,'¿Qué función tienen los dientes? '),
	(48,'¿Qué se puede hacer con la boca además de '),
	(48,'¿Cuantos dientes tiene una la boca un adulto?'),
	(48,'¿Cuantos dientes tiene una la boca un niño?'),
	(48,'¿A qué edad promedio se comienza perder los dientes de bebe y son remplazados por dientes de adultos?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(238,0, 'Reír'),
	(238,0, 'Morder'),
	(238,1, 'Masticar los alimentos'),
	(238,0, 'Ninguna de las anteriores'),

	(239,0, 'Morder'),
	(239,0, 'Masticar los alimentos'),
	(239,0, 'Ninguna de las anteriores'),
	(239,1, 'Hablar '),

	(240,0, '16'),
	(240,0, '36'),
	(240,1, '32'),
	(240,0, '26'),

	(241,0, '16'),
	(241,0, '12'),
	(241,0, '8'),
	(241,1, '20'),

	(242,0, '12 años de edad'),
	(242,1, '6 años de edad'),
	(242,0, '4 años de edad'),
	(242,0, '9 años de edad')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(6, 1, 'Los girasoles')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(49,' El girasol  es una planta que se renueva    cada año y puede alcanzar un tamaño de entre un 1 y 3 metros. Este pertenece a la familia de las Asteráceas esta la cual está compuesta por entre 20,00 y 30,000 especímenes. \n
		Los girasoles tienen tallos largos y  poseen pelos toscos.  En tanto las cabezuelas están compuestas de diversas flores sésiles amarillas en forma de copa. \n
		Es una planta que posee mucha habilidad para crecer en una gran gama de ambientes, además cuenta con mucha resistencias la sequías. Razones como estas hacen que los girasoles sean tratados como maleza, sin embargo, estas características le proporcionan la oportunidad de habitar en gran cantidad de sitios.'),
	(49,'El girasol habita principalmente en Norteamérica pero gracias a la gran adaptabilidad de la planta y a que es utilizada para usos ornamentales y alimenticios, esta ha podido extenderse alrededor del mundo. En la actualidad podemos encontrar girasoles en China, Bolivia, Argentina, España, Francia, México, Perú y Rusia.  \n
		Origen de los girasoles \n
		Los girasoles son originarios del norte de México y el oeste de Estados unidos, en donde eran cultivados por los indígenas hace aproximadamente unos 3000 a.C. \n
		El origen de la palabra girasol es la combinación de la palabra “gira” y “sol” usada para referirse a la planta que gira siguiendo.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(49,'¿qué son los girasoles?'),
	(49,'¿de qué color son los girasoles?'),
	(49,'¿cuál es el origen de los girasoles?'),
	(49,'¿qué tamaño pueden alcanzar los girasoles?'),
	(49,'¿cómo son los tallos de los girasoles?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(243,0, 'Son  animales'),
	(243,0, 'Son  rocas'),
	(243,0, 'Son casa'),
	(243,1, 'Son una planta'),

	(244,1, 'Amarillas'),
	(244,0, 'Verdes'),
	(244,0, 'Azules'),
	(244,0, 'Rojas'),

	(245,1, 'Son originarios del norte de México y el oeste de Estados unidos'),
	(245,0, 'Son originarios del norte'),
	(245,0, 'Son originarios del sur'),
	(245,0, 'Son originario oeste'),

	(246,0, '2 y 6 metros'),
	(246,1, '1 y 3 metros'),
	(246,0, '3 y 7 metros'),
	(246,0, '5 y 6 metros'),

	(247,0, 'Cortos'),
	(247,1, 'Largos'),
	(247,0, 'Medianos'),
	(247,0, 'Pequeños')


	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(6, 1, 'Los insectos')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(50,'Los insectos están en todas partes. Piensa por un momento que esta especie compone el 90% de la vida que hay en el planeta. Para que te hagas una idea, sería como decir que por cada persona que hay en el mundo hay más o menos 200 millones de insectos. \n
		Cuando sales al jardín o vas a la playa, estás en la montaña o vas a una jungla, ahí hay insectos. Los especialistas que estudian insectos se llaman entomólogos. \n
		Estos son animales invertebrados, quiere decir eso que no tienen un esqueleto articulado, ni huesos en el cuerpo, como tu o tus amigos. Los insectos tienen antenas, tres pares de patas y dos pares de alas. La mayoría de insectos son muy pequeños, desde menos de medio centímetro hasta tres centímetros de longitud.  '),
	(50,'Los insectos pueden ser herbívoros, y comer solo plantas, o pueden ser carnívoros y comer otros animales. Hay otros que son carroñeros, quiere decir que comen carroña, o los restos de animales que fueron cazados por otros animales. \n
		Los insectos cumplen papeles muy importantes en nuestro ecosistema y no son solo los molestos mosquitos que te pican en verano. Los insectos ayudan a polinizar, quiere decir que llevan polen a las plantas para que estas germinen o produzcan semillas. También, como comen otros insectos, ayudan a controlar plagas. Aún así, también pueden hacer daño a nuestras cosechas y arruinar muchas de estas cuando hay plagas. \n
		No se sabe con certeza cuántas especies de insectos hay pero se estima que pueden ser más de un millón.')
	


INSERT INTO Question(IdContent,Text)
	VALUES
	(50,'¿Como se llaman los especialistas que estudian los insectos? '),
	(50,'¿Cómo se llaman los insectos que comen plantas? '),
	(50,'¿Cómo se llaman los insectos que comen carne? '),
	(50,'¿Cómo se llaman los insectos que comen restos de oreos animales cazados por otros '),
	(50,'¿Es verdad que los insectos ayudan a polinizar? ')
	

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(248,1, 'Entomologos'),
	(248,0, 'Dentistas'),
	(248,0, 'Medicos'),
	(248,0, 'Arqueologo'),

	(249,1, 'Herbívoros'),
	(249,0, 'Carnívoros'),
	(249,0, 'Carroñeros'),
	(249,0, 'Omnívoro'),

	(250,0, 'Herbívoros'),
	(250,1, 'Carnívoros'),
	(250,0, 'Carroñeros'),
	(250,0, 'Omnívoro'),

	(251,0, 'Herbívoros'),
	(251,0, 'Carnívoros'),
	(251,1, 'Carroñeros'),
	(251,0, 'Omnívoro'),

	(252,0, 'No'),
	(252,1, 'Si')





--------------------------------------------------------------------------------------------------------------------------------------------------------------
--Categoria de Valores

--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(10, 1, 'El amor y el criado')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(51,'En un pueblo de América Latina, en una gran casa con jardín, vivía un hombre solitario al que sólo le gustaba la compañía de su viejo criado. \n
		El sirviente llevaba muchos años a su servicio y se encargaba de todos los quehaceres para que el hogar estuviera siempre limpio y ordenado. Cada mañana se levantaba antes del amanecer para hacer las camas, quitar el polvo y tener listo el desayuno a primerísima hora.  No había nadie más profesional, servicial y educado que él, y por eso, el señor de la casa le respetaba y apreciaba mucho. \n
		Un día este hombre, que dirigía una empresa y siempre estaba muy ocupado, llegó a casa muy alterado.'),
	(51,'– ¡Estoy enfadadísimo! Toda la mañana en reuniones de trabajo y no ha servido para nada ¡Estoy rodeado de holgazanes que no tienen dos dedos de frente! \n
		El criado, que tenía confianza con él, intentó quitarle hierro al asunto para que se apaciguara. \n
		– Tranquilo que ya verá cómo el problema no es tan grave y tiene solución. Me disgusta que  regrese de la oficina así de disgustado ¡Se ha puesto tan colorado que parece que va a explotar! \n
		Pero él seguía echando chispas, agitando las manos y gritando como un descosido. \n
		– ¡No puedo, no puedo! ¡Encima llevo seis horas sin comer y estoy hambriento! ¡Sírveme la comida ahora mismo porque si no me voy a desmayar! \n
		El criado asintió con la cabeza y se alejó hacia la cocina con paso presuroso. Dos minutos después regresó al comedor con un gran plato de sopa entre las manos.'),
	(51,'– Aquí tiene una deliciosa sopa de verduras, su favorita. Ande, tómesela, ya verá qué bien le sienta. \n
		El caballero se sentó a la mesa, se ató una servilleta de lunares al cuello y metió la cuchara en la sopa. En cuanto la probó… \n
		– ¡Puaj, qué asco de sopa! ¡Esto es incomible! No tiene ni pizca de sal y encima  ¡está helada! \n
		Fue la gota que colmó el vaso; se levantó y en un arrebato de furia, agarró el plato y lo lanzó por la ventana. \n
		En un primer momento el criado no supo qué pensar ni qué hacer, pero enseguida reaccionó;  En silencio se acercó a la mesa, cogió el pan, el vino, la servilleta, los cubiertos y el mantel, y también los lanzó por la ventana con tantas ganas que atravesaron medio jardín. \n
		Los gritos del señor retumbaron por toda la casa.'),
	(51,'– ¡¿Pero qué haces, inútil?!  ¿Cómo te atreves a tirar mis pertenencias?  ¿Quién te crees que eres? \n
		El criado, sin perder la calma, le miró a los ojos y respondió: \n
		– Perdone, señor, pero no pretendía hacer nada incorrecto. Como tiró la sopa por la ventana di por hecho que quería cenar en el jardín, así que acabo de hacer lo mismo que usted: he lanzado todo lo necesario para que disfrute de la comida bajo los árboles. Afuera tiene el pan, el vino, la servilleta, los cubiertos y el mantel a su disposición.'),
	(51,'El amo se sintió muy avergonzado porque sabía que su criado y viejo amigo sólo quería demostrarle lo feo que había sido su comportamiento. \n
		– Lo siento, lo siento mucho…  Por culpa de los nervios me he comportado como un ser irracional, maleducado y lleno de soberbia.  Espero que sepas perdonarme. \n
		El criado sonrió satisfecho y se acercó a darle un abrazo. Entre ellos jamás volvió a producirse una situación desagradable y continuaron respetándose el resto de sus vidas.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(51,'¿Cómo era la  relación tenía el amo y el criado??'),
	(51,'¿Qué quería el criado?'),
	(51,'¿cómo se sintió el amo al haberse comportado de esa manera?'),
	(51,'¿Que le pedía el criado al amo?'),
	(51,'¿Que prometió el amo?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(253,1, 'Buena'),
	(253,0, 'Mala'),
	(253,0, 'Regular'),
	(253,0, 'Excelente'),

	(254,0, 'Responsabilidad'),
	(254,0, 'Honradez'),
	(254,1, 'Humildad'),
	(254,0, 'Respeto'),

	(255,1, 'Se sintió avergonzado'),
	(255,0, 'Se sintió feliz'),
	(255,0, 'Se sintió triste'),
	(255,0, 'Se sintió enojado'),

	(256,0, 'Que se comportara'),
	(256,1, 'Que se tranquilizara'),
	(256,0, 'Que comiera'),
	(256,0, 'Que tomara vino'),

	(257,1, 'Que nunca se comportaría de esa manera'),
	(257,0, 'Que siempre lo haría'),
	(257,0, 'Que se tranquilizara '),
	(257,0, 'Que  lo iba a pensar antes de hacerlo')

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(10, 1, 'El pajarito remendado')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(52,'En un recóndito bosque cientos de pajaritos diferentes entonaban cada día sus más lindas melodías. Los había de toda clase y condición. Algunos, por ejemplo,  tenían el trino grave y elegante, mientras que otros cantaban en un tono tan dulce como el de un flautín. También había mucha variedad según el color: pajaritos marrones, pajaritos blanquiazules, pajaritos verdes con el pico moteado… \n
		Entre ellos había uno que era muy popular porque había tenido la suerte de nacer con un plumaje espectacular, con más colores que el mismísimo arco iris. Era el pájaro más bello, pero también el que más envidias despertaba. \n
		Un día, una urraca negra que se moría de celos, le gritó con su característica voz rota y desagradable:'),
	(52,'– ¡Cra cre cri, Pajarito Remendado, cri cro cru! ¡Cra cre cri, Pajarito Remendado, cri cro cru! \n
		El pajarito ni la miró, pero la urraca siguió burlándose de él. \n
		– A partir de ahora te llamaré Pajarito Remendado ¿sabes por qué?…  Pues porque tienes una pluma de cada color y parece que llevas un traje viejo lleno de remiendos ¡Cri cro cru! \n
		Al pajarito no le importó y con el mote de Pajarito Remendado se quedó. \n
		Una mañana de sol, Pajarito Remendado se posó en la rama de uno de los árboles más altos del bosque. Estaba cantando alegremente cuando, de repente, un águila siniestra planeó sobre él, lo agarró por sorpresa con su fuerte pico y se lo llevó volando.'),
	(52,'El pobre Pajarito Remendado sintió cómo suelo se alejaba y se difuminaba cada vez más. Temblaba como un flan y pensaba que era el fin de su vida. \n
		– ¡Oh, no! Me temo que esta noche las crías del águila van a cenar un suculento pajarillo de colores… ¡Y yo soy esa cena! \n
		Mientras tanto abajo en el bosque se montó un tremendo revuelo. Todos los pajaritos, que apreciaban mucho a Pajarito Remendado,  comenzaron a chillar y a llorar cuando vieron que el águila se llevaba a su querido amigo. \n
		– ¡El águila ha raptado a Pajarito Remendado! \n
		– ¡Tenemos que hacer algo! \n
		– ¡Pobre Pajarito Remendado, no se lo merece!'),
	(52,'– ¡Conseguiremos que esa ladrona lo libere! \n
		Pajarito Remendado, que tenía muy buen oído, escuchaba los llantos desesperados de sus amigos mientras notaba la insoportable presión del pico del águila sobre su frágil cuerpecillo. Le quedaba poco tiempo y tenía que encontrar una manera rápida y eficaz de zafarse de la situación ¡Era cuestión de vida o muerte! \n
		Pensó a toda velocidad y se dio cuenta de algo muy importante: la única oportunidad que tenía de salvar su vida era consiguiendo que el águila abriera el pico, así que fue a por todas. \n
		– Señora águila ¿está oyendo lo que dicen esos pájaros ahí abajo? ¡La están insultando! ¡La están llamando ladrona! ¿Acaso no va a contestarles? \n'),
	(52,'El águila siguió batiendo las alas haciendo como que no escuchaba los abucheos. \n
		– ¡Devuélvenos a nuestro amigo! \n
		– ¡Esto es vergonzoso! ¡Abusadora! \n
		– ¡Maldita águila, suéltalo de una vez! \n
		Pajarito Remendado se iba quedando sin fuerzas y poco faltaba para llegar al nido donde  esperaban los aguiluchos hambrientos ¡Tenía que seguir intentándolo! \n
		– Señora águila… ¿No los oye? ¡Pero dígales algo! Si yo fuera la reina de las aves no consentiría que me insultaran ¡Por favor, hágase valer! \n
		Ahora sí que el águila se sintió herida en su orgullo ¡Ella era la reina del cielo, la más respetada y admirada de todas las aves del mundo y no podía consentir que la criticaran! '),
	(52,'Su paciencia se terminó. Harta de insultos y de que la llamaran de todo menos bonita, pegó un grito que hizo temblar a las nubes: \n
		– ¡Idos a freír espárragos y meteos en vuestros asuntos, panda de cotillas! ¡Yo soy el águila real y hago lo que me da la real gana! \n
		¡El águila cayó en la trampa! Para responder la muy insensata abrió el pico y Pajarito Remendado quedó libre. \n
		Durante unos segundos el frágil pajarillo se balanceó  a merced del viento pero enseguida  se enderezó, abrió sus alitas y voló hacia dónde estaban sus amigos, que emocionados, corrieron a abrazarlo. '),
	(52,'Pajarito Remendado había conseguido salvarse gracias a su ingenio y ahora estaba de nuevo con sus compañeros del bosque, riéndose y cantando como siempre. \n 
		A partir de ese día Pajarito Remendado no sólo fue famoso por su plumaje de mil colores  y por su peculiar mote, sino también por su valentía y capacidad para salir de situaciones difíciles. \n')
	


INSERT INTO Question(IdContent,Text)
	VALUES
	(52,'¿Que sentían  la urraca por el pajarito que tenía un plumaje espectacular?'),
	(52,'¿Quien se burlaba del pajarito?'),
	(52,'¿Como le llamó la urraca al pajarito?'),
	(52,'¿Por que  la urraca le puso sobrenombre al pajarito?'),
	(52,'¿Que era lo que le  tenía el pajarito  hacia la urraca?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(258,1, 'Envidia'),
	(258,0, 'Amor'),
	(258,0, 'Celos'),
	(258,0, 'Empatía'),

	(259,0, 'El perro'),
	(259,1, 'La urraca'),
	(259,0, 'El gato'),
	(259,0, 'El elefante'),

	(260,0, 'Pajaro loco'),
	(260,0, 'Pajarito feo'),
	(260,1, 'Pajarito remendado'),
	(260,0, 'Pajarito gordo'),

	(261,1, 'Por que tenia plumas de diferentes colores como un arcoiris'),
	(261,0, 'Por que tenia una patita remendada'),
	(261,0, 'Por que tenía una ala rota'),
	(261,0, 'Por qué lo quería mucho'),

	(262,0, 'Respeto'),
	(262,1, 'Humildad'),
	(262,0, 'Odio'),
	(262,0, 'Celos')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(10, 1, 'El valor de la  verdad')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(53,'Hace muchísimos años, un guapo y apuesto príncipe de China se propuso encontrar  la esposa adecuada con quien contraer matrimonio. Todas las jóvenes ricas y casaderas del reino  deseaban que el heredero se fijara en ellas para convertirse en la afortunada princesa. El príncipe lo tenía complicado a la hora de elegir, pues eran muchas las pretendientes y sólo podía dar el sí quiero a una. \n
		Durante muchos días estuvo dándole vueltas a un asunto: la cualidad en la que debía basar su elección. \n
		¿Debía, quizá, escoger a la muchacha más bella? ¿Sería mejor quedarse con la más rica? ¿O mejor comprometerse con la más inteligente?…Era una decisión de por vida y tenía que tenerlo muy claro. '),
	(53,' Un día, por fin, se disiparon todas sus dudas y mandó llamar a los mensajeros reales. \n
		– Quiero que anunciéis a lo largo y ancho de mis dominios, que todas las mujeres que deseen convertirse en mi esposa tendrán que presentarse dentro de una semana en  palacio, a primera hora de la mañana. \n
		Los mensajeros, obedientes y siempre leales a la corona, recorrieron a caballo todos los pueblos y ciudades del reino. No quedó un solo rincón ajeno a la noticia. \n
		Cuando llegó el día señalado, cientos de chicas se presentaron vestidas con sus mejores galas en los fabulosos jardines de la corte.  '),
	(53,'Impacientes, esperaron a que el príncipe se asomara al balcón e hiciera públicas sus intenciones. Cuando apareció, suspiraron emocionadas e hicieron una pequeña reverencia. En silencio, escucharon sus palabras con atención. \n
		– Os he pedido que vinierais hoy porque he de escoger la mujer que será mi esposa. Os daré a cada una de vosotras una semilla para que la plantéis. Dentro de seis meses, os convocaré aquí otra vez, y la que me traiga la flor más hermosa de todas, será la elegida para casarse conmigo y convertirse en princesa. \n
		Entre tanta muchacha distinguida se escondía una muy humilde, hija de una de las cocineras de palacio.  '),
	(53,'Era una jovencita linda de ojos grandes y largos cabellos, pero sus ropas eran viejas y estaban manchadas de hollín porque siempre andaba entre fogones.  A pesar de que era pobre y se sentía como una mota de polvo entre tanta bella mujer, aceptó la semilla que le ofrecieron y la plantó en una vieja maceta de barro ¡Siempre había estado enamorada del príncipe y casarse con él era su sueño desde niña! \n
		Durante semanas la regó varias veces al día e hizo todo lo posible para que brotara una planta que luego diera una hermosísima flor. Probó a cantarle con dulzura y a resguardarla del frío de la noche, pero no fue posible. Desgraciadamente, su semilla no germinó. \n'),
	(53,'Cuando se cumplieron los seis meses de plazo, todas las muchachas acudieron a la cita con el príncipe y formaron una larga fila. Cada una de ellas portaba una maceta en la que crecía una magnífica flor; si una era hermosa, la siguiente todavía era más exuberante. \n
		El príncipe bajó a los jardines y, muy serio, empezó a pasar revista. Ninguna flor parecía interesarle demasiado. De pronto, se paró frente a la hija de la cocinera, la única chica que sostenía una maceta sin flor y donde no había nada más que tierra que apestaba a  humedad. La pobre miraba al suelo avergonzada. \n
		– ¿Qué ha pasado?  ¿Tú no me traes una maravillosa flor como las demás?'),
	(53,'– Señor, no sé qué decirle… Planté mi semilla con mucho amor y la cuidé durante todo este tiempo para que naciera una bonita planta, pero el esfuerzo fue inútil. No conseguí  que germinara. Lo siento mucho. \n
		El príncipe sonrió, acercó la mano a la barbilla de la linda muchacha  y la levantó para que le mirara a los ojos. \n
		– No lo sientas… ¡Tú serás mi esposa! \n
		Las damas presentes se giraron extrañadas y comenzaron a cuchichear: ¿Su esposa?  ¡Pero si es la única que no ha traído ninguna flor! ¡Será una broma!… \n
		El príncipe, haciendo caso omiso a los comentarios, tomó de la mano a su prometida y juntos subieron al balcón de palacio que daba al jardín. Desde allí, habló a la multitud que estaba esperando una explicación.'),
	(53,'– Durante mucho tiempo estuve meditando sobre cuál  es la cualidad que más me atrae de una mujer  y me di cuenta de que es la sinceridad. Ella ha sido honesta conmigo y la única que no ha tratado de engañarme. \n
		Todas las demás se miraban perplejas  sin entender nada de nada. \n
		Y así fue cómo el príncipe de China encontró a la mujer de sus sueños y la hija de la cocinera, se casó con el príncipe soñado.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(53,'¿Cómo eran los mensajeros?'),
	(53,'¿Qué era lo que buscaba el príncipe al  elegir a su reina?'),
	(53,'¿Que había pedido el príncipe?'),
	(53,'¿Quién no llevo una hermosa flor al príncipe?'),
	(53,'¿A quién escogió el príncipe como esposa?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(263,1, 'Leales hacia la corona'),
	(263,0, 'Deshonrados'),
	(263,0, 'Gentiles'),
	(263,0, 'Humildes'),

	(264,0, 'Belleza'),
	(264,0, 'Amor'),
	(264,1, 'Sinceridad'),
	(264,0, 'Inteligencia'),

	(265,0, 'Que le llevaran una hermosa chica'),
	(265,1, 'Que le llevaran la mejor planta  hermosa'),
	(265,0, 'Que le llevaran un ramo de flores'),
	(265,0, 'Que le llevaran chocolates'),

	(266,1, 'Ala hija de la cocinera del rey'),
	(266,0, 'La hija del zapatero'),
	(266,0, 'La hija del leñador'),
	(266,0, 'La hija de la costurera'),

	(267,0, 'La hija del zapatero'),
	(267,0, 'La hija del leñador'),
	(267,0, 'La hija de la costurera'),
	(267,1, 'Ala hija de la cocinera del rey')





INSERT INTO Content(IdTypeContent, Status, Title) VALUES(10, 1, 'El asno y el caballo')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(54,'Un asno y un caballo vivían juntos desde su más tierna infancia y, como buenos amigos que eran, utilizaban el mismo establo, compartían la bandeja de heno, y se repartían el trabajo equitativamente. Su dueño era molinero, así que su tarea diaria consistía en transportar la harina de trigo desde el campo al mercado principal de la ciudad. \n
		La rutina era la misma todas las mañanas: el hombre colocaba un enorme y pesado saco sobre el lomo del asno, y minutos después, otro igual de enorme y pesado sobre el lomo del caballo. En cuanto todo estaba preparado los tres abandonaban el establo y se ponían en marcha. Para los animales el trayecto era aburrido y bastante duro, pero como su sustento dependía de cumplir órdenes sin rechistar, ni se les pasaba por la mente quejarse de su suerte.'),
	(54,'Un día, no se sabe por qué razón, el amo decidió poner dos sacos sobre el lomo de asno y ninguno sobre el lomo del caballo. Lo siguiente que hizo fue dar la orden de partir. \n
		– ¡Arre, caballo! ¡Vamos, borrico!… ¡Daos prisa o llegaremos tarde! \n
		Se adelantó unos metros y ellos fueron siguiendo sus pasos, como siempre perfectamente sincronizados.  Mientras caminaban, por primera vez desde que tenía uso de razón, el asno se lamentó: \n
		– ¡Ay, amigo, fíjate en qué estado me encuentro! Nuestro dueño puso todo el peso sobre mi espalda y creo que es injusto. ¡Apenas puedo sostenerme en pie y me cuesta mucho respirar! \n'),
	(54,'El pequeño burro tenía toda la razón: soportar esa carga era imposible para él. El caballo, en cambio, avanzaba a su lado ligero como una pluma y sintiendo la perfumada brisa de primavera peinando su crin. Se sentía tan dichoso, le invadía una sensación de libertad tan grande, que ni se paró a pensar en el sufrimiento de su colega. A decir verdad, hasta se sintió molesto por el comentario. \n
		– Sí amiguete, ya sé que hoy no es el mejor día de tu vida, pero… ¡¿qué puedo hacer?!… ¡Yo no tengo la culpa de lo que te pasa! \n
		Al burro le sorprendió la indiferencia y poca sensibilidad de su compañero de fatigas, pero estaba tan agobiado que se atrevió a pedirle ayuda.'),
	(54,'– Te ruego que no me malinterpretes, amigo mío. Por nada del mundo quiero fastidiarte, pero la verdad es que me vendría de perlas que me echaras una mano. Me conoces y sabes que no te lo pediría si no fuera absolutamente necesario. \n
		El caballo dio un respingo y puso cara de sorpresa. \n
		– ¡¿Perdona?!… ¡¿Me lo estás diciendo en serio?! \n
		El asno, ya medio mareado, pensó  que estaba en medio de una pesadilla. \n
		– ‘No, esto no puede ser real… ¡Seguro que estoy soñando y pronto despertaré!’ \n'),
	(54,'El sudor empezó a caerle a chorros por el pelaje y notó que sus grandes ojos almendrados  empezaban a girar cada uno hacia un lado, completamente descontrolados. Segundos después todo se volvió borroso y se quedó prácticamente sin energía. Tuvo que hacer un esfuerzo descomunal para seguir pidiendo auxilio. \n
		– Necesito que me ayudes porque yo… yo no puedo, amigo, no puedo continuar… Yo me… yo… ¡me voy a desmayar! \n
		El caballo resopló con fastidio. \n
		– ¡Bah, venga, no te pongas dramático que tampoco es para tanto! Te recuerdo que eres más joven que yo y estás en plena forma. Además, para un día que me libro de cargar no voy a llevar parte de lo tuyo. ¡Sería un tonto redomado si lo hiciera!'),
	(54,'Bajo el sol abrasador al pobre asno se le doblaron las patas como si fueran de gelatina. \n
		– ¡Ayuda… ayuda… por favor! \n
		Fueron sus últimas palabras antes de derrumbarse sobre la hierba. \n
		¡Blooom! \n
		El dueño, hasta ese momento ajeno a todo lo que ocurría tras de sí, escuchó el ruido sordo que hizo el animal al caer. Asustado se giró y vio al burro inmóvil, tirado con la panza hacia arriba y la lengua fuera. \n
		– ¡Oh, no, mi querido burro se ha desplomado!… ¡Pobre animal! Tengo que llevarlo a la granja y avisar a un veterinario lo antes posible, pero  ¿cómo puedo hacerlo?'),
	(54,'Hecho un manojo de nervios miró a su alrededor y detuvo la mirada sobre el caballo. \n
		– ¡Ahora que lo pienso te tengo a ti! Tú serás quien me ayude en esta difícil situación. ¡Venga, no perdamos tiempo, agáchate! \n
		El desconcertado caballo obedeció y se tumbó en el suelo. Entonces, el hombre colocó sobre su lomo los dos sacos de harina, y seguidamente arrastró al burro para acomodarlo también sobre la montura. Cuando tuvo todo bien atado le dio unas palmaditas cariñosas en el cuello. \n 
		– ¡Ya puedes ponerte en pie! \n
		El animal puso cara de pánico ante lo que se avecinaba.'),
	(54,'– Sí, ya sé que es muchísimo peso para ti, pero si queremos salvar a nuestro amigo solo podemos  hacerlo de esta manera. ¡Prometo que te recompensaré con una buena ración de forraje! \n
		El caballo soltó un relincho que sonó a quejido, pero de nada  sirvió. Le gustara o no, debía  realizar la ruta de regreso a casa con un cargamento descomunal sobre la espalda. \n
		Gracias a la rápida decisión del molinero llegaron a tiempo de que el veterinario pudiera reanimar al burro y dejarlo como nuevo en pocas horas. '),
	(54,'El caballo, por el contrario, se quedó tan hecho polvo, tan dolorido y tan débil,  que tardó tres semanas en recuperarse. Un tiempo muy duro en el que también lo pasó mal a nivel emocional porque se sentía muy culpable. Tumbado sobre el heno del establo lloriqueaba y repetía sin parar: \n
		– Por mi mal comportamiento casi pierdo al mejor amigo que tengo…  ¿Cómo he podido portarme así con él?… ¡Tenía que haberle ayudado!… ¡Tenía que haberle ayudado desde el principio! \n
		Por eso, cuando se reunieron de nuevo, con mucha humildad le pidió perdón y le prometió que jamás volvería a suceder. El burro, que era un buenazo y le quería con locura, aceptó las disculpas y lo abrazó más fuerte que nunca.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(54,'¿que eran el asno y el caballo?'),
	(54,'¿qué aprendizaje te deja la historia del asno y el caballo?'),
	(54,'¿que le pedía el  asno  a su amigo caballo?'),
	(54,'¿ como estaba en caballo al ver a su amigo tirado en el piso?'),
	(54,'¿ que  le prometieron el caballo a su  los amigos asno?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(268,0, 'Eran enemigos'),
	(268,1, 'Eran grandes amigos'),
	(268,0, 'Eran dos desconocidos'),
	(268,0, 'Era inseparables'),

	(269,0, 'Que debes de ser amoroso'),
	(269,0, 'Que debes de ser nobles'),
	(269,1, 'Que debes de ser solidario'),
	(269,0, 'Que debes de ser humildes'),

	(270,1, 'Que lo ayudara con la carga'),
	(270,0, 'Que lo cargara'),
	(270,0, 'Que e diera agua'),
	(270,0, 'Que le diera paja'),

	(271,0, 'Estaba alegre'),
	(271,0, 'Estaba enojado'),
	(271,0, 'Estaba feliz'),
	(271,1, 'Estaba culpable'),

	(272,1, 'Que jamás volvería a pasar '),
	(272,0, 'Que lo respetaría'),
	(272,0, 'Que lo honraría'),
	(272,0, 'Que lo volvería hacer')




INSERT INTO Content(IdTypeContent, Status, Title) VALUES(10, 1, 'El viejos y sus hijos')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(55,'Érase una vez un buen hombre que se ocupaba de las labores del campo. Toda su vida se había dedicado a labrar la tierra para obtener alimentos con los que sostener a su numerosa familia. \n
		Era mayor y tenía varios hijos a los que sacar adelante. Todos eran buenos chicos, pero cada uno tenía un carácter tan distinto que se pasaban el día peleándose entre ellos por las cosas más absurdas. En casa siempre se escuchaban broncas, gritos y portazos. \n
		El labrador estaba desesperado. Ya no sabía qué hacer para que sus hijos se llevaran bien, como debe ser entre hermanos que se quieren. Una tarde, se sentó junto a la chimenea del comedor y, al calor del fuego, se puso a meditar. Esos chicos necesitaban una lección que les hiciera entender que las cosas debían cambiar. '),
	(55,'De repente, una lucecita iluminó su cerebro ¡Ya lo tenía! \n
		– ¡Venid todos ahora mismo, tengo algo que deciros! \n
		Los hermanos acudieron obedientemente a la llamada de su padre ¿Qué querría a esas horas? \n
		– Os he mandado llamar porque necesito que salgáis fuera y recojáis cada uno un palo delgado, de esos que hay tirados por el campo. \n
		– ¿Un palo? … Papá ¿estás bien? ¿Para qué quieres que traigamos un palo? –dijo uno de ellos tan sorprendido como todos los demás. \n
		– ¡Haced lo que os digo y hacedlo ahora! – ordenó el padre. \n
		Salieron juntos en tropel al exterior de la casa y en pocos minutos regresaron, cada uno con un palo del grosor de un lápiz en la mano.'),
	(55,'– Ahora, dádmelos – dijo mirándoles a los ojos. \n
		El padre cogió todos los palitos y los juntó con una fina cuerda. Levantó la vista y les propuso una prueba. \n
		– Quiero ver quién de todos vosotros es capaz de romper estos palos juntos. Probad a ver qué sucede. \n
		Uno a uno, los chicos fueron agarrando el haz de palitos y con todas sus fuerzas intentaron partirlos, pero ninguno lo consiguió. Estaban desconcertados. Entonces, el padre desató la cuerda que los unía. \n
		– Ahora, coged cada uno el vuestro y tratad de romperlo. \n
		Como era de esperar, fue fácil para ellos romper una simple ramita. Sin quitar el ojo a su padre, esperaron a escuchar qué era lo que tenía que decirles y qué explicación tenía todo aquello.'),
	(55,'– Hijos míos, espero que con esto haya podido trasmitiros un mensaje claro sobre cómo han de comportarse los hermanos. Si no permanecéis juntos, será fácil que os hagan daño. En cambio, si estáis unidos y ponéis de vuestra parte para apoyarnos los unos a los otros, nada podrá separarnos y nadie podrá vencernos ¿Comprendéis? \n
		Los hermanos se quedaron con la boca abierta y se hizo tal silencio que hasta se podía oír el zumbido de las moscas. Su padre acababa de darles una gran lección de fraternidad con un sencillo ejemplo. Todos asintieron con la cabeza y muy emocionados, se abrazaron y prometieron cuidarse por siempre jamás.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(55,'¿qué lección les enseñó el padre a sus hijos?'),
	(55,'¿por que los chicos necesitaban una lección?'),
	(55,'¿que les pidió el padre a sus hijo?'),
	(55,'¿por que estaba cansado el padre?'),
	(55,'¿el padre que les pido que hicieran con los palos?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(273,1, 'que la unión hace l fuerza'),
	(273,0, 'que solo será mejor'),
	(273,0, 'que siempre hicieran lo que quisieran'),
	(273,0, 'que el amor era sincero'),

	(274,0, 'por que eran unidos'),
	(274,1, 'por se llevaba peleando entre ello'),
	(274,0, 'porque se lo dijo la luciérnaga'),
	(274,0, 'Ninguna de las anteriores'),

	(275,0, 'que le trajeran agua'),
	(275,0, 'que le trajeran comida'),
	(275,1, 'que les trajeran palos delgados'),
	(275,0, 'que les trajeran palos gordos'),

	(276,1, 'por que los hijos peleaban mucho'),
	(276,0, 'por que los hijos  hacían lo que querían'),
	(276,0, 'por que los hijos no obedecen'),
	(276,0, 'por que los hijos no comian'),

	(277,0, 'que los tiraran'),
	(277,0, 'que los quemaran'),
	(277,1, 'que los partieran en dos partes'),
	(277,0, 'que los picaran')




