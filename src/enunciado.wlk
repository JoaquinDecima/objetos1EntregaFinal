/*
Primera Parte: Morty
Hay m�ltiples cosas que Morty puede encontrar en este planeta, de los cuales nos interesa saber: 
	* Sus gramos de metal 
	* Cu�nta electricidad pueden conducir
	* Si son radiactivos
	* Cu�nta energ�a produce.
	
Morty tiene una cantidad de energ�a que cambia a medida que se va cansando o se recupera.
 
Para recolectar un elemento necesita energ�a, tantos puntos de energ�a como gramos de metal posea el
material, aunque algunos materiales tienen requerimientos especiales.
* NOTA: Se delega el control del puedeRecolectar al elemento

Adem�s Morty no puede tener en su mochila m�s de 3 materiales a la vez.
* NOTA: se elimina el primero o no puedo recolectar?
 
Al recolectar materiales radiactivos, la energ�a de Morty disminuye en la cantidad requerida luego de la acci�n.
* NOTA: La energia que disminuye es la cantidad de gramos del elemento a recolectar?

Los materiales que Morty puede encontrar son:
	* Lata: 
			* 	Tiene una cantidad de metal que es distinta para cada lata
			* 	No es radiactivo
			*   No genera electricidad 
			*   Puede producir electricidad, 0.1 Amperes por gramo de metal que posee.
	* Cable: Tiene:
			* 	Una longitud en metros 
			* 	Una secci�n en cm� (la superficie transversal). 
			*   La cantidad de metal es 1 gramo por cm� ((longitud / 1000) * secci�n)
			*   Puede conducir electricidad hasta 3 Amperes por cm� de secci�n.
			*   No genera electricidad 
			*   No es radiactivo.

	* Fleeb: 
		* Le gusta comer materiales. 
		* Tiene tanto metal como el que haya consumido. 
		* Cuando tiene m�s de 15 a�os se vuelve radioactivo. 
		* Produce tanta electricidad como el material que haya comido que m�s electricidad produzca. 
		* Conduce la electricidad como el material que haya comido que menos electricidad conduzca.
		
		Morty, Al tratar de recolectarlo, se le escapa, por lo tanto se necesita el doble de la energ�a que se
		necesita para recolectar otra cosa, pero al recolectarlo el Fleeb le da energ�a a Morty y esta se incrementa
		en 10 puntos, salvo que sea radiactivo.

	* Materia Oscura: 
		* 	Contiene un material base. 
		*   La conductividad es la mitad de la base
		*   La cantidad de metal es la misma que la base
		*   No es radiactivo
		*   Genera el doble de energ�a que la base.


En este punto nos gustar�a poder preguntarle o pedirle a Morty:
	* puedeRecolectar(unMaterial)
	* recolectar(unMaterial): la recolecta (si puede) y se la guarda en su mochila.
	* darObjetosA(unCompanero): saca todas las cosas de su mochila y se las pasa a un compa�ero



Segunda Parte: Rick
	* Rick realiza experimentos
	* Aquellos objetos necesarios que tiene en su mochila (aquellos que le dio su
	  compa�ero, Morty en este caso), con esto transforma materiales en otros materiales
	* algunos experimentos afectan a su compa�ero.

Los experimentos que Rick puede realizar son:
	*	Construir una Bater�a: 
			* 	Se necesita 
					* un material que tenga m�s de 200 gramos de metal
					* y un material radiactivo. 

			*   No conduce la electricidad
			*   El metal es la suma del metal de sus componentes
			*   La electricidad que genera es 2 Amperes por gramo de metal. 
			*   Siempre es radiactiva
			*   al construirse el compa�ero de rick pierde 5 puntos de energ�a.

	*	Construir un Circuito: Requiere de al menos un material que conduzcan como m�nimo 5 amperes.
			*  El circuito es construido con todos los materiales que Rick tiene en la mochila 
     			que conducen al menos 5 amperes. 
			* El circuito conduce el triple que la suma de lo que conducen sus componentes
			* Es radiactivo si alguno de sus componentes lo es
			* El metal es la suma del metal de sus componentes
			* y no genera electricidad.

	*   Shock el�ctrico: Sirve para incrementar la energ�a de su compa�ero. 
		* Para eso se necesita:
			* 	un generador el�ctrico 
			*   y un material conductivo. 
			* 	Se incrementa la energ�a en tantos puntos como la capacidad del 
				generador el�ctrico * la capacidad conductiva del conductor.

		Queremos poder pedirle a Rick:
			* recibir(unosMateriales): recibe unos materiales
			* experimentosQuePuedeRealizar(): 
				* 	Rick sabe un conjunto de experimentos, pero queremos saber de esos cu�les 
  				    son los que puede hacer con las cosas que tiene actualmente en su mochila.

				* realizar(unExperimento): Para realizar un experimento se cumplen los siguientes pasos:
						* Se buscan los materiales necesarios de la mochila de Rick
						* Se remueven los materiales de la mochila de Rick.
						* Se aplica el efecto del experimento
							Ppor ejemplo si se trata de la construcci�n de la bater�a, se debe agregar una nueva bater�a a la mochila de Rick,
							*  pero si se trata de un shock el�ctrico se debe incrementar la energ�a del compa�ero de Rick.
 */