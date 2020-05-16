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
--VALUES(1,'En una vieja carpinter�a, Geppetto, un se�or amable y simp�tico, terminaba un d�a m�s de trabajo dando los �ltimos retoques de pintura a un mu�eco de madera que hab�a construido.
--Al mirarlo, pens�: �qu� bonito me ha quedado! Y como el mu�eco hab�a sido hecho de madera de pino, Geppetto decidi� llamarlo Pinocho. Aquella noche, Geppeto se fue a dormir deseando que su mu�eco fuese un ni�o de verdad.'),
--(1,'Siempre hab�a deseado tener un hijo. Y al encontrarse profundamente dormido, lleg� un hada buena y viendo a Pinocho tan bonito, quiso premiar al buen carpintero, dando, con su varita m�gica, vida al mu�eco.
--Al d�a siguiente, cuando se despert�, Geppetto no daba cr�dito a sus ojos: Pinocho se mov�a, caminaba, se re�a y hablaba como un ni�o de verdad, para alegr�a del viejo carpintero.'),
--(1,'Feliz y muy satisfecho, Geppeto mand� a Pinocho a la escuela. Quer�a que fuese un ni�o muy listo y que aprendiera muchas cosas. Le acompa�� su amigo Pepito Grillo, el consejero que le hab�a dado el hada buena.
--Pero, en el camino del colegio, Pinocho se hizo amigo de dos ni�os muy malos, siguiendo sus travesuras, e ignorando los consejos del grillito. En lugar de ir a la escuela, Pinocho decidi� seguir a sus nuevos amigos, buscando aventuras no muy buenas.
--Al ver esta situaci�n, el hada buena le hechiz�. Por no ir a la escuela, le coloc� dos orejas de burro, y por portarse mal, le dijo que cada vez que dijera una mentira, le crecer�a la nariz, poni�ndosele adem�s colorada.'),
--(1,'Pinocho acab� reconociendo que no estaba siendo bueno, y arrepentido decidi� buscar a Geppetto. Supo entonces que Geppeto, al salir en su busca por el mar, hab�a sido tragado por una enorme ballena. Pinocho, con la ayuda del grillito, se fue a la mar para rescatar al pobre viejecito.
--Cuando Pinocho estuvo frente a la ballena le pidi� que le devolviese a su pap�, pero la ballena abri� su enorme boca y se lo trag� tambi�n a �l. Dentro de la tripa de la ballena, Geppetto y Pinocho se reencontraron. Y se pusieran a pensar c�mo salir de all�.'),
--(1,'Y gracias a Pepito Grillo encontraron una salida. Hicieron una fogata. El fuego hizo estornudar a la enorme ballena, y la balsa sali� volando con sus tres tripulantes.
--Todos se salvaron. Pinocho volvi� a casa y al colegio, y a partir de ese d�a siempre se comport� bien. Y en recompensa de su bondad, el hada buena lo convirti� en un ni�o de carne y hueso, y fueron muy felices por muchos y muchos a�os.')
--INSERT INTO Question(IdContent,Text)
--VALUES(1,'�Por qu� el personaje principal del cuento se llamaba Pinocho?'),
--(1,'�Cu�l era el deseo m�s grande de Geppetto?'),
--(1,'�Qui�n era Pepito Grillo?')
--INSERT INTO Answer(IdQuestion,IsCorrect,Text) VALUES
--(1,0, 'Escucho el nombre y le gusto.'),
--(1,0, 'Un vecino se lo recomendo.'),
--(1,1, 'Porque estaba hecho de pino.'),
--(1,0, 'Asi se llamaba su Hermano.'),
--(2,0, 'Tener una gran carpinteria.'),
--(2,0, 'Poder volar.'),
--(2,1, 'Que su mu�eco fuese un ni�o de verdad.'),
--(2,0, 'Que su mu�eco estuviera terminado.'),
--(3,0, 'Un amigo cercano.'),
--(3,0, 'Su vecino.'),
--(3,0, 'Un cantante famoso.'),
--(3,1, 'El consejero que le hab�a dado el hada buena.')

INSERT INTO TypeContent([Name]) VALUES('Aventura'),('Suspenso'), ('Leyendas'),('Princesas'),('Fabulas'), ('Informativos'), ('Clasicos'), ('Ciencia Ficcion'), ('Historicos'), ('Valores')
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Aladino y la lampara maravillosa')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(1,'Erase una vez un muchacho llamado Aladino que viv�a en el lejano Oriente con su madre, en una casa sencilla y humilde. Ten�an lo justo para vivir, as� que cada d�a, Aladino recorr�a el centro de la ciudad en busca de alg�n alimento que llevarse a la boca. '+char(13)+'
		En una ocasi�n paseaba entre los puestos de fruta del mercado, cuando se cruz� con un hombre muy extra�o con pinta de extranjero. Aladino se qued� sorprendido al escuchar que le llamaba por su nombre. '+char(13)+'
		� �T� eres Aladino, el hijo del sastre, verdad? '+char(13)+'
		� S�, y es cierto que mi padre era sastre, pero� �Qui�n es usted? '+char(13)+'
		� �Soy tu t�o! No me reconoces porque hace muchos a�os que no vengo por aqu�. Veo que llevas ropas muy viejas y me apena verte tan flaco. Imagino que en tu casa no sobra el dinero�'),
	(1,'Aladino baj� el cabeza un poco avergonzado. Parec�a un mendigo y su cara morena estaba tan huesuda que le hac�a parecer mucho mayor. '+char(13)+'
		� Yo te ayudar�, pero a cambio necesito que me hagas un favor. Ven conmigo y si haces lo que te indique, te dar� una moneda de plata. '+char(13)+'
		A Aladino le sorprendi�  la oferta de ese desconocido, pero como no ten�a nada que perder, le acompa�� hasta una zona apartada del bosque. Una vez all�, se pararon frente a una cueva escondida en la monta�a. La entrada era muy estrecha. '+char(13)+'
		� Aladino, yo soy demasiado grande y no quepo por el agujero. Entra t� y tr�eme una l�mpara de aceite muy antigua  que ver�s al fondo del pasadizo. No quiero que toques nada m�s, s�lo la l�mpara �Entendido?'),
	(1,'Aladino dijo s� con la cabeza y penetr� en un largo corredor bajo tierra que terminaba en una gran sala con paredes de piedra. Cuando accedi� a ella, se qued� asombrado. Efectivamente, vio la vieja l�mpara encendida, pero eso no era todo: la tenue luz le permiti� distinguir cientos de joyas, monedas y piedras preciosas, amontonadas en el suelo  �Jam�s hab�a visto tanta riqueza! '+char(13)+'
		Se dio prisa en coger la l�mpara, pero no pudo evitar llenarse los bolsillos todo lo que pudo de algunos de esos tesoros que encontr�. Lo que m�s le gust�, fue un ostentoso y brillante anillo que se puso en el dedo �ndice. '),
	(1,'� �Qu� anillo tan bonito! �Y encaja perfectamente en mi dedo! '+char(13)+'
		Volvi� hacia la entrada y al asomar la cabeza por el orificio, el hombre le dijo: '+char(13)+'
		� Dame la l�mpara, Aladino. '+char(13)+'
		� Te la dar�, pero antes d�jame salir de aqu�. '+char(13)+'
		� �Te he dicho que primero quiero que me des la l�mpara! '+char(13)+'
		� �No, no pienso hacerlo! '+char(13)+'
		El extranjero se enfureci� tanto que tap� la entrada con una gran losa de piedra, dejando al chico encerrado en el h�medo y oscuro pasadizo subterr�neo. '+char(13)+'
		�Qu� pod�a hacer ahora? �C�mo salir de ah� con vida?�'),
	(1,'Recorri� el lugar con la miraba tratando de encontrar una soluci�n. Estaba absorto en sus pensamientos cuando, sin querer, acarici� el anillo y de �l sali� un genio �Aladino casi se muere del susto! '+char(13)+'
		� �Qu� deseas, mi amo? P�deme lo que quieras que te lo conceder�. '+char(13)+'
		El chico, con los ojos llenos de l�grimas, le dijo: '+char(13)+' 
		� Oh, bueno� Yo s�lo quiero regresar a mi casa. '+char(13)+'
		En cuanto pronunci� estas palabras, como por arte de magia apareci� en su hogar. Su madre le recibi� con un gran abrazo. Con unos nervios que le temblaba todo el cuerpo, intent� contarle a la buena mujer todo lo sucedido. Despu�s, m�s tranquilo, cogi� un pa�o de algod�n para limpiar la sucia y vieja l�mpara de aceite. En cuanto la frot�, otro genio sali� de ella. '+char(13)+'
		� Estoy aqu� para concederle un deseo, se�or.'),
	(1,'Aladino y su madre se miraron estupefactos �Dos genios en un d�a era mucho m�s de lo que uno pod�a esperar! El muchacho se lanz� a pedir lo que m�s le apetec�a en ese momento. '+char(13)+'
		� �Estamos deseando comer! �Qu� tal alguna cosa rica para saciar toda el hambre acumulada durante a�os? '+char(13)+'
		Acto seguido, la vieja mesa de madera del comedor se llen� de deliciosos manjares que en su vida hab�an probado. Sin duda, disfrutaron de la mejor comida que pod�an imaginar. Pero eso no acab� ah� porque, a partir de entonces y gracias a la l�mpara que ahora estaba en su poder, Aladino y su madre vivieron c�modamente; todo lo que necesitaban pod�an ped�rselo al genio. Procuraban no abusar de �l y se limitaban a solicitar lo justo para vivir sin estrecheces, pero no volvi� a faltarles de nada. '+char(13)+'
		Un d�a, en uno de sus paseos matutinos, Aladino vio pasar, subida en una litera, a una mujer bell�sima de la que se enamor� instant�neamente. Era la hija del sult�n. Regres� a casa y como no pod�a dejar de pensar en ella, le dijo a su madre que ten�a que hacer todo lo posible para que fuera su esposa.'),
	(1,'�Esta vez s� tendr�a que abusar un poco de la generosidad del genio para llevar a cabo su plan! Frot� la l�mpara maravillosa y le pidi� tener una vivienda lujosa con hermosos jardines, y  c�mo no, ropas adecuadas para presentarse ante el sult�n, a quien quer�a pedir la mano de su hija. Solicit� tambi�n un s�quito de lacayos montados sobre esbeltos corceles, que tiraran de carruajes repletos de riquezas para ofrecer al poderoso emperador. Con todo esto se present� ante �l y tan impresionado qued�, que acept� que su bella y bondadosa hija fuera su esposa. '+char(13)+'
		Aladino y la princesa Halima, que as� se llamaba, se casaron unas semanas despu�s y desde el principio, fueron muy felices. Ten�an amor y viv�an el uno para el otro. '+char(13)+'
		Pero una tarde, Halima vio por la casa la vieja l�mpara de aceite y como no sab�a nada, se la vendi� a un trapero que iba por las calles comprando cachivaches. Por desgracia, result� ser el hombre malvado que hab�a encerrado a Aladino en la cueva. Deseando vengarse, el viejo recurri� al genio de la l�mpara y le orden�, como nuevo due�o, que todo lo que ten�a Aladino, incluida su mujer, fuera trasladado a un lugar muy lejano.'),
	(1,'Y as� fue� Cuando el pobre Aladino regres� a su hogar, no estaba su casa, ni sus criados, ni su esposa� Ya no ten�a nada de nada. '+char(13)+'
		Comenz� a llorar con desesperaci�n y record� que el anillo que llevaba en su dedo �ndice tambi�n pod�a ayudarle. Lo acarici� y pidi� al genio que le devolviera todo lo que era suyo pero, desgraciadamente, el genio del anillo no era tan poderoso como el de la l�mpara. '+char(13)+'
		� Mi amo, es imposible para m� concederte esa petici�n, pero s� puedo llevarte hasta donde est� tu mujer.'),
	(1,'Aladino acept� y autom�ticamente se encontr� en un lejano lugar junto a su bella Halima, que por fortuna, estaba sana y salva. Sab�an que s�lo hab�a una opci�n: recuperar la l�mpara maravillosa como fuera para poder regresar a la ciudad con todas sus posesiones. Juntos, idearon un nuevo plan. Pidieron al genio del anillo una dosis de veneno y Aladino fue a esconderse. A  la hora de la cena, Halima entr� sigilosamente en la cocina del malvado extranjero y  lo ech� en el vino sin que �ste se diera cuenta. En cuanto se sirvi� una copa y moj� sus labios, cay� dormido en un sue�o que, tal como les hab�a prometido  el genio, durar�a cientos de a�os. '+char(13)+'
		Aladino y Halima se abrazaron y corrieron a recuperar su l�mpara. Fue entonces cuando le cont� a su mujer toda la historia y el poder que la l�mpara de aceite ten�a.'),
	(1,'� Y ahora que ya lo sabes todo, querida, volvamos a nuestro hogar. '+char(13)+'
		Frot� la l�mpara y como siempre, sali� el gran genio que siempre conced�a todos los deseos de su se�or. '+char(13)+'
		� �Qu� deseas esta vez, mi amo? '+char(13)+'
		� �Hoy me alegro m�s que nunca de verte! �Ll�vanos a casa, viejo amigo! � dijo Aladino riendo de felicidad. '+char(13)+'
		�Y as� fue! Halima y Aladino regresaron,  y con ellos, todo lo que el viejo les hab�a robado. A partir de entonces, guardaron la l�mpara maravillosa a buen recaudo y continuaron siendo tan felices como lo hab�an sido hasta entonces.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(1,'�Qu� familiar de Aladin dijo ser el extranjero?'),
	(1,'�El extranjero que mand� a buscar a Aladin en la cueva de la monta�a?'),
	(1,'�Qu� fue lo que mas le gusto a Aladin dentro de la cueva de la monta�a?'),
	(1,'�Que conten�a la l�mpara de aceite que era tan importante para el extranjero?'),
	(1,'�Que cu�l fue el primer deseo que pidi� aladin? '),
	(1,'6.	�Cual era el nombre de la hija del sult�n?'),
	(1,'7.	�C�mo termina el cuento?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(1,0, 'Un amigo de su pap�'),
	(1,0, 'Un primo'),
	(1,1, 'Un tio'),
	(1,0, 'Ninguno de los anteriores'),

	(2,1, 'Una l�mpara de aceite'),
	(2,0, 'Un collar de diamantes'),
	(2,0, 'Una alfombra'),
	(2,0, 'Un anillo de plata'),

	(3,0, 'Las monedas de oro'),
	(3,0, 'Un collar de diamantes'),
	(3,0, 'Una estatua de oro'),
	(3,1, 'Un anillo '),

	(4,0, 'Aceite'),
	(4,1, 'Un genio m�gico'),
	(4,0, 'Agua'),
	(4,0, 'Estaba vac�a'),

	(5,0, 'Tener que comer'),
	(5,0, 'Ser un gran sultan '),
	(5,1, 'Regresar a casa'),
	(5,0, 'Ser m�s apuesto'),

	(6,0, 'Halima'),
	(6,0, 'Carolina'),
	(6,0, 'Maria '),
	(6,0, 'Keral'),

	(7,0, 'Aladin pierde la l�mpara y con ella su riqueza'),
	(7,0, 'Aladin se casa con una hermosa llamada Keral'),
	(7,0, 'Ninguna de las anteriores'),
	(7,1, 'Aladin y Halima viven feliz para siempre')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Atrapados en Tururulandia')
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(2,'Tururulandia era un peque�o y precioso pa�s de juguete que hab�a hecho Paulina Perfectina con sus construcciones. Paulina cuidaba constantemente Tururulandia para que todo estuviera en orden, y manten�a los mu�ecos rojos junto a sus casas rojas, y los ni�os verdes jugando en los columpios de los parques verdes, y los pap�s hablando todo el d�a junto a la plaza. Era un pa�s tan bonito y perfecto, que Paulina so�aba con poder llegar a vivir un d�a en Tururulandia. '+char(13)+'
        Y sin saber c�mo ni por qu�, su sue�o se cumpli�, y un d�a despert� en mitad de Tururulandia, vestida toda de rosa, y hecha de piececitas de juguete. �qu� maravilla! � todo era como ella conoc�a! Y era realmente precioso.'),
	(2,'Paulina esta totalmente feliz, y tras la primera sorpresa, corri� a ver los columpios de los ni�os del parque verde. Pero antes de que pudiera llegar, una mano gigante la alcanz�, y tom�ndola de un brazo, la llev� de nuevo junto al gran palacio rosa. Paulina qued� un poco extra�ada, pero enseguida lo olvid�, porque vio sus queridas casas rojas, y hacia all� se dirigi�. Pero nuevamente, antes de llegar a ellas, la gran mano volvi� a aparecer, y la volvi� a dejar junto al palacio. '+char(13)+'
        - No te esfuerces-dijo una princesita rosa que asomaba por uno de los balcones- nunca podr�s abandonar la zona rosa'),
	(2,'Entonces la princesita explic� a Paulina c�mo la gran mano nunca dejaba moverse a nadie en Tururulandia, y que aquel era el pa�s m�s triste del mundo, porque nadie pod�a decidir qu� hac�a ni d�nde iba. Y Paulita mir� las caras de todas las figuritas y mu�ecos, y comprob� que era verdad. Y se dio cuenta de que aquella gran mano era la suya, la que utilizaba siempre para mantenerlo todo como ella quer�a. '+char(13)+'
        - �Pero entonces? �No os gusta vivir en un pa�s tan bonito y organizado? - termin� preguntando Paulina. '+char(13)+'
        - Si no podemos elegir qu� hacemos o a d�nde vamos, �para qu� nos sirve todo esto? '+char(13)+'
        - le respondieron - Si tan s�lo tuvi�ramos un d�a para ver otras cosas... �no lo entiendes?'),
	(2,'Y vaya si lo entendi�. Tras unos pocos d�as sin poder decidir nada por s� misma, ni moverse del castillo rosa, Paulina estaba profundamente triste; tanto, que su precioso pa�s le daba totalmente igual. '+char(13)+'
        Hasta que una ma�ana, se despert� de nuevo en su vida normal, y al llegar junto a su pa�s de juguete, lo primero que hizo fue cambiar las figuritas de sitio. Y as�, cada vez que encontraba una fuera de su lugar, en vez de devolverla inmediatamente a su sitio, esperaba un d�a, para que tuviera tiempo de disfrutar de aquel bello pa�s.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(2,'�Que era Tururulandia?'),
	(2,'�Como se llamaba la ni�a del cuento?'),
	(2,'�Cu�l era m�s so�aba paulina??'),
	(2,'�Por qu� Tururulandia era un lugar muy triste?'),
	(2,'�Cu�l valor es lo que aporta esta lectura?')
	
INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(8,0, 'Era un pa�s en isla muy lejana'),
	(8,1, 'Era un peque�o y precioso pa�s de juguete'),
	(8,0, 'Era un pueblo habitado duendes'),
	(8,0, 'Es una ciudad donde las personas son muy felices'),

	(9,1, 'Paulina'),
	(9,0, 'Mar�a'),
	(9,0, 'Fernanda '),
	(9,0, 'Carolina'),

	(10,0, 'Un amigo cercano.'),
	(10,0, 'Su vecino.'),
	(10,0, 'Un cantante famoso.'),
	(10,1, 'El consejero que le hab�a dado el hada buena.'),

	(11,0, 'Porque su reina estaba enferma'),
	(11,0, 'No eran muy peque�os'),
	(11,0, 'Las personas eran muy malas'),
	(11,1, 'Nunca se le dejaba moverse a nadie '),

	(12,0, 'La libertad'),
	(12,0, 'La justicia'),
	(12,0, 'La responsabilidad'),
	(12,0, 'La equidad de genero')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Blancanieves y los 7 enanitos')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(3,'Blancanieves era una ni�a muy bonita y de dulce coraz�n. Siendo peque�a, su madre muri� y su padre volvi� a casarse con otra mujer, una malvada reina de nombre Grimhilde. Era una mujer terrible que envidiaba a la joven princesa por su belleza. '+char(13)+'
		La madrastra de Blancanieves tambi�n era muy vanidosa, ten�a un espejo m�gico que siempre le dec�a qui�n era la mujer m�s hermosa de todo el reino. Por eso, cada d�a y como parte de su rutina, ella le preguntaba: '+char(13)+'
		� Espejito, espejito, �Podr�as decirme tu qui�n es la m�s guapa de todo el reino? '+char(13)+'
		� Eres t� mi se�ora, la mujer m�s hermosa de todas '+char(13)+'
		- respond�a el espejo con voz profunda y oscura.'),
	(3,'Con el paso del tiempo, Blancanieves creci� y se convirti� en una hermosa jovencita. Cierto d�a, cuando Grimhilde pregunt� al espejo qui�n era la m�s bonita este respondi�: '+char(13)+'
		� Mi se�ora, eres muy hermosa, pero Blancanieves te ha superado. '+char(13)+'
		Al escuchar tal respuesta, la malvada reina enfureci�, pues no pod�a concebir que una ni�a fuera m�s hermosa que ella. Por eso, reuni� a sus sirvientes y al cazador del castillo y les orden�: '+char(13)+'
		� Mi querido espejo ha dicho que Blancanieves es m�s hermosa que yo. Os ordeno que lleven a Blancanieves al bosque y acaben con ella. Para estar segura que hab�is cumplido con mi orden, quiero que me traigan su coraz�n en una caja. '),
	(3,'Los sirvientes y el cazador se llevaron a Blancanieves a dar un paseo por el bosque. La joven no sospech� nada y se entretuvo jugando con los pajaritos y las flores del bosque. Los sirvientes no pudieron cumplir la orden, la joven era muy noble y buena como para morir por su mano. '+char(13)+'
		� Huye muy lejos, tu madrastra te quiere muerta '+char(13)+'
		� advirti� el cazador '+char(13)+'
		� Yo le llevar� el coraz�n de un jabal� para enga�arla y ganar tiempo.'),
	(3,'Blancanieves huy� a trav�s del bosque durante horas, cuando estaba muy agotada y a punto de desfallecer, encontr� una bonita caba�a en el bosque. Entr� y descubri� que todo en su interior era muy peque�o y sucio. Hab�a 7 sillas, siete camas y siete platos con comida. Blancanieves estaba muy hambrienta y cansada, as� que se comi� todo, limpi� la casita y se fue a dormir sobre las siete camitas. '+char(13)+'
		Los due�os de esta caba�a eran 7 enanitos que trabajaban en una mina cercana. Al descubrir su casa invadida por tan hermosa ni�a sus corazones se enternecieron. Blancanieves les cont� los terribles planes de su madrastra y ellos le permitieron quedarse '),
	(3,'La malvada reina Grimhilde no se daba por vencida y volvi� a preguntar a su espejo qui�n era la mujer m�s guapa de todo el reino. El espejo no pod�a mentir, as� que respondi�: '+char(13)+'
		� Tu eres hermosa, pero Blancanieves sigue siendo la mujer m�s guapa de todas. '+char(13)+'
		� Eso es imposible, me trajeron su coraz�n en una caja '+char(13)+'
		� espet� llena de furia. '+char(13)+'
		� Fue enga�ada, mi ama. Blancanieves no est� muerta, vive en una caba�a del bosque con siete enanitos. '),
	(3,'La madrastra enfadada decidi� terminar el trabajo por su cuenta. Envenen� varias manzanas, se disfraz� de humilde anciana y se dirigi� a la casita de los enanos. Al llegar, toc� la puerta y Blancanieves la recibi�. '+char(13)+'
		� �Qui�n es? '+char(13)+'
		� Ay mi ni�a, soy una pobre anciana que vive cerca de aqu�. Vine a traerte estas hermosas manzanas.  '+char(13)+'
		Blancanieves no pudo resistirse a la m�gica belleza de las manzanas. Tom� una y pronto cay� muerta sobre el suelo. La malvada madrastra march� entonces, riendo macabramente porque hab�a logrado su cometido, ahora era la mujer m�s bella de todas. '+char(13)+'
		La terrible mujer se marchaba riendo mucho y muy alegre de que por fin hab�a logrado acabar con Blancanieves y ser ella la m�s hermosa de todas. '),
	(3,'Cuando los enanitos llegaron a casa y descubrieron lo que hab�a pasado, se pusieron muy tristes. Construyeron una hermosa caja de cristal en la que dejaron a Blancanieves, luego la llevaron al bosque.'+char(13)+'
		Un d�a, un pr�ncipe paseaba por el lugar, descubri� a Blancanieves y prendado de su belleza y triste por la suerte de los enanitos, abri� la caja y bes� a Blancanieves. '+char(13)+'
		Aquel beso lleno de amor deshizo el hechizo de la malvada bruja, la joven despert� y pronto se vio rodeada de sus siete enanitos y un pr�ncipe encantador. '+char(13)+'
		El pr�ncipe se cas� con Blancanieves y la llev� a vivir a su palacio junto a los siete enanitos. Todos fueron felices para siempre.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(3,'�Cu�l era el nombre de la madrasta de Blancanieves?'),
	(3,'�A que objecto la madrastra de Blancanieves le preguntaba qui�n era la m�s hermosa del reino?'),
	(3,'�La madrastra a quienes ordeno que se desasieran de Blancanieves?'),
	(3,'�Cu�ntos enanitos eran los que viven en la casa que encontr� Blancanieves en el bosque?'),
	(3,'�De que se disfraz� la madrastra de Blancanieves para ir a visitarla al bosque?'),
	(3,'6.	�Qu� es lo que madrastra le dio a Blancanieves cuando la visito?'),
	(3,'7.	�Qu� fue lo que rompi� el hechizo de Blancanieves?'),
	(3,'8.	�Qu� paso al final del cuento?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(13,0, 'Malefica'),
	(13,0, 'Carolina'),
	(13,0, 'Karla'),
	(13,1, 'Grimhilde'),

	(14,1, 'Un espejo M�gico'),
	(14,0, 'Un pozo m�gico'),
	(14,0, 'Una lampara m�gico'),
	(14,0, 'Ninguna de las anteriores'),

	(15,1, 'A sus sirvientes y al cazador del reino'),
	(15,0, 'A unos campesinos'),
	(15,0, 'A un ladr�n'),
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

	(19,0, 'La p�cima que le dio a beber el pr�ncipe'),
	(19,1, 'Un beso del pr�ncipe'),
	(19,0, 'La madrasta le retiro el hechizo'),
	(10,0, 'Ninguna de anteriores'),

	(20,0, 'El pr�ncipe de baso con Blancanieves'),
	(20,1, 'Blancanieves no se cas� con el pr�ncipe'),
	(20,0, 'La madrasta fue a la c�rcel por sus acciones cometidas'),
	(20,0, 'Ninguna de las anteriores')




INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'El viaje de las hijas del sultan')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(4,'Hubo una vez un viejo sult�n preocupado porque a�n no hab�a decidido a cu�l de sus hijas dejar el trono. Su amigo el visir le aconsej�: '+char(13)+'
		- Ponlas a prueba. La vida es un largo viaje �no? Pues ll�valas a un lugar remoto y que cada un viaje hasta aqu� por su cuenta. J�zgalas a su vuelta por lo que hayan aprendido. '+char(13)+'
		- �Y si algo les ocurriera? '+char(13)+'
		- No se preocupe, majestad. Dejar� que les guarde y acompa�e un animal de su elecci�n.'),
	(4,'Ara y Taira, las princesas, fueron llevadas muy lejos, y all� pudieron elegir su animal protector. Ara eligi� un magn�fico y poderoso tigre que no desentonaba ni con la belleza ni con el car�cter valiente e impetuoso de la princesa. '+char(13)+'
		- Me encanta ese tigre- dijo Taira- pero yo no lo escoger�a para un viaje tan largo. Los tigres son peligrosos y dif�ciles de controlar. '+char(13)+'
		- No te preocupes, hermanita, yo sabr� dominarlo- respondi� Ara al emprender el camino de vuelta. '+char(13)+'
		Taira pas� alg�n tiempo conociendo a los animales antes de elegir su compa�ero. Y aunque los animales bellos y ex�ticos le parec�an maravillosos, se decidi� por un perro de ojos inteligentes, simp�tico y bonach�n, con el que se entend�a a las mil maravillas. '+char(13)+''),
	(4,'El viaje result� muy extra�o. Cada vez que pasaban por alg�n pueblo o ciudad, Ara y su tigre levantaban gran admiraci�n y eran acogidos con fiestas y celebraciones, mientras Taira y su perro pasaban pr�cticamente desapercibidos. Pero el resto del tiempo, cuando viajaban alejados de la gente, Taira disfrutaban de todo tipo de juegos con su perro, mientras que Ara apenas consegu�a dominar la ira y la fuerza del tigre, y viv�a angustiada pensando que en cualquier momento el animal pudiera llegar a atacarla. Y lo hizo varias veces, aunque las heridas nunca llegaron a ser graves. '+char(13)+'
		Cuando Ara y su tigre llegaron al palacio tambi�n fueron recibidos entre aclamaciones. Al poco lleg� Taira, y el visir record� entonces al sult�n: '+char(13)+'
		- Ha llegado la hora de decidirse. Preguntadles qu� tal fue el viaje y qu� han aprendido. '+char(13)+''),
	(4,'- �Qu� necesidad hay? - replic� el sult�n - Mira a Ara y su magn�fico tigre, tienen una imagen perfecta y todo el mundo los adora. '+char(13)+'
		- Preguntadles de todas formas - insisti� el visir- seguro que tienen magn�ficas historias que contar. '+char(13)+'
		- Cierto, eso seguro... �Queridas hijas? �Qu� tal vuestro viaje? '+char(13)+'
		Ara apenas tuvo tiempo de responder, porque Taira se lanz� a hablar sin parar. Se le hab�a hecho tan corto, y lo hab�a pasado tan bien con su perro, que no dejaba de dar las gracias a su padre por hab�rselo regalado, y le pidi� conservarlo para siempre. Y mientras Taira contaba sus mil historias, el sult�n vio en lo ojos de la bella Ara una peque�a l�grima de envidia �se le hab�a hecho tan largo! �y todo por haber elegido aquel tigre brusco y salvaje! '),
	(4,'El visir, viendo que el sult�n hab�a comprendido, grit� con voz potente: '+char(13)+'
		- Ya no hay necesidad de trucos �Al sal halam! '+char(13)+'
		... y una nube m�gica devolvi� al perro y al tigre su forma humana. Eran dos de los muchos pr�ncipes que llevaban a�os cortejando a las hijas del sult�n. Las dos reconocieron enseguida al tigre: era Agra, el m�s apuesto y poderoso de sus pretendientes, del que ambas hab�an estado enamoradas durante a�os. El perro era Asalim, un joven del que apenas recordaban nada. Pero ten�a los ojos y la sonrisa de su querido compa�ero de juegos, y Taira se lanz� a sus brazos y corri� a pedir permiso a su padre para celebrar la boda. '+char(13)+'
		Agra estir� las manos hacia Ara con una sonrisa: hac�an una pareja admirable. Pero en sus ojos la princesa reconoci� la fiereza y agresividad que tantas veces mostr� su compa�ero de viaje. Y no tuvo ninguna duda: perder�a el trono y su amor de juventud, pero no pasar�a toda su vida en compa��a de un tigre al que nunca podr�a controlar.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(4,'�C�mo se llamaban las hijas del Sult�n?'),
	(4,'�Qu� animal eligi� la princesa Ara para viajar devuelta con su papa?'),
	(4,'�Cu�l fue la raz�n por la cual la princesa Taira eligi� de animal al perro para ser su compa�ero de viaje?'),
	(4,'�Cu�l era el nombre del pr�ncipe que era un tigre?'),
	(4,'�Al final del cuento que princesa le pide permiso al Sult�n para casarse?'),
	(4,'Que animal eligi� la princesa Taira para viajar devuelta con su papa')
	

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(21,1, 'Ara y Taira'),
	(21,0, 'Mar�a y Fernanda'),
	(21,0, 'Elizabeth y Ara'),
	(21,0, 'Taira y Elizabeth'),

	(22,0, 'Un �guila'),
	(22,1, 'Un tigre'),
	(22,0, 'Un Oso'),
	(22,0, 'Un Perro'),

	(23,0, 'Por ser muy r�pido y valiente'),
	(23,1, 'Por sus ojos inteligentes, simp�tico y bonach�n '),
	(23,0, 'Ninguna de las anteriores respuestas'),
	(23,0, 'Por era muy bonito'),

	(24,1, 'Agra'),
	(24,0, 'Carlos'),
	(24,0, 'Jos�'),
	(24,0, 'Marcos'),

	(25,0, 'La princesa Mar�a'),
	(25,0, 'La princesa Aria'),
	(25,1, 'La princesa Taira'),
	(25,0, 'La princesa Elizabeth'),

	(26,0, 'Un �guila'),
	(26,0, 'Un tigre'),
	(26,0, 'Un Oso'),
	(26,0, 'Un Perro')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Gorg el gigante')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(5,'Gorg el gigante viv�a desde hac�a siglos en la Cueva de la Ira. Los gigantes eran seres pac�ficos y solitarios hasta que el rey C�o el Terrible les acus� de arruinar las cosechas y orden� la gran caza de gigantes. S�lo Gorg hab�a sobrevivido, y desde entonces se hab�a convertido en el m�s feroz de los seres que hab�an existido nunca; resultaba totalmente invencible y hab�a acabado con cuantos hab�an tratado de adentrarse en su cueva, sin importar lo valientes o poderosos que fueran. '+char(13)+'
		Muchos reyes posteriores, avergonzados por las acciones de C�o, hab�an tratado de sellar la paz con Gorg, pero todo hab�a sido en vano, pues su furia y su ira le llevaban a acabar con cuantos humanos ve�a, sin siquiera escucharlos. Y aunque los reyes dejaron tranquilo al gigante, no disminuy� su odio a los humanos, pues muchos aventureros y guerreros llegaban de todas partes tratando de hacerse con el fabuloso tesoro que guardaba la cueva en su interior.'),
	(5,'Sin embargo, un d�a la joven princesa fue mordida por una serpiente de los pantanos, cuyo ant�doto ten�a una elaboraci�n secreta que s�lo los gigantes conoc�an, as� que el rey se vio obligado a suplicar al gigante su ayuda. Envi� a sus mejores guerreros y a sus m�s valientes caballeros con la promesa de casarse con la princesa, pero ni sus m�gicos escudos, ni las m�s poderosas armas, ni las m�s brillantes armaduras pudieron nada contra la furia del gigante. Finalmente, el rey suplic� ayuda a todo el reino: con la promesa de casarse con la princesa, y con la ayuda de los grandes magos, cualquier valiente pod�a acercarse a la entrada de la cueva, pedir la protecci�n de alg�n conjuro, y tratar de conseguir la ayuda del gigante. '+char(13)+'
		Muchos lo intentaron armados de mil distintas maneras, protegidos por los m�s formidables conjuros, desde la Fuerza Prodigiosa a la Invisibilidad, pero todos sucumbieron. Finalmente, un joven m�sico apareci� en la cueva armado s�lo con un arpa, haciendo su petici�n a los magos: "quiero convertirme en una bella flor y tener la voz de un �ngel".'),
	(5,'As� apareci� en el umbral de la cueva una flor de incre�ble belleza, entonando una preciosa melod�a al son del arpa. Al o�r tan bella m�sica, tan alejada de las armas y guerreros a que estaba acostumbrado, la ira del gigante fue disminuyendo. La flor sigui� cantando mientras se acercaba al gigante, quien termin� tom�ndola en su mano para escucharla mejor. Y la canci�n se fue tornando en la historia de una joven princesa a punto de morir, a quien s�lo un gigante de buen coraz�n podr�a salvar. El gigante, conmovido, escuchaba con emoci�n, y tanta era su calma y su tranquilidad, que finalmente la flor pudo dejar de cantar, y con voz suave cont� la verdadera historia, la necesidad que ten�a la princesa de la ayuda del gigante, y los deseos del rey de conseguir una paz justa y duradera. '+char(13)+'
	El gigante, cansado de tantas luchas, viendo que era verdad lo que escuchaba, abandon� su cueva y su ira para curar a la princesa. Y el joven m�sico, quien adem�s de domar la ira del gigante, conquist� el coraz�n de la princesa y de todo el reino, se convirti� en el mejor de los reyes.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(5,'�Cu�l es nombre del gigante que aparece en el cuento?'),
	(5,'�Qu� es el nombre del rey que acuso a los gigantes de arruinar sus cosechas?'),
	(5,'�D�nde viv�a el gigante que aparece en el cuento?'),
	(5,'�En donde la serpiente mordi� a la princesa?'),
	(5,'�Qu� petici�n hizo a los magos el joven para enfrentar al gigante?'),
	(5,'�El gigante acepto curar a la princesa?')

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

	(29,0, 'En una monta�a'),
	(29,1, 'En una cueva'),
	(29,0, 'En un castillo abandonado'),
	(29,0, 'En una Isla '),

	(30,0, 'En un bosque'),
	(30,0, 'En un rio'),
	(30,1, 'En los pantanos'),
	(30,0, 'En una granja'),

	(31,0, 'Que le crearan el arma m�s poderosa del reino'),
	(31,0, 'Que le crearan una p�cima para poder dormir al gigante '),
	(31,1, 'Convertirse en una bella flor y tener la voz de un �ngel'),
	(31,0, 'Convertirse en el guerrero m�s fuerte del reino'),

	(32,1, 'Si'),
	(32,0, 'No')
	

INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La Cenicienta')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(6,'Hab�a una vez, en un hermoso pa�s, un rico comerciante que viv�a feliz en compa��a de su esposa y su hermosa hija. Un oscuro d�a, el comerciante enviud�, su esposa hab�a contra�do una misteriosa y terrible enfermedad. '+char(13)+'
		Fue as� como empez� a vivir en soledad con su hija, en una enorme finca a las afueras del pueblo. Con el paso de los a�os, el padre de la joven decidi� volver a casarse, por lo que contrajo matrimonio con una se�ora respetable, Lady Tremaine, una viuda con dos hijas, Drizella y Anastasia. '+char(13)+'
		El padre de la joven muri� de forma inesperada y esto sell� el destino de la joven. Lady Tremaine era una mujer muy cruel y ego�sta, solo deseaba el bienestar de sus hijas y odiaba a su hijastra porque era m�s bonita y noble. '),
	(6,'Oblig� a la joven a trabajar hasta el cansancio, tanto trabaj� que su nombre pas� a ser Cenicienta, pues sus ropas siempre estaban llenas de cenizas de la chimenea. La pobre Cenicienta era la sirvienta de su propia casa, era humillada y maltratada, pero no por eso dej� de ser gentil. Su amabilidad la hizo convertirse en amiga de los ratones y p�jaros que viv�an cerca de la casa. '+char(13)+'
		Un d�a, mientras Cenicienta preparaba el desayuno, el malvado gato de Lady Tremaine, Lucifer, persigui� a uno de los ratones, Gus. El ratoncito en su inocencia se escondi� detr�s de la taza de t� de Anastasia, d�ndole un susto de muerte. Anastasia acus� a Cenicienta ante su madre y est� la castig� con tareas extras. '+char(13)+'
		Y as� pasaron los d�as, hasta que lleg� a la casa una invitaci�n. El rey ofrec�a un baile para que su hijo, el pr�ncipe, escogiera su esposa.'),
	(6,'Drizella y Anastasia enloquecieron de alegr�a. Empezaron a pelear por los vestidos m�s hermosos y a gritar con sus estridentes voces hasta que Lady Tremaine intervino y le orden� a la pobre Cenicienta que las peinara y creara para ellas los vestidos m�s hermosos. '+char(13)+'
		 � �Si lo hago podr� ir? La invitaci�n dice que deben ir todas las doncellas casaderas del reino�dijo Cenicienta con humildad. '+char(13)+'
		 � Si terminas tus tareas podr�s ir�la malvada madrastra rompi� a re�r�. Si encuentras un vestido y no vas con esos harapos. No quiero que relacionen a mis hijas contigo. '+char(13)+'
		 Y as�, Cenicienta a�adi� a sus tareas el tener que dise�ar y coser vestidos para sus hermanas, probar peinados en ellas y maquillarlas. Solo con la ayuda de los pajaritos y ratoncitos pudo terminar sus tareas y arreglar un viejo y hermoso vestido que hab�a heredado de su madre para poder asistir al baile. '),
	(6,'Al ver a Cenicienta bajar del �tico m�s hermosa que ellas, la envidia de Drizella y Anastasia fue tal que se arrojaron sobre ella y destruyeron su vestido, acus�ndola de ladrona. La pobre Cenicienta corri� a refugiarse entre las calabazas, no paraba de llorar por haber perdido el vestido de su madre y no poder asistir al baile. '+char(13)+'
		Tanto llor� Cenicienta que fue escuchada por el hada madrina de los imposibles, quien se dirigi� a su lado y la consol�. '+char(13)+'
		�Puedes ir al baile, pero debes regresar antes del t�rmino de las 12 campanadas que anuncian la medianoche�advirti�. '+char(13)+'
		Cenicienta estuvo de acuerdo y observ� con asombro como el hada madrina convirti� su vestido harapiento y roto en un hermoso vestido blanco cubierto de diamantes. El hada tambi�n le dio dos hermosas zapatillas de cristal.'),
	(6,'Como faltaba un carruaje, el hada madrina transform� una calabaza del huerto en uno, los ratones los convirti� en caballos, al caballo de la finca en un cochero y al perro en un lacayo. '+char(13)+'
		As�, Cenicienta acudi� al baile, donde el pr�ncipe, cansado de sonsas doncellas, se hab�a negado a bailar con ellas, hasta que sus ojos se toparon con Cenicienta, fue amor a primera vista. El pr�ncipe la invit� a bailar y no se separaron durante toda la noche. Cenicienta se distrajo tanto que no escuch� el reloj empezar a dar las campanadas que anunciaban la medianoche. Cuando lo hizo, corri� fuera del castillo, dejando detr�s una de sus zapatillas de cristal. '+char(13)+'
		Cenicienta lleg� a la finca y descubri� que de su hermoso vestido solo quedaba una zapatilla de cristal. La escondi� en su �tico y esper� al regreso de su madrastra y hermanastras.  '+char(13)+'
		Mientras tanto en el palacio, el Gran Duque inform� al Rey de la fuga de Cenicienta y que el pr�ncipe hab�a jurado casarse con ella. Lamentablemente, solo ten�an en su poder la zapatilla de cristal, por lo que el pr�ncipe deber�a casarse con la doncella a la cual le quedara tan delicada y fina pieza.'),
	(6,'Y as�, el Duque empez� a recorrer todas las casas del reino donde viviera una doncella para probar la delicada zapatilla de cristal, pero a ninguna le qued�. Entonces, se dirigi� a casa de Cenicienta, donde lo esperaba Lady Tremaine y sus hijas.  '+char(13)+'
		Lady Tremaine hab�a escuchado tararear a Cenicienta la canci�n del baile en el palacio y sospech� de ella, por eso y antes que llegara el Duque, la encerr� en el �tico. '+char(13)+'
		Cuando llega el Duque, los dos ratoncitos amigos de Cenicienta, Jaq y Gus robaron la llave del �tico y con ayuda de otros animales logran evadir al terrible Lucifer. '),
	(6,'Las hermanastras de Cenicienta no hab�an logrado que sus pies entraran en la zapatilla y el Duque estaba cada vez m�s desesperado. Para su suerte, Cenicienta lleg� en ese momento y pidi� probar la zapatilla. Lady Tremaine hizo tropezar al Duque, provocando que la zapatilla cayera al suelo y se rompiera en miles de pedazos. '+char(13)+'
		El Gran Duque se llen� de terror, pero Cenicienta sac� de su bolsillo la otra zapatilla de cristal, demostrando que ella era la doncella de la cual estaba enamorado el pr�ncipe. El Duque prob� la zapatilla en los pies de Cenicienta y esta calz� perfectamente. '+char(13)+'
		Poco tiempo despu�s, se celebr� la boda entre Cenicienta y el Pr�ncipe, quienes vivieron felices para siempre.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(6,'�C�mo se llamaban las dos hermanastras de cenicienta?'),
	(6,'�C�mo se llama la madrasta de Cenicienta?'),
	(6,'�C�mo se llamaba el malvado gato de la madrastra de cenicienta?'),
	(6,'�Antes de que horas deb�a regresar cenicienta del baile?'),
	(6,'�Los ratones en que animal nos convierte la hada madrina?'),
	(6,'�Qu� es lo que le dio el hada madrina a cenicienta para ir al baile?'),
	(6,'�Qu� es lo que extravi� Cenicienta cuando se march� del baile?'),
	(6,'�C�mo se llamaban los 2 ratoncitos que aparecen en el cuento?'),
	(6,'�Qu� sucede al final del cuento?')
	
	
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
	(36,1, 'Despu�s de medianoche'),
	(36,0, 'Antes del amanecer'),
	(36,0, 'Ninguna de las anteriores'),

	(37,1, 'En caballos'),
	(37,0, 'En perros'),
	(37,0, 'En p�jaros'),
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
	(40,0, 'Malvavisco y dormil�n '),

	(41,1, 'Cenicienta y el pr�ncipe se casan'),
	(41,0, 'El pr�ncipe no encontr� a la joven que extravi� la zapatilla'),
	(41,0, 'El pr�ncipe no busco a la doncella que extravi� la zapatilla'),
	(41,0, 'Ninguna de las anteriores')



INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La invitacion para el Gran Baile')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(7,'Un pr�ncipe terriblemente desordenado nunca hace caso a sus padres cuando le piden orden. La princesa del reino vecino, de la que est� enamorado en secreto, organiza un gran baile e invita a todos los pr�ncipes de los alrededores. El pr�ncipe est� emocionado y lo prepara todo con esmero, pero el d�a del baile no encuentra la invitaci�n entre el desorden de su cuarto. El busca desesperado y no la encuentra, y al final decide ordenar todo su cuarto, encontrando la invitaci�n justo encima de la mesa. Para cuando llega al baile ya se marchaban todos y se vuelve muy triste y habiendo aprendido la lecci�n. '+char(13)+'
	Pero tuvo suerte, y como no encontr� novio, la princesa repiti� el baile poco despu�s, y como esta vez tuvo todo ordenado, no perdi� la invitaci�n y pudo conocer a la princesa, que tambi�n se enamor� de �l.')
	
INSERT INTO Question(IdContent,Text)
	VALUES
	(7,'�A d�nde fue invitado el pr�ncipe?'),
	(7,'�D�nde hab�a dejado la invitaci�n el pr�ncipe?'),
	(7,'�Por qu� el pr�ncipe no pod�a encontrar la invitaci�n al baile?'),
	(7,'�Qui�n organizo el gran baile?')

INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(42,1, 'A un gran baile'),
	(42,0, 'A una cena'),
	(42,0, 'A una Boda'),
	(42,0, 'Ninguna de las anteriores'),

	(43,1, 'Encima de la mesa'),
	(43,0, 'En la cama'),
	(43,0, 'La hab�a tirado a la basura'),
	(43,0, 'No ala encontr�'),

	(44,0, 'Nunca le enviaron la invitaci�n'),
	(44,1, 'Porque ten�a todo su cuarto desordenado'),
	(44,0, 'Porque la hab�a tira a la basura'),
	(44,0, 'Ninguna de las anteriores'),

	(45,0, 'El padre del pr�ncipe'),
	(45,1, 'La princesa de reino vecino'),
	(45,0, 'El rey de del reino vecino'),
	(45,0, 'Ninguna de las anteriores')




INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La princesa de fuego')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(8,'Hubo una vez una princesa incre�blemente rica, bella y sabia. Cansada de pretendientes falsos que se acercaban a ella para conseguir sus riquezas, hizo publicar que se casar�a con quien le llevase el regalo m�s valioso, tierno y sincero a la vez. El palacio se llen� de flores y regalos de todos los tipos y colores, de cartas de amor incomparables y de poetas enamorados. Y entre todos aquellos regalos magn�ficos, descubri� una piedra; una simple y sucia piedra. Intrigada, hizo llamar a quien se la hab�a regalado. A pesar de su curiosidad, mostr� estar muy ofendida cuando apareci� el joven, y este se explic� diciendo: '+char(13)+'
		- Esa piedra representa lo m�s valioso que os puedo regalar, princesa: es mi coraz�n. Y tambi�n es sincera, porque a�n no es vuestro y es duro como una piedra. S�lo cuando se llene de amor se ablandar� y ser� m�s tierno que ning�n otro.'),
	(8,'El joven se march� tranquilamente, dejando a la princesa sorprendida y atrapada. Qued� tan enamorada que llevaba consigo la piedra a todas partes, y durante meses llen� al joven de regalos y atenciones, pero su coraz�n segu�a siendo duro como la piedra en sus manos. Desanimada, termin� por arrojar la piedra al fuego; al momento vio c�mo se deshac�a la arena, y de aquella piedra tosca surg�a una bella figura de oro. Entonces comprendi� que ella misma tendr�a que ser como el fuego, y transformar cuanto tocaba separando lo in�til de lo importante.'),
	(8,'Durante los meses siguientes, la princesa se propuso cambiar en el reino, y como con la piedra, dedic� su vida, su sabidur�a y sus riquezas a separar lo in�til de lo importante. Acab� con el lujo, las joyas y los excesos, y las gentes del pa�s tuvieron comida y libros. Cuantos trataban con la princesa sal�an encantados por su car�cter y cercan�a, y su sola presencia transmit�a tal calor humano y pasi�n por cuanto hac�a, que comenzaron a llamarla cari�osamente "La princesa de fuego". '+char(13)+'
		Y como con la piedra, su fuego deshizo la dura corteza del coraz�n del joven, que tal y como hab�a prometido, result� ser tan tierno y justo que hizo feliz a la princesa hasta el fin de sus d�as')

INSERT INTO Question(IdContent,Text)
	VALUES
	(8,'�Cu�l fue el regalo que m�s intrigo a la princesa?'),
	(8,'�Qu� hiso la princesa con la piedra cuando se desamino?'),
	(8,'�Que surge de la piedra cuando la princesa la arrojo al fuego?'),
	(8,'�C�mo las personas del reino llamaban a la princesa de cari�o?'),
	(8,'�C�mo se describen a la princesa en el cuento?')

	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(46,0, 'Un tigre muy ex�tico'),
	(46,1, 'Una piedra'),
	(46,0, 'Una carta de amor'),
	(46,0, 'Unas joyas de oro'),

	(47,0, 'El aguardo en un cofre'),
	(47,0, 'El tiro a la basura'),
	(47,0, 'Se la devolvi� al joven'),
	(47,1, 'El arrojo la piedra al fuego'),

	(48,1, 'Una bella figura de oro'),
	(48,0, 'Se derriti�'),
	(48,0, 'Se trasform� en un coraz�n rojo'),
	(48,0, 'Ninguna de las anteriores'),

	(49,1, 'La princesa de fuego'),
	(49,0, 'La princesa Bondadosa'),
	(49,0, 'La princesa roja'),
	(49,0, 'Ninguna de las anteriores'),

	(50,0, 'Cruel con el pueblo y muy bella'),
	(50,1, 'Rica, bella y sabia'),
	(50,0, 'Muy bonita, simp�tica y muy alegre'),
	(50,0, 'Ninguna de las anteriores')


	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'La Sirenita')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(9,'En el fondo de los oc�anos hab�a un precioso palacio en el cual viv�a el Rey del Mar junto a sus cinco hijas, bell�simas sirenas. La m�s joven, la Sirenita, adem�s de ser la m�s hermosa, pose�a una voz maravillosa. '+char(13)+'
		Cuando cantaba, todos los habitantes del fondo del mar acud�an para escucharla. Adem�s de cantar, Sirenita so�aba con salir a la superficie para ver el cielo y conocer el mundo de los hombres, como lo relataban sus hermanas. '+char(13)+'
		Pero su padre le dec�a que solo cuando cumpliera los 15 a�os tendr�a su permiso para hacerlo. Pasados los a�os, finalmente llegaron el cumplea�os y el regalo tan deseados. '+char(13)+'
		Sirenita por fin pudo salir a respirar el aire y ver el cielo, despu�s de o�r los consejos de su padre: Recuerda que el mundo de arriba no es el nuestro, s�lo podemos admirarlo. Somos hijos del mar. S� prudente y no te acerques a los hombres'),
	(9,'Y al emergerse del agua Sirenita se qued� de boca abierta. Todo era nuevo para ella. Y todo era hermoso, �fascinante! Sirenita era feliz. Pasados unos minutos, Sirenita pudo observar, con asombro, que un barco se acercaba y paraba. Se puso a escuchar voces. Y pens� en lo cuanto le gustar�a hablar con ellos. '+char(13)+'
		Pero mir� a su larga cola y comprendi� que eso era imposible. Continu� mirando al barco. A bordo hab�a una gran fiesta de aniversario. El capit�n del barco cumpl�a veinte a�os de edad. '+char(13)+'
		Sirenita se qued� at�nita al ver el joven. Era alto, moreno, de porte real, y sonre�a feliz. La Sirenita sinti� una extra�a sensaci�n de alegr�a y sufrimiento a la vez. '+char(13)+'
		Algo que jam�s hab�a sentido en su coraz�n. La fiesta segu�a hasta que repentinamente un viento fuerte agit� las olas, sacudiendo y posteriormente volcando el barco. Sirenita vio como el joven capit�n ca�a al mar.'),
	(9,'Nad� lo que pudo para socorrerlo, hasta que le tuvo en sus brazos. El joven estaba inconsciente, pero Sirenita nad� lo que pudo para llevarlo hasta tierra. Deposit� el cuerpo del joven sobre la arena de la playa y estuvo frotando sus manos intentando despertarlo. '+char(13)+'
		Pero un murmullo de voces que se aproximaban la obligaron a refugiarse en el mar. Desde el mar, vio como el joven recobraba el conocimiento y agradec�a, equivocadamente, a una joven dama por haberle salvado la vida. '+char(13)+'
		Sirenita volvi� a la mansi�n paterna y les cont� toda su experiencia. Despu�s pas� d�as llorando en su habitaci�n. Se hab�a enamorado del joven capit�n pero sent�a que jam�s podr�a estar con �l.'),
	(9,'D�as despu�s, Sirenita acudi� desesperada a la casa de la Hechicera de los Abismos. Quer�a deshacerse de su cola de pez a cualquier precio. E hicieron un trato: Sirenita tendr�a dos piernas a cambio de regalar su hermosa voz a la hechicera que le advirti�: "Si el hombre que amas se casa con otra, tu cuerpo desaparecer� en el agua como la espuma de una ola". '+char(13)+'
		Asintiendo a las condiciones de la hechicera, Sirenita bebi� la p�cima m�gica e inmediatamente perdi� el conocimiento. Cuando despert� se encontraba tendida en la arena de la playa, y a su lado estaba el joven capit�n que intentaba ayudarla a levantarse. Y le dijo: "te llevar� al castillo y te curar�". '+char(13)+'
		Durante los d�as siguientes, Sirenita pas� a vestirse como una dama, y acompa�aba al pr�ncipe en sus paseos. Era invitada a los bailes de la corte pero como no pod�a hablar, no pod�a explicar al pr�ncipe lo que hab�a sucedido en la noche que le salv�.'),
	(9,'El pr�ncipe no paraba de pensar en la dama que pensaba haber salvado su vida y Sirenita se daba cuenta de eso. Pero el destino le reservaba otra sorpresa. '+char(13)+'
		Un d�a, avistaron un gran barco que se acercaba al puerto. El barco tra�a una desconocida que enseguida llam� la atenci�n del pr�ncipe. Sirenita sinti� un agudo dolor en su coraz�n, y sinti� que perder�a a su pr�ncipe para siempre. '+char(13)+'
		El pr�ncipe qued� prendado de la joven desconocida, que no era otra que la bruja disfrazada, y al haberle robado su voz, el pr�ncipe crey� que era su salvadora y se enamor� de ella.  '+char(13)+'
		Le pidi� matrimonio, y para celebrarlo fueron invitados a hacer un gran viaje por mar al d�a siguiente, acompa�ados tambi�n por la Sirenita. Al caer la noche, Sirenita, recordando el acuerdo que hab�a hecho con la hechicera, estaba dispuesta a sacrificar su vida y a desaparecer en el mar, hasta que escuch� la llamada de sus hermanas.'),
	(9,'- �Sirenita! �Sirenita! �Somos nosotras, tus hermanas!. Escucha con atenci�n, hay una forma de romper el hechizo y recuperar la voz que la bruja te ha robado. Si besas al pr�ncipe conseguir�s que se enamore de ti y se rompa el encantamiento. '+char(13)+'
		La Sirenita corri� y corri� hasta el gran sal�n donde iba a comenzar la ceremonia de boda. Se lanz� a los brazos del pr�ncipe y le bes�, dejando a todos boquiabiertos. '+char(13)+'
		La hechicera recuper� su desagradable voz y aspecto, y la Sirenita pudo explicar lo que hab�a ocurrido realmente. La bruja fue encerrada en el calabozo, y el pr�ncipe se disculp� con la Sirenita. '+char(13)+'
		Esa misma tarde se celebr� la boda entre la Sirenita y el pr�ncipe, y todos cantaron para celebrar su amor.')


INSERT INTO Question(IdContent,Text)
	VALUES
	(9,'�Sirenita adem�s de ser muy hermosa que otra cualidad poes�a?'),
	(9,'�A los cuantos a�os el papa se sirenita la dejara salir a la superficie del mar?'),
	(9,'�A d�nde fue sirenita a para querer quitarse de su cola y tener par de piernas? '),
	(9,'�Qu� fue lo que pidi� la hechicera a cambio de dale dos piernas sirenita?'),
	(9,'�Qu� paso al final de cuento?')

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
	(55,0, 'La sirenita renuncio al amor que sent�a por el pr�ncipe'),
	(55,1, 'Ariel se cas� con el pr�ncipe'),
	(55,0, 'La hechicera se cas� con el pr�ncipe ')


	
INSERT INTO Content(IdTypeContent, Status, Title) VALUES(4, 1, 'Las princesas del lago')	
INSERT INTO [Page](IdContent,Text) 
	VALUES
	(10,'Hab�a una vez dos bellas princesas Mar�a la mayor y Alejandra la menor que, siendo a�n peque�as, hab�an sido raptadas por un rey enemigo. �ste hab�a ordenado llevarlas a un lago perdido, y abandonarlas en una peque�a isla, donde permanecer�an para siempre custodiadas por un terrible monstruo marino. '+char(13)+'
		S�lo cuando el malvado rey y su corte de brujos y adivinos fueron derrotados, pudieron en aquel pa�s descubrir que en el destino estaba escrito que llegar�a el d�a en que un valiente pr�ncipe liberar�a a las princesas de su encierro.'),
	(10,'Cuando el viento llev� la noticia a la isla, llen� de esperanza la vida de las princesas. La m�s peque�a, mucho m�s bella y dulce que su hermana, esperaba pacientemente a su enamorado, moldeando peque�os adornos de flores y barro, y cantando canciones de amor.La mayor, sin embargo, no se sent�a a gusto esperando sin m�s. "Algo tendr� que hacer para ayudar al pr�ncipe a rescatarme. Que por lo menos sepa d�nde estoy, o c�mo es el monstruo que me vigila." Y decidida a facilitar el trabajo del pr�ncipe, se dedic� a crear hogueras, construir torres, cavar t�neles y mil cosas m�s. Pero el temible monstruo marino fastidiaba siempre sus planes.'),
	(10,'Con el paso del tiempo, la hermana mayor se sent�a m�s inc�moda. Sab�a que el pr�ncipe elegir�a a la peque�a, as� que no ten�a mucho sentido seguir esperando. Desde entonces, la joven dedic� sus esfuerzos a tratar de escapar de la isla y del monstruo, sin preocuparse por si finalmente el pr�ncipe aparecer�a para salvarla o no. '+char(13)+'
		Cada ma�ana preparaba un plan de hu�da diferente, que el gran monstruo siempre terminaba arruinando. Los intentos de fuga y las capturas se suced�an d�a tras d�a, y se convirtieron en una especie de juego de ingenio entre la princesa y su guardi�n. Cada intento de escapada era m�s original e ingenioso, y cada forma de descubrirlo m�s sutil y sorprendente. Pon�an tanto empe�o e imaginaci�n en sus planes, que al acabar el juego pasaban horas comentando amistosamente c�mo hab�an preparado su estrategia. Y al salir la luna, se desped�an hasta el d�a siguiente y el monstruo volv�a a las profundidades del lago.'),
	(10,'Un d�a, el monstruo despidi� a la princesa diciendo: '+char(13)+'
		- Ma�ana te dejar� marchar. Eres una joven lista y valiente. No mereces seguir atrapada. '+char(13)+'
		Pero a la ma�ana siguiente la princesa no intent� escapar. Se qued� sentada junto a la orilla, esperando a que apareciera el monstruo. '+char(13)+'
		- �Por qu� no te has marchado? '+char(13)+'
		- No quer�a dejarte aqu� solo. Es verdad que das bastante miedo, y eres enorme, pero t� tambi�n eres listo y mereces algo m�s que vigilar princesas. �Por qu� no vienes conmigo? '+char(13)+'
		- No puedo- respondi� con gran pena el monstruo-. No puedo separarme de la isla, pues a ella me ata una gran cadena. Tienes que irte sola.'),
	(10,'La joven se acerc� a la horrible fiera y la abraz� con todas sus fuerzas. Tan fuerte lo hizo, que el animal explot� en mil pedazos. Y de entre tantos pedacitos, surgi� un joven risue�o y delgaducho, pero con esa misma mirada inteligente que ten�a su amigo el monstruo. '+char(13)+'
		As� descubrieron las princesas a su pr�ncipe salvador, quien hab�a estado con ellas desde el principio, sin saber que para que pudiera salvarlas antes deb�an liberarlo a �l. Algo que s�lo hab�a llegado a ocurrir gracias al �nimo y la actitud de la hermana mayor.Y el joven pr�ncipe, que era listo, no tuvo ninguna duda para elegir con qu� princesa casarse.')

INSERT INTO Question(IdContent,Text)
	VALUES
	(10,'�C�mo se llamaban las dos princesas que aparecen en el cuento?'),
	(10,'�A d�nde fueron llevadas las princesas cuando el rey malvado las rapto?'),
	(10,'�Por qu� el monstruo decidido dejar escapar a la princesa mayor?'),
	(10,'�Por qu� no pod�a irse el mostr� de lago?'),
	(10,'�En que se convirti� el monstruo, cuando la princesa lo abrazo?  '),
	(10,'6.	�Con que princesa al final del cuento se cas� el pr�ncipe?')


	INSERT INTO Answer(IdQuestion,IsCorrect,Text) 
	VALUES
	(56,1, 'Mar�a y Alejandra'),
	(56,0, 'Fernanda y Aria'),
	(56,0, 'Aria y mar�a'),
	(56,0, 'Alejandra y Fernanda'),

	(57,0, 'A un reino muy lejano'),
	(57,0, 'A un castillo custodiado por un drag�n'),
	(57,1, 'A una peque�a isla custodiadas por un monstruo'),
	(57,0, 'Ninguna de las anteriores'),

	(58,1, 'Por ser una joven muy lista y valiente'),
	(58,0, 'Se canso de estarla custodiando'),
	(58,0, 'Se enamoro de la princesa'),
	(58,0, 'Ninguna de las anteriores'),

	(59,0, 'El lago era su �nico hogar'),
	(59,0, 'No le gustaba salir del lago'),
	(59,1, 'Estaba atado a una gran cadena de la isla'),
	(59,0, 'Ninguna de las anteriores '),

	(60,0, 'En un pr�ncipe alto y fuerte'),
	(60,1, 'En un pr�ncipe Joven risue�o y delgaducho'),
	(60,0, 'En un pr�ncipe simp�tico y valiente'),
	(60,0, 'Ninguna de las anteriores '),

	(61,1, 'Con la princesa mayor'),
	(61,0, 'Con la princesa menor'),
	(61,0, 'No se cas� el pr�ncipe con ninguna')
	

