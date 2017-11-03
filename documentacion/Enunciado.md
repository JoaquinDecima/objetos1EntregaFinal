Primera Parte: Morty
Hay multiples cosas que Morty puede encontrar en este planeta, de los cuales nos interesa saber: 
	* Sus gramos de metal 
	* Cuanta electricidad pueden conducir
	* Si son radiactivos
	* Cuanta energia produce.
	
Morty tiene una cantidad de energia que cambia a medida que se va cansando o se recupera.
 
Para recolectar un elemento necesita energia, tantos puntos de energia como gramos de metal posea el
material, aunque algunos materiales tienen requerimientos especiales.
* NOTA: Se delega el control del puedeRecolectar al elemento

Ademas Morty no puede tener en su mochila mas de 3 materiales a la vez.
* NOTA: se elimina el primero o no puedo recolectar?
 
Al recolectar materiales radiactivos, la energia de Morty disminuye en la cantidad requerida luego de la accion.
* NOTA: La energia que disminuye es la cantidad de gramos del elemento a recolectar?

Los materiales que Morty puede encontrar son:
	* Lata: 
			* 	Tiene una cantidad de metal que es distinta para cada lata
			* 	No es radiactivo
			*   No genera electricidad 
			*   Puede producir electricidad, 0.1 Amperes por gramo de metal que posee.
	* Cable: Tiene:
			* 	Una longitud en metros 
			* 	Una seccion en cm� (la superficie transversal). 
			*   La cantidad de metal es 1 gramo por cm� ((longitud / 1000) * seccion)
			*   Puede conducir electricidad hasta 3 Amperes por cm� de seccion.
			*   No genera electricidad 
			*   No es radiactivo.

	* Fleeb: 
		* Le gusta comer materiales. 
		* Tiene tanto metal como el que haya consumido. 
		* Cuando tiene mas de 15 años se vuelve radioactivo. 
		* Produce tanta electricidad como el material que haya comido que mas electricidad produzca. 
		* Conduce la electricidad como el material que haya comido que menos electricidad conduzca.
		
		Morty, Al tratar de recolectarlo, se le escapa, por lo tanto se necesita el doble de la energia que se
		necesita para recolectar otra cosa, pero al recolectarlo el Fleeb le da energia a Morty y esta se incrementa
		en 10 puntos, salvo que sea radiactivo.

	* Materia Oscura: 
		* 	Contiene un material base. 
		*   La conductividad es la mitad de la base
		*   La cantidad de metal es la misma que la base
		*   No es radiactivo
		*   Genera el doble de energia que la base.


En este punto nos gustaria poder preguntarle o pedirle a Morty:
	* puedeRecolectar(unMaterial)
	* recolectar(unMaterial): la recolecta (si puede) y se la guarda en su mochila.
	* darObjetosA(unCompanero): saca todas las cosas de su mochila y se las pasa a un compaiero



Segunda Parte: Rick
	* Rick realiza experimentos
	* Aquellos objetos necesarios que tiene en su mochila (aquellos que le dio su
	  compaiero, Morty en este caso), con esto transforma materiales en otros materiales
	* algunos experimentos afectan a su compaiero.

Los experimentos que Rick puede realizar son:
	*	Construir una Bateria: 
			* 	Se necesita 
					* un material que tenga mas de 200 gramos de metal
					* y un material radiactivo. 

			*   No conduce la electricidad
			*   El metal es la suma del metal de sus componentes
			*   La electricidad que genera es 2 Amperes por gramo de metal. 
			*   Siempre es radiactiva
			*   al construirse el compañero de rick pierde 5 puntos de energia.

	*	Construir un Circuito: Requiere de al menos un material que conduzcan como minimo 5 amperes.
			*  El circuito es construido con todos los materiales que Rick tiene en la mochila 
     			que conducen al menos 5 amperes. 
			* El circuito conduce el triple que la suma de lo que conducen sus componentes
			* Es radiactivo si alguno de sus componentes lo es
			* El metal es la suma del metal de sus componentes
			* y no genera electricidad.

	*   Shock electrico: Sirve para incrementar la energia de su compañero. 
		* Para eso se necesita:
			* 	un generador electrico 
			*   y un material conductivo. 
			* 	Se incrementa la energia en tantos puntos como la capacidad del 
				generador electrico * la capacidad conductiva del conductor.

		Queremos poder pedirle a Rick:
			* recibir(unosMateriales): recibe unos materiales
			* experimentosQuePuedeRealizar(): 
				* 	Rick sabe un conjunto de experimentos, pero queremos saber de esos cuales 
  				    son los que puede hacer con las cosas que tiene actualmente en su mochila.

				* realizar(unExperimento): Para realizar un experimento se cumplen los siguientes pasos:
						* Se buscan los materiales necesarios de la mochila de Rick
						* Se remueven los materiales de la mochila de Rick.
						* Se aplica el efecto del experimento
							Ppor ejemplo si se trata de la construccion de la bateria, se debe agregar una nueva bateria a la mochila de Rick,
							*  pero si se trata de un shock electrico se debe incrementar la energia del compaiero de Rick.
 */