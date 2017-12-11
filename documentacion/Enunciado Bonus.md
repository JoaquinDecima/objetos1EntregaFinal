Sexta​ ​Parte:​ ​Interfaz​ ​gráfica​ ​con​ ​Wollok​ ​Game

El siguiente paso es poder interactuar con Morty utilizando wollok-game. En esta sección se describen los
requerimientos mínimos para la aprobación, de acuerdo a los contenidos vistos en la materia. Las
secciones siguientes contienen tips y funcionalidades que permitirán hacer un juego más vistoso. No se
sientan limitados por estas indicaciónes, marcan solamente un mínimo​ de funcionalidades a cubrir y son
libres de buscar formas más creativas de resolver el juego.

Los requerimientos mínimos son:
	* Incluir a morty como personaje, de forma de poder controlarlo con el teclado.
	* Dibujar, como elementos estáticos en el tablero:
		* rick en la esquina inferior izquierda
		* un conjunto de materiales básicos., ubicados en forma random.

	* Para las acciones de morty, tienen dos opciones:
		* Opción 1: Usando las teclas
			* R => Recolectar el material que está en la misma posición que Morty
			* D => Dar los materiales de Morty a Rick. Para esto, Morty debe estar en la
					misma posición que Rick.
		* Opción 2: Usando colisiones
			* Cuando Morty se encuentre en la misma posición que un material,
				automáticamente lo recolecta (si puede).
			* Cuando Morty se encuentre en la misma posición que Rick, automáticamente le
				entrega todos los materiales que posee.
	* Para las acciones de Rick, usamos el teclado:
		* E => Hacer que Rick diga (“say”) los experimentos que puede realizar.
		* 1-9 => Realizar un experimento (uno distinto según el número presionado). 
			Para esto es recomendable que Rick al contarme los experimentos que puede realizar los muestre con
			un número, así es fácil saber qué número puedo usar para ejecutar cada experimento.
			
			Si los experimentos de Rick hasta ahora estaban en un conjunto (set) es posible que convenga
			ponerlos en una lista, de esa forma se garantiza que estén siempre en el mismo orden.
			
Finalmente podemos agregar la opción:
	* M => Hacer que tanto Rick como Morty digan (“say”) cuál es el contenido de sus
		respectivas Mochilas. O si prefieren pueden usar teclas distintas.

Notas:
	* Cabe resaltar que en todo momento jugamos con Rick y Morty, no es obligatorio que el juego
		permita jugar con otros personajes
	* Wollok-game pemite que los objetos visuales conozcan su posición o no. 
		Técnicamente el juego puede resolverse sin hacer que ninguno de los objetos de dominio conozca su posición pero
		probablemente algunos detalles les resulten más sencillos si hacen que Morty conozca la suya; en
		particular si eligen usar las teclas para recolectar materiales.
	* Para poder mostrar los personajes y otros elementos en el tablero es necesario contar con
		imágenes. Si lo desean pueden compartir las imágenes que encuentren o que generen con sus
		compañeros.

Bonus:​ ​Ideas​ ​para​ ​un​ ​juego​ ​más​ ​canchero​ ​:-)

Esta sección contiene algunas ideas sobre cómo utilizar Wollok-Game para hacer un juego más vistoso.

No es obligatorio para aprobar, pero sí se tendrá en cuenta el esfuerzo y la creatividad a la hora de definir
la nota final del trabajo práctico.

Atención: No​ ​es​ ​recomendable​ “colgarse” haciendo “chiches” del trabajo práctico si no tenemos las partes
obligatorias completas.

Tip​ ​1:​ ​Bordes
	Agregar un borde al tablero, con paredes que al colisionar impiden que Morty se mueva fuera de un área definida.

Tip​ ​2:​ ​Áreas​ ​especiales​ ​del​ ​tablero
	Separar el tablero en 4 áreas distintas, que permitan mostrar los contenidos de las mochilas de Rick y
	Morty, así como el conjunto de experimentos posibles. Por ejemplo usando la siguiente distribución:

	Tanto las mochilas como el área de experimentos requieren objetos detrás que permitan controlar los
	materiales / experimentos que contienen esas áreas, asignándoles una posición a cada uno, etc.
	
	Los experimentos no realizables pueden desaparecer o se les puede cambiar la imagen para que
	aparezcan grisados.

Tip​ ​3:​ ​Summer​ ​y​ ​Jerry
	Hacer que Rick pueda cambiar de compañero. Utilizar eventos de teclado para poder seleccionar el
	compañero, y luego las flechas mueven al compañero seleccionado.
	
	Dado que Jerry pasa por varios estados, podría ser interesante cambiar su imagen en función del estado
	en el que está.

Tip​ ​4:​ ​Ganar​ ​y​ ​perder
	Mostrar una indicación visual que indique que el juego se ganó o se perdió, por ejemplo usando un
	componente visual que ocupe varios casilleros del tablero y tenga una imagen con un mensaje adecuado.
	Una vez terminado el juego, no debería poder seguir moviendo a los personajes ni realizar ninguna otra
	acción. A su vez se debería proveer una forma de reiniciar.

Ganar el juego: El escape

	Rick divisa el problema de la nave, su recolector de energía oscura y el controlador del tablero de la misma
	se encuentran averiados, y en este planeta no hay herramientas para arreglarlos, sin embargo se pueden
	reemplazar por otros materiales.

	Rick está seguro que con un material que genere más de 900 Amperes puede reemplazar el recolector, y
	el tablero se puede reemplazar por otro material que conduzca 400 Amperes. Morty será quien reemplace
	las partes defectuosas de la nave, una vez que la nave esté arreglada, podrán volver a su planeta!
	
Perder el juego: Falta de energía
	El juego se pierde si ninguno de los personajes móviles (Morty, Summer, Jerry) tienen la energía suficiente
	para recolectar alguno de los materiales que hay sobre el tablero y tampoco Rick puede realizar un
	experimento que les dé energía suficiente para salir de esa situación.
