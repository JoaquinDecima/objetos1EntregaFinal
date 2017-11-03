// EN DESARROLLO
class Bateria {
/*	Construir una Bater�a: 
			* 	Se necesita:
					* un material que tenga m�s de 200 gramos de metal
					* y un material radiactivo. 

			*   No conduce la electricidad
			*   El metal es la suma del metal de sus componentes
			*   La electricidad que genera es 2 Amperes por gramo de metal. 
			*   Siempre es radiactiva
			*   al construirse el compa�ero de rick pierde 5 puntos de energ�a.
 */
 	var materialMetal
 	var materialRadio
 	
 	var electricidad=0
 	var metal
 	var energia // electricidad generada en amperes
 	var radioactivo=true
 	
 	constructor(materialMetalico, materialRadioactivo){
 		
 		//Habra que controlar que los materiales cumplan la condicion o lanzar una excepcion
 		materialMetal=materialMetalico
 		materialRadio=materialRadioactivo
 		metal=materialMetal.metal()+materialRadioactivo.metal()
 		electricidad=metal*2
 	}
 	
 	method efectarA(unPersonaje){
 		unPersonaje.actualizarEnergia(-5) 
 	}
 	
}