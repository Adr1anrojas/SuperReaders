--INITDATA
EXEC Login_Helper
INSERT INTO School(Name, Address, Phone) VALUES('Benerito las Americas', 'Bravo', '12345') 
INSERT INTO ClassRoom(Name, Status)
VALUES('1-A',1),('1-B',1),('2-A',1),('2-B',1),('3-A',1),('3-B',1)
exec User_Create 'Super','Lector','super.poderoso','superpoderoso@gmail.com','123456', 1, 'Admin', '2021-03-23T00:00:00', 1
exec Admin_Create 1
INSERT INTO TypeContent([Name]) VALUES('Aventura'),('Suspenso'), ('Leyendas'),('Princesas'),('Fabulas'), ('Informativos'), ('Clasicos'), ('Ciencia Ficcion'), ('Historicos'), ('Valores')
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

INSERT INTO TypeContent([Name]) VALUES('Aventura'),('Suspenso'), ('Leyendas'),('Princesas'),('Fabulas'), ('Informativos'), ('Clasicos'), ('Ciencia Ficcion'), ('Historicos'), ('Valores')
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Aladino y la lampara maravillosa')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(1,'Erase una vez un muchacho llamado Aladino que vivía en el lejano Oriente con su madre, en una casa sencilla y humilde. Tenían lo justo para vivir, así que cada día, Aladino recorría el centro de la ciudad en busca de algún alimento que llevarse a la boca. '+char(13)+'
		En una ocasión paseaba entre los puestos de fruta del mercado, cuando se cruzó con un hombre muy extraño con pinta de extranjero. Aladino se quedó sorprendido al escuchar que le llamaba por su nombre. '+char(13)+'
		– ¿Tú eres Aladino, el hijo del sastre, verdad? '+char(13)+'
		– Sí, y es cierto que mi padre era sastre, pero… ¿Quién es usted? '+char(13)+'
		– ¡Soy tu tío! No me reconoces porque hace muchos años que no vengo por aquí. Veo que llevas ropas muy viejas y me apena verte tan flaco. Imagino que en tu casa no sobra el dinero…'),
	(1,'Aladino bajó el cabeza un poco avergonzado. Parecía un mendigo y su cara morena estaba tan huesuda que le hacía parecer mucho mayor. '+char(13)+'
		– Yo te ayudaré, pero a cambio necesito que me hagas un favor. Ven conmigo y si haces lo que te indique, te daré una moneda de plata. '+char(13)+'
		A Aladino le sorprendió  la oferta de ese desconocido, pero como no tenía nada que perder, le acompañó hasta una zona apartada del bosque. Una vez allí, se pararon frente a una cueva escondida en la montaña. La entrada era muy estrecha. '+char(13)+'
		– Aladino, yo soy demasiado grande y no quepo por el agujero. Entra tú y tráeme una lámpara de aceite muy antigua  que verás al fondo del pasadizo. No quiero que toques nada más, sólo la lámpara ¿Entendido?'),
	(1,'Aladino dijo sí con la cabeza y penetró en un largo corredor bajo tierra que terminaba en una gran sala con paredes de piedra. Cuando accedió a ella, se quedó asombrado. Efectivamente, vio la vieja lámpara encendida, pero eso no era todo: la tenue luz le permitió distinguir cientos de joyas, monedas y piedras preciosas, amontonadas en el suelo  ¡Jamás había visto tanta riqueza! '+char(13)+'
		Se dio prisa en coger la lámpara, pero no pudo evitar llenarse los bolsillos todo lo que pudo de algunos de esos tesoros que encontró. Lo que más le gustó, fue un ostentoso y brillante anillo que se puso en el dedo índice. '),
	(1,'– ¡Qué anillo tan bonito! ¡Y encaja perfectamente en mi dedo! '+char(13)+'
		Volvió hacia la entrada y al asomar la cabeza por el orificio, el hombre le dijo: '+char(13)+'
		– Dame la lámpara, Aladino. '+char(13)+'
		– Te la daré, pero antes déjame salir de aquí. '+char(13)+'
		– ¡Te he dicho que primero quiero que me des la lámpara! '+char(13)+'
		– ¡No, no pienso hacerlo! '+char(13)+'
		El extranjero se enfureció tanto que tapó la entrada con una gran losa de piedra, dejando al chico encerrado en el húmedo y oscuro pasadizo subterráneo. '+char(13)+'
		¿Qué podía hacer ahora? ¿Cómo salir de ahí con vida?…'),
	(1,'Recorrió el lugar con la miraba tratando de encontrar una solución. Estaba absorto en sus pensamientos cuando, sin querer, acarició el anillo y de él salió un genio ¡Aladino casi se muere del susto! '+char(13)+'
		– ¿Qué deseas, mi amo? Pídeme lo que quieras que te lo concederé. '+char(13)+'
		El chico, con los ojos llenos de lágrimas, le dijo: '+char(13)+' 
		– Oh, bueno… Yo sólo quiero regresar a mi casa. '+char(13)+'
		En cuanto pronunció estas palabras, como por arte de magia apareció en su hogar. Su madre le recibió con un gran abrazo. Con unos nervios que le temblaba todo el cuerpo, intentó contarle a la buena mujer todo lo sucedido. Después, más tranquilo, cogió un paño de algodón para limpiar la sucia y vieja lámpara de aceite. En cuanto la frotó, otro genio salió de ella. '+char(13)+'
		– Estoy aquí para concederle un deseo, señor.'),
	(1,'Aladino y su madre se miraron estupefactos ¡Dos genios en un día era mucho más de lo que uno podía esperar! El muchacho se lanzó a pedir lo que más le apetecía en ese momento. '+char(13)+'
		– ¡Estamos deseando comer! ¿Qué tal alguna cosa rica para saciar toda el hambre acumulada durante años? '+char(13)+'
		Acto seguido, la vieja mesa de madera del comedor se llenó de deliciosos manjares que en su vida habían probado. Sin duda, disfrutaron de la mejor comida que podían imaginar. Pero eso no acabó ahí porque, a partir de entonces y gracias a la lámpara que ahora estaba en su poder, Aladino y su madre vivieron cómodamente; todo lo que necesitaban podían pedírselo al genio. Procuraban no abusar de él y se limitaban a solicitar lo justo para vivir sin estrecheces, pero no volvió a faltarles de nada. '+char(13)+'
		Un día, en uno de sus paseos matutinos, Aladino vio pasar, subida en una litera, a una mujer bellísima de la que se enamoró instantáneamente. Era la hija del sultán. Regresó a casa y como no podía dejar de pensar en ella, le dijo a su madre que tenía que hacer todo lo posible para que fuera su esposa.'),
	(1,'¡Esta vez sí tendría que abusar un poco de la generosidad del genio para llevar a cabo su plan! Frotó la lámpara maravillosa y le pidió tener una vivienda lujosa con hermosos jardines, y  cómo no, ropas adecuadas para presentarse ante el sultán, a quien quería pedir la mano de su hija. Solicitó también un séquito de lacayos montados sobre esbeltos corceles, que tiraran de carruajes repletos de riquezas para ofrecer al poderoso emperador. Con todo esto se presentó ante él y tan impresionado quedó, que aceptó que su bella y bondadosa hija fuera su esposa. '+char(13)+'
		Aladino y la princesa Halima, que así se llamaba, se casaron unas semanas después y desde el principio, fueron muy felices. Tenían amor y vivían el uno para el otro. '+char(13)+'
		Pero una tarde, Halima vio por la casa la vieja lámpara de aceite y como no sabía nada, se la vendió a un trapero que iba por las calles comprando cachivaches. Por desgracia, resultó ser el hombre malvado que había encerrado a Aladino en la cueva. Deseando vengarse, el viejo recurrió al genio de la lámpara y le ordenó, como nuevo dueño, que todo lo que tenía Aladino, incluida su mujer, fuera trasladado a un lugar muy lejano.'),
	(1,'Y así fue… Cuando el pobre Aladino regresó a su hogar, no estaba su casa, ni sus criados, ni su esposa… Ya no tenía nada de nada. '+char(13)+'
		Comenzó a llorar con desesperación y recordó que el anillo que llevaba en su dedo índice también podía ayudarle. Lo acarició y pidió al genio que le devolviera todo lo que era suyo pero, desgraciadamente, el genio del anillo no era tan poderoso como el de la lámpara. '+char(13)+'
		– Mi amo, es imposible para mí concederte esa petición, pero sí puedo llevarte hasta donde está tu mujer.'),
	(1,'Aladino aceptó y automáticamente se encontró en un lejano lugar junto a su bella Halima, que por fortuna, estaba sana y salva. Sabían que sólo había una opción: recuperar la lámpara maravillosa como fuera para poder regresar a la ciudad con todas sus posesiones. Juntos, idearon un nuevo plan. Pidieron al genio del anillo una dosis de veneno y Aladino fue a esconderse. A  la hora de la cena, Halima entró sigilosamente en la cocina del malvado extranjero y  lo echó en el vino sin que éste se diera cuenta. En cuanto se sirvió una copa y mojó sus labios, cayó dormido en un sueño que, tal como les había prometido  el genio, duraría cientos de años. '+char(13)+'
		Aladino y Halima se abrazaron y corrieron a recuperar su lámpara. Fue entonces cuando le contó a su mujer toda la historia y el poder que la lámpara de aceite tenía.'),
	(1,'– Y ahora que ya lo sabes todo, querida, volvamos a nuestro hogar. '+char(13)+'
		Frotó la lámpara y como siempre, salió el gran genio que siempre concedía todos los deseos de su señor. '+char(13)+'
		– ¿Qué deseas esta vez, mi amo? '+char(13)+'
		– ¡Hoy me alegro más que nunca de verte! ¡Llévanos a casa, viejo amigo! – dijo Aladino riendo de felicidad. '+char(13)+'
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
	(2,'Tururulandia era un pequeño y precioso país de juguete que había hecho Paulina Perfectina con sus construcciones. Paulina cuidaba constantemente Tururulandia para que todo estuviera en orden, y mantenía los muñecos rojos junto a sus casas rojas, y los niños verdes jugando en los columpios de los parques verdes, y los papás hablando todo el día junto a la plaza. Era un país tan bonito y perfecto, que Paulina soñaba con poder llegar a vivir un día en Tururulandia. '+char(13)+'
        Y sin saber cómo ni por qué, su sueño se cumplió, y un día despertó en mitad de Tururulandia, vestida toda de rosa, y hecha de piececitas de juguete. ¡qué maravilla! ¡ todo era como ella conocía! Y era realmente precioso.'),
	(2,'Paulina esta totalmente feliz, y tras la primera sorpresa, corrió a ver los columpios de los niños del parque verde. Pero antes de que pudiera llegar, una mano gigante la alcanzó, y tomándola de un brazo, la llevó de nuevo junto al gran palacio rosa. Paulina quedó un poco extrañada, pero enseguida lo olvidó, porque vio sus queridas casas rojas, y hacia allí se dirigió. Pero nuevamente, antes de llegar a ellas, la gran mano volvió a aparecer, y la volvió a dejar junto al palacio. '+char(13)+'
        - No te esfuerces-dijo una princesita rosa que asomaba por uno de los balcones- nunca podrás abandonar la zona rosa'),
	(2,'Entonces la princesita explicó a Paulina cómo la gran mano nunca dejaba moverse a nadie en Tururulandia, y que aquel era el país más triste del mundo, porque nadie podía decidir qué hacía ni dónde iba. Y Paulita miró las caras de todas las figuritas y muñecos, y comprobó que era verdad. Y se dio cuenta de que aquella gran mano era la suya, la que utilizaba siempre para mantenerlo todo como ella quería. '+char(13)+'
        - ¿Pero entonces? ¿No os gusta vivir en un país tan bonito y organizado? - terminó preguntando Paulina. '+char(13)+'
        - Si no podemos elegir qué hacemos o a dónde vamos, ¿para qué nos sirve todo esto? '+char(13)+'
        - le respondieron - Si tan sólo tuviéramos un día para ver otras cosas... ¿no lo entiendes?'),
	(2,'Y vaya si lo entendió. Tras unos pocos días sin poder decidir nada por sí misma, ni moverse del castillo rosa, Paulina estaba profundamente triste; tanto, que su precioso país le daba totalmente igual. '+char(13)+'
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
	(3,'Blancanieves era una niña muy bonita y de dulce corazón. Siendo pequeña, su madre murió y su padre volvió a casarse con otra mujer, una malvada reina de nombre Grimhilde. Era una mujer terrible que envidiaba a la joven princesa por su belleza. '+char(13)+'
		La madrastra de Blancanieves también era muy vanidosa, tenía un espejo mágico que siempre le decía quién era la mujer más hermosa de todo el reino. Por eso, cada día y como parte de su rutina, ella le preguntaba: '+char(13)+'
		– Espejito, espejito, ¿Podrías decirme tu quién es la más guapa de todo el reino? '+char(13)+'
		– Eres tú mi señora, la mujer más hermosa de todas '+char(13)+'
		- respondía el espejo con voz profunda y oscura.'),
	(3,'Con el paso del tiempo, Blancanieves creció y se convirtió en una hermosa jovencita. Cierto día, cuando Grimhilde preguntó al espejo quién era la más bonita este respondió: '+char(13)+'
		– Mi señora, eres muy hermosa, pero Blancanieves te ha superado. '+char(13)+'
		Al escuchar tal respuesta, la malvada reina enfureció, pues no podía concebir que una niña fuera más hermosa que ella. Por eso, reunió a sus sirvientes y al cazador del castillo y les ordenó: '+char(13)+'
		— Mi querido espejo ha dicho que Blancanieves es más hermosa que yo. Os ordeno que lleven a Blancanieves al bosque y acaben con ella. Para estar segura que habéis cumplido con mi orden, quiero que me traigan su corazón en una caja. '),
	(3,'Los sirvientes y el cazador se llevaron a Blancanieves a dar un paseo por el bosque. La joven no sospechó nada y se entretuvo jugando con los pajaritos y las flores del bosque. Los sirvientes no pudieron cumplir la orden, la joven era muy noble y buena como para morir por su mano. '+char(13)+'
		— Huye muy lejos, tu madrastra te quiere muerta '+char(13)+'
		— advirtió el cazador '+char(13)+'
		— Yo le llevaré el corazón de un jabalí para engañarla y ganar tiempo.'),
	(3,'Blancanieves huyó a través del bosque durante horas, cuando estaba muy agotada y a punto de desfallecer, encontró una bonita cabaña en el bosque. Entró y descubrió que todo en su interior era muy pequeño y sucio. Había 7 sillas, siete camas y siete platos con comida. Blancanieves estaba muy hambrienta y cansada, así que se comió todo, limpió la casita y se fue a dormir sobre las siete camitas. '+char(13)+'
		Los dueños de esta cabaña eran 7 enanitos que trabajaban en una mina cercana. Al descubrir su casa invadida por tan hermosa niña sus corazones se enternecieron. Blancanieves les contó los terribles planes de su madrastra y ellos le permitieron quedarse '),
	(3,'La malvada reina Grimhilde no se daba por vencida y volvió a preguntar a su espejo quién era la mujer más guapa de todo el reino. El espejo no podía mentir, así que respondió: '+char(13)+'
		— Tu eres hermosa, pero Blancanieves sigue siendo la mujer más guapa de todas. '+char(13)+'
		— Eso es imposible, me trajeron su corazón en una caja '+char(13)+'
		— espetó llena de furia. '+char(13)+'
		— Fue engañada, mi ama. Blancanieves no está muerta, vive en una cabaña del bosque con siete enanitos. '),
	(3,'La madrastra enfadada decidió terminar el trabajo por su cuenta. Envenenó varias manzanas, se disfrazó de humilde anciana y se dirigió a la casita de los enanos. Al llegar, tocó la puerta y Blancanieves la recibió. '+char(13)+'
		— ¿Quién es? '+char(13)+'
		— Ay mi niña, soy una pobre anciana que vive cerca de aquí. Vine a traerte estas hermosas manzanas.  '+char(13)+'
		Blancanieves no pudo resistirse a la mágica belleza de las manzanas. Tomó una y pronto cayó muerta sobre el suelo. La malvada madrastra marchó entonces, riendo macabramente porque había logrado su cometido, ahora era la mujer más bella de todas. '+char(13)+'
		La terrible mujer se marchaba riendo mucho y muy alegre de que por fin había logrado acabar con Blancanieves y ser ella la más hermosa de todas. '),
	(3,'Cuando los enanitos llegaron a casa y descubrieron lo que había pasado, se pusieron muy tristes. Construyeron una hermosa caja de cristal en la que dejaron a Blancanieves, luego la llevaron al bosque.'+char(13)+'
		Un día, un príncipe paseaba por el lugar, descubrió a Blancanieves y prendado de su belleza y triste por la suerte de los enanitos, abrió la caja y besó a Blancanieves. '+char(13)+'
		Aquel beso lleno de amor deshizo el hechizo de la malvada bruja, la joven despertó y pronto se vio rodeada de sus siete enanitos y un príncipe encantador. '+char(13)+'
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
	(4,'Hubo una vez un viejo sultán preocupado porque aún no había decidido a cuál de sus hijas dejar el trono. Su amigo el visir le aconsejó: '+char(13)+'
		- Ponlas a prueba. La vida es un largo viaje ¿no? Pues llévalas a un lugar remoto y que cada un viaje hasta aquí por su cuenta. Júzgalas a su vuelta por lo que hayan aprendido. '+char(13)+'
		- ¿Y si algo les ocurriera? '+char(13)+'
		- No se preocupe, majestad. Dejaré que les guarde y acompañe un animal de su elección.'),
	(4,'Ara y Taira, las princesas, fueron llevadas muy lejos, y allí pudieron elegir su animal protector. Ara eligió un magnífico y poderoso tigre que no desentonaba ni con la belleza ni con el carácter valiente e impetuoso de la princesa. '+char(13)+'
		- Me encanta ese tigre- dijo Taira- pero yo no lo escogería para un viaje tan largo. Los tigres son peligrosos y difíciles de controlar. '+char(13)+'
		- No te preocupes, hermanita, yo sabré dominarlo- respondió Ara al emprender el camino de vuelta. '+char(13)+'
		Taira pasó algún tiempo conociendo a los animales antes de elegir su compañero. Y aunque los animales bellos y exóticos le parecían maravillosos, se decidió por un perro de ojos inteligentes, simpático y bonachón, con el que se entendía a las mil maravillas. '+char(13)+''),
	(4,'El viaje resultó muy extraño. Cada vez que pasaban por algún pueblo o ciudad, Ara y su tigre levantaban gran admiración y eran acogidos con fiestas y celebraciones, mientras Taira y su perro pasaban prácticamente desapercibidos. Pero el resto del tiempo, cuando viajaban alejados de la gente, Taira disfrutaban de todo tipo de juegos con su perro, mientras que Ara apenas conseguía dominar la ira y la fuerza del tigre, y vivía angustiada pensando que en cualquier momento el animal pudiera llegar a atacarla. Y lo hizo varias veces, aunque las heridas nunca llegaron a ser graves. '+char(13)+'
		Cuando Ara y su tigre llegaron al palacio también fueron recibidos entre aclamaciones. Al poco llegó Taira, y el visir recordó entonces al sultán: '+char(13)+'
		- Ha llegado la hora de decidirse. Preguntadles qué tal fue el viaje y qué han aprendido. '+char(13)+''),
	(4,'- ¿Qué necesidad hay? - replicó el sultán - Mira a Ara y su magnífico tigre, tienen una imagen perfecta y todo el mundo los adora. '+char(13)+'
		- Preguntadles de todas formas - insistió el visir- seguro que tienen magníficas historias que contar. '+char(13)+'
		- Cierto, eso seguro... ¿Queridas hijas? ¿Qué tal vuestro viaje? '+char(13)+'
		Ara apenas tuvo tiempo de responder, porque Taira se lanzó a hablar sin parar. Se le había hecho tan corto, y lo había pasado tan bien con su perro, que no dejaba de dar las gracias a su padre por habérselo regalado, y le pidió conservarlo para siempre. Y mientras Taira contaba sus mil historias, el sultán vio en lo ojos de la bella Ara una pequeña lágrima de envidia ¡se le había hecho tan largo! ¡y todo por haber elegido aquel tigre brusco y salvaje! '),
	(4,'El visir, viendo que el sultán había comprendido, gritó con voz potente: '+char(13)+'
		- Ya no hay necesidad de trucos ¡Al sal halam! '+char(13)+'
		... y una nube mágica devolvió al perro y al tigre su forma humana. Eran dos de los muchos príncipes que llevaban años cortejando a las hijas del sultán. Las dos reconocieron enseguida al tigre: era Agra, el más apuesto y poderoso de sus pretendientes, del que ambas habían estado enamoradas durante años. El perro era Asalim, un joven del que apenas recordaban nada. Pero tenía los ojos y la sonrisa de su querido compañero de juegos, y Taira se lanzó a sus brazos y corrió a pedir permiso a su padre para celebrar la boda. '+char(13)+'
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
	(5,'Gorg el gigante vivía desde hacía siglos en la Cueva de la Ira. Los gigantes eran seres pacíficos y solitarios hasta que el rey Cío el Terrible les acusó de arruinar las cosechas y ordenó la gran caza de gigantes. Sólo Gorg había sobrevivido, y desde entonces se había convertido en el más feroz de los seres que habían existido nunca; resultaba totalmente invencible y había acabado con cuantos habían tratado de adentrarse en su cueva, sin importar lo valientes o poderosos que fueran. '+char(13)+'
		Muchos reyes posteriores, avergonzados por las acciones de Cío, habían tratado de sellar la paz con Gorg, pero todo había sido en vano, pues su furia y su ira le llevaban a acabar con cuantos humanos veía, sin siquiera escucharlos. Y aunque los reyes dejaron tranquilo al gigante, no disminuyó su odio a los humanos, pues muchos aventureros y guerreros llegaban de todas partes tratando de hacerse con el fabuloso tesoro que guardaba la cueva en su interior.'),
	(5,'Sin embargo, un día la joven princesa fue mordida por una serpiente de los pantanos, cuyo antídoto tenía una elaboración secreta que sólo los gigantes conocían, así que el rey se vio obligado a suplicar al gigante su ayuda. Envió a sus mejores guerreros y a sus más valientes caballeros con la promesa de casarse con la princesa, pero ni sus mágicos escudos, ni las más poderosas armas, ni las más brillantes armaduras pudieron nada contra la furia del gigante. Finalmente, el rey suplicó ayuda a todo el reino: con la promesa de casarse con la princesa, y con la ayuda de los grandes magos, cualquier valiente podía acercarse a la entrada de la cueva, pedir la protección de algún conjuro, y tratar de conseguir la ayuda del gigante. '+char(13)+'
		Muchos lo intentaron armados de mil distintas maneras, protegidos por los más formidables conjuros, desde la Fuerza Prodigiosa a la Invisibilidad, pero todos sucumbieron. Finalmente, un joven músico apareció en la cueva armado sólo con un arpa, haciendo su petición a los magos: "quiero convertirme en una bella flor y tener la voz de un ángel".'),
	(5,'Así apareció en el umbral de la cueva una flor de increíble belleza, entonando una preciosa melodía al son del arpa. Al oír tan bella música, tan alejada de las armas y guerreros a que estaba acostumbrado, la ira del gigante fue disminuyendo. La flor siguió cantando mientras se acercaba al gigante, quien terminó tomándola en su mano para escucharla mejor. Y la canción se fue tornando en la historia de una joven princesa a punto de morir, a quien sólo un gigante de buen corazón podría salvar. El gigante, conmovido, escuchaba con emoción, y tanta era su calma y su tranquilidad, que finalmente la flor pudo dejar de cantar, y con voz suave contó la verdadera historia, la necesidad que tenía la princesa de la ayuda del gigante, y los deseos del rey de conseguir una paz justa y duradera. '+char(13)+'
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
	(6,'Había una vez, en un hermoso país, un rico comerciante que vivía feliz en compañía de su esposa y su hermosa hija. Un oscuro día, el comerciante enviudó, su esposa había contraído una misteriosa y terrible enfermedad. '+char(13)+'
		Fue así como empezó a vivir en soledad con su hija, en una enorme finca a las afueras del pueblo. Con el paso de los años, el padre de la joven decidió volver a casarse, por lo que contrajo matrimonio con una señora respetable, Lady Tremaine, una viuda con dos hijas, Drizella y Anastasia. '+char(13)+'
		El padre de la joven murió de forma inesperada y esto selló el destino de la joven. Lady Tremaine era una mujer muy cruel y egoísta, solo deseaba el bienestar de sus hijas y odiaba a su hijastra porque era más bonita y noble. '),
	(6,'Obligó a la joven a trabajar hasta el cansancio, tanto trabajó que su nombre pasó a ser Cenicienta, pues sus ropas siempre estaban llenas de cenizas de la chimenea. La pobre Cenicienta era la sirvienta de su propia casa, era humillada y maltratada, pero no por eso dejó de ser gentil. Su amabilidad la hizo convertirse en amiga de los ratones y pájaros que vivían cerca de la casa. '+char(13)+'
		Un día, mientras Cenicienta preparaba el desayuno, el malvado gato de Lady Tremaine, Lucifer, persiguió a uno de los ratones, Gus. El ratoncito en su inocencia se escondió detrás de la taza de té de Anastasia, dándole un susto de muerte. Anastasia acusó a Cenicienta ante su madre y está la castigó con tareas extras. '+char(13)+'
		Y así pasaron los días, hasta que llegó a la casa una invitación. El rey ofrecía un baile para que su hijo, el príncipe, escogiera su esposa.'),
	(6,'Drizella y Anastasia enloquecieron de alegría. Empezaron a pelear por los vestidos más hermosos y a gritar con sus estridentes voces hasta que Lady Tremaine intervino y le ordenó a la pobre Cenicienta que las peinara y creara para ellas los vestidos más hermosos. '+char(13)+'
		 — ¿Si lo hago podré ir? La invitación dice que deben ir todas las doncellas casaderas del reino—dijo Cenicienta con humildad. '+char(13)+'
		 — Si terminas tus tareas podrás ir—la malvada madrastra rompió a reír—. Si encuentras un vestido y no vas con esos harapos. No quiero que relacionen a mis hijas contigo. '+char(13)+'
		 Y así, Cenicienta añadió a sus tareas el tener que diseñar y coser vestidos para sus hermanas, probar peinados en ellas y maquillarlas. Solo con la ayuda de los pajaritos y ratoncitos pudo terminar sus tareas y arreglar un viejo y hermoso vestido que había heredado de su madre para poder asistir al baile. '),
	(6,'Al ver a Cenicienta bajar del ático más hermosa que ellas, la envidia de Drizella y Anastasia fue tal que se arrojaron sobre ella y destruyeron su vestido, acusándola de ladrona. La pobre Cenicienta corrió a refugiarse entre las calabazas, no paraba de llorar por haber perdido el vestido de su madre y no poder asistir al baile. '+char(13)+'
		Tanto lloró Cenicienta que fue escuchada por el hada madrina de los imposibles, quien se dirigió a su lado y la consoló. '+char(13)+'
		—Puedes ir al baile, pero debes regresar antes del término de las 12 campanadas que anuncian la medianoche—advirtió. '+char(13)+'
		Cenicienta estuvo de acuerdo y observó con asombro como el hada madrina convirtió su vestido harapiento y roto en un hermoso vestido blanco cubierto de diamantes. El hada también le dio dos hermosas zapatillas de cristal.'),
	(6,'Como faltaba un carruaje, el hada madrina transformó una calabaza del huerto en uno, los ratones los convirtió en caballos, al caballo de la finca en un cochero y al perro en un lacayo. '+char(13)+'
		Así, Cenicienta acudió al baile, donde el príncipe, cansado de sonsas doncellas, se había negado a bailar con ellas, hasta que sus ojos se toparon con Cenicienta, fue amor a primera vista. El príncipe la invitó a bailar y no se separaron durante toda la noche. Cenicienta se distrajo tanto que no escuchó el reloj empezar a dar las campanadas que anunciaban la medianoche. Cuando lo hizo, corrió fuera del castillo, dejando detrás una de sus zapatillas de cristal. '+char(13)+'
		Cenicienta llegó a la finca y descubrió que de su hermoso vestido solo quedaba una zapatilla de cristal. La escondió en su ático y esperó al regreso de su madrastra y hermanastras.  '+char(13)+'
		Mientras tanto en el palacio, el Gran Duque informó al Rey de la fuga de Cenicienta y que el príncipe había jurado casarse con ella. Lamentablemente, solo tenían en su poder la zapatilla de cristal, por lo que el príncipe debería casarse con la doncella a la cual le quedara tan delicada y fina pieza.'),
	(6,'Y así, el Duque empezó a recorrer todas las casas del reino donde viviera una doncella para probar la delicada zapatilla de cristal, pero a ninguna le quedó. Entonces, se dirigió a casa de Cenicienta, donde lo esperaba Lady Tremaine y sus hijas.  '+char(13)+'
		Lady Tremaine había escuchado tararear a Cenicienta la canción del baile en el palacio y sospechó de ella, por eso y antes que llegara el Duque, la encerró en el ático. '+char(13)+'
		Cuando llega el Duque, los dos ratoncitos amigos de Cenicienta, Jaq y Gus robaron la llave del ático y con ayuda de otros animales logran evadir al terrible Lucifer. '),
	(6,'Las hermanastras de Cenicienta no habían logrado que sus pies entraran en la zapatilla y el Duque estaba cada vez más desesperado. Para su suerte, Cenicienta llegó en ese momento y pidió probar la zapatilla. Lady Tremaine hizo tropezar al Duque, provocando que la zapatilla cayera al suelo y se rompiera en miles de pedazos. '+char(13)+'
		El Gran Duque se llenó de terror, pero Cenicienta sacó de su bolsillo la otra zapatilla de cristal, demostrando que ella era la doncella de la cual estaba enamorado el príncipe. El Duque probó la zapatilla en los pies de Cenicienta y esta calzó perfectamente. '+char(13)+'
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
	(7,'Un príncipe terriblemente desordenado nunca hace caso a sus padres cuando le piden orden. La princesa del reino vecino, de la que está enamorado en secreto, organiza un gran baile e invita a todos los príncipes de los alrededores. El príncipe está emocionado y lo prepara todo con esmero, pero el día del baile no encuentra la invitación entre el desorden de su cuarto. El busca desesperado y no la encuentra, y al final decide ordenar todo su cuarto, encontrando la invitación justo encima de la mesa. Para cuando llega al baile ya se marchaban todos y se vuelve muy triste y habiendo aprendido la lección. '+char(13)+'
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
	(8,'Hubo una vez una princesa increíblemente rica, bella y sabia. Cansada de pretendientes falsos que se acercaban a ella para conseguir sus riquezas, hizo publicar que se casaría con quien le llevase el regalo más valioso, tierno y sincero a la vez. El palacio se llenó de flores y regalos de todos los tipos y colores, de cartas de amor incomparables y de poetas enamorados. Y entre todos aquellos regalos magníficos, descubrió una piedra; una simple y sucia piedra. Intrigada, hizo llamar a quien se la había regalado. A pesar de su curiosidad, mostró estar muy ofendida cuando apareció el joven, y este se explicó diciendo: '+char(13)+'
		- Esa piedra representa lo más valioso que os puedo regalar, princesa: es mi corazón. Y también es sincera, porque aún no es vuestro y es duro como una piedra. Sólo cuando se llene de amor se ablandará y será más tierno que ningún otro.'),
	(8,'El joven se marchó tranquilamente, dejando a la princesa sorprendida y atrapada. Quedó tan enamorada que llevaba consigo la piedra a todas partes, y durante meses llenó al joven de regalos y atenciones, pero su corazón seguía siendo duro como la piedra en sus manos. Desanimada, terminó por arrojar la piedra al fuego; al momento vio cómo se deshacía la arena, y de aquella piedra tosca surgía una bella figura de oro. Entonces comprendió que ella misma tendría que ser como el fuego, y transformar cuanto tocaba separando lo inútil de lo importante.'),
	(8,'Durante los meses siguientes, la princesa se propuso cambiar en el reino, y como con la piedra, dedicó su vida, su sabiduría y sus riquezas a separar lo inútil de lo importante. Acabó con el lujo, las joyas y los excesos, y las gentes del país tuvieron comida y libros. Cuantos trataban con la princesa salían encantados por su carácter y cercanía, y su sola presencia transmitía tal calor humano y pasión por cuanto hacía, que comenzaron a llamarla cariñosamente "La princesa de fuego". '+char(13)+'
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
	(9,'En el fondo de los océanos había un precioso palacio en el cual vivía el Rey del Mar junto a sus cinco hijas, bellísimas sirenas. La más joven, la Sirenita, además de ser la más hermosa, poseía una voz maravillosa. '+char(13)+'
		Cuando cantaba, todos los habitantes del fondo del mar acudían para escucharla. Además de cantar, Sirenita soñaba con salir a la superficie para ver el cielo y conocer el mundo de los hombres, como lo relataban sus hermanas. '+char(13)+'
		Pero su padre le decía que solo cuando cumpliera los 15 años tendría su permiso para hacerlo. Pasados los años, finalmente llegaron el cumpleaños y el regalo tan deseados. '+char(13)+'
		Sirenita por fin pudo salir a respirar el aire y ver el cielo, después de oír los consejos de su padre: Recuerda que el mundo de arriba no es el nuestro, sólo podemos admirarlo. Somos hijos del mar. Sé prudente y no te acerques a los hombres'),
	(9,'Y al emergerse del agua Sirenita se quedó de boca abierta. Todo era nuevo para ella. Y todo era hermoso, ¡fascinante! Sirenita era feliz. Pasados unos minutos, Sirenita pudo observar, con asombro, que un barco se acercaba y paraba. Se puso a escuchar voces. Y pensó en lo cuanto le gustaría hablar con ellos. '+char(13)+'
		Pero miró a su larga cola y comprendió que eso era imposible. Continuó mirando al barco. A bordo había una gran fiesta de aniversario. El capitán del barco cumplía veinte años de edad. '+char(13)+'
		Sirenita se quedó atónita al ver el joven. Era alto, moreno, de porte real, y sonreía feliz. La Sirenita sintió una extraña sensación de alegría y sufrimiento a la vez. '+char(13)+'
		Algo que jamás había sentido en su corazón. La fiesta seguía hasta que repentinamente un viento fuerte agitó las olas, sacudiendo y posteriormente volcando el barco. Sirenita vio como el joven capitán caía al mar.'),
	(9,'Nadó lo que pudo para socorrerlo, hasta que le tuvo en sus brazos. El joven estaba inconsciente, pero Sirenita nadó lo que pudo para llevarlo hasta tierra. Depositó el cuerpo del joven sobre la arena de la playa y estuvo frotando sus manos intentando despertarlo. '+char(13)+'
		Pero un murmullo de voces que se aproximaban la obligaron a refugiarse en el mar. Desde el mar, vio como el joven recobraba el conocimiento y agradecía, equivocadamente, a una joven dama por haberle salvado la vida. '+char(13)+'
		Sirenita volvió a la mansión paterna y les contó toda su experiencia. Después pasó días llorando en su habitación. Se había enamorado del joven capitán pero sentía que jamás podría estar con él.'),
	(9,'Días después, Sirenita acudió desesperada a la casa de la Hechicera de los Abismos. Quería deshacerse de su cola de pez a cualquier precio. E hicieron un trato: Sirenita tendría dos piernas a cambio de regalar su hermosa voz a la hechicera que le advirtió: "Si el hombre que amas se casa con otra, tu cuerpo desaparecerá en el agua como la espuma de una ola". '+char(13)+'
		Asintiendo a las condiciones de la hechicera, Sirenita bebió la pócima mágica e inmediatamente perdió el conocimiento. Cuando despertó se encontraba tendida en la arena de la playa, y a su lado estaba el joven capitán que intentaba ayudarla a levantarse. Y le dijo: "te llevaré al castillo y te curaré". '+char(13)+'
		Durante los días siguientes, Sirenita pasó a vestirse como una dama, y acompañaba al príncipe en sus paseos. Era invitada a los bailes de la corte pero como no podía hablar, no podía explicar al príncipe lo que había sucedido en la noche que le salvó.'),
	(9,'El príncipe no paraba de pensar en la dama que pensaba haber salvado su vida y Sirenita se daba cuenta de eso. Pero el destino le reservaba otra sorpresa. '+char(13)+'
		Un día, avistaron un gran barco que se acercaba al puerto. El barco traía una desconocida que enseguida llamó la atención del príncipe. Sirenita sintió un agudo dolor en su corazón, y sintió que perdería a su príncipe para siempre. '+char(13)+'
		El príncipe quedó prendado de la joven desconocida, que no era otra que la bruja disfrazada, y al haberle robado su voz, el príncipe creyó que era su salvadora y se enamoró de ella.  '+char(13)+'
		Le pidió matrimonio, y para celebrarlo fueron invitados a hacer un gran viaje por mar al día siguiente, acompañados también por la Sirenita. Al caer la noche, Sirenita, recordando el acuerdo que había hecho con la hechicera, estaba dispuesta a sacrificar su vida y a desaparecer en el mar, hasta que escuchó la llamada de sus hermanas.'),
	(9,'- ¡Sirenita! ¡Sirenita! ¡Somos nosotras, tus hermanas!. Escucha con atención, hay una forma de romper el hechizo y recuperar la voz que la bruja te ha robado. Si besas al príncipe conseguirás que se enamore de ti y se rompa el encantamiento. '+char(13)+'
		La Sirenita corrió y corrió hasta el gran salón donde iba a comenzar la ceremonia de boda. Se lanzó a los brazos del príncipe y le besó, dejando a todos boquiabiertos. '+char(13)+'
		La hechicera recuperó su desagradable voz y aspecto, y la Sirenita pudo explicar lo que había ocurrido realmente. La bruja fue encerrada en el calabozo, y el príncipe se disculpó con la Sirenita. '+char(13)+'
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
	(10,'Había una vez dos bellas princesas María la mayor y Alejandra la menor que, siendo aún pequeñas, habían sido raptadas por un rey enemigo. Éste había ordenado llevarlas a un lago perdido, y abandonarlas en una pequeña isla, donde permanecerían para siempre custodiadas por un terrible monstruo marino. '+char(13)+'
		Sólo cuando el malvado rey y su corte de brujos y adivinos fueron derrotados, pudieron en aquel país descubrir que en el destino estaba escrito que llegaría el día en que un valiente príncipe liberaría a las princesas de su encierro.'),
	(10,'Cuando el viento llevó la noticia a la isla, llenó de esperanza la vida de las princesas. La más pequeña, mucho más bella y dulce que su hermana, esperaba pacientemente a su enamorado, moldeando pequeños adornos de flores y barro, y cantando canciones de amor.La mayor, sin embargo, no se sentía a gusto esperando sin más. "Algo tendré que hacer para ayudar al príncipe a rescatarme. Que por lo menos sepa dónde estoy, o cómo es el monstruo que me vigila." Y decidida a facilitar el trabajo del príncipe, se dedicó a crear hogueras, construir torres, cavar túneles y mil cosas más. Pero el temible monstruo marino fastidiaba siempre sus planes.'),
	(10,'Con el paso del tiempo, la hermana mayor se sentía más incómoda. Sabía que el príncipe elegiría a la pequeña, así que no tenía mucho sentido seguir esperando. Desde entonces, la joven dedicó sus esfuerzos a tratar de escapar de la isla y del monstruo, sin preocuparse por si finalmente el príncipe aparecería para salvarla o no. '+char(13)+'
		Cada mañana preparaba un plan de huída diferente, que el gran monstruo siempre terminaba arruinando. Los intentos de fuga y las capturas se sucedían día tras día, y se convirtieron en una especie de juego de ingenio entre la princesa y su guardián. Cada intento de escapada era más original e ingenioso, y cada forma de descubrirlo más sutil y sorprendente. Ponían tanto empeño e imaginación en sus planes, que al acabar el juego pasaban horas comentando amistosamente cómo habían preparado su estrategia. Y al salir la luna, se despedían hasta el día siguiente y el monstruo volvía a las profundidades del lago.'),
	(10,'Un día, el monstruo despidió a la princesa diciendo: '+char(13)+'
		- Mañana te dejaré marchar. Eres una joven lista y valiente. No mereces seguir atrapada. '+char(13)+'
		Pero a la mañana siguiente la princesa no intentó escapar. Se quedó sentada junto a la orilla, esperando a que apareciera el monstruo. '+char(13)+'
		- ¿Por qué no te has marchado? '+char(13)+'
		- No quería dejarte aquí solo. Es verdad que das bastante miedo, y eres enorme, pero tú también eres listo y mereces algo más que vigilar princesas. ¿Por qué no vienes conmigo? '+char(13)+'
		- No puedo- respondió con gran pena el monstruo-. No puedo separarme de la isla, pues a ella me ata una gran cadena. Tienes que irte sola.'),
	(10,'La joven se acercó a la horrible fiera y la abrazó con todas sus fuerzas. Tan fuerte lo hizo, que el animal explotó en mil pedazos. Y de entre tantos pedacitos, surgió un joven risueño y delgaducho, pero con esa misma mirada inteligente que tenía su amigo el monstruo. '+char(13)+'
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
	

