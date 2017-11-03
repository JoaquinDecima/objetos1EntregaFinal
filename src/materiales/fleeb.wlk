import lata.Lata
class Fleeb inherits Lata{
	/* Fleeb: 
		* Le gusta comer materiales. 
		* Tiene tanto metal como el que haya consumido. 
		***** Cuando tiene m�s de 15 a�os se vuelve radioactivo. *****
		* Produce tanta electricidad como el material que haya comido que m�s electricidad produzca. 
		* Conduce la electricidad como el material que haya comido que menos electricidad conduzca.
	*/
	var edad
	
	constructor (_gramos)=super(_gramos,0){
		
	}
	
	//FALTA VER QUE PASA CUANDO CRECE y llega a 15 A�OS
	
	method comerMaterial(unMaterial){
		metal+=unMaterial.gramos()
		energia=energia.max(unMaterial.energia())					//electricidad que produce
		electricidad=electricidad.min(unMaterial.electricidad())  	//electricidad que conduce
	}
	
	override method puedeSerRecolectadoPor(unPersonaje){
			/*Morty, Al tratar de recolectarlo, se le escapa, por lo tanto se necesita el doble de la energ�a que se
				necesita para recolectar otra cosa, 

			*/
			 return unPersonaje.energia()>= self.gramos()*2
	}
	
	/*	pero al recolectarlo el Fleeb le da energ�a a Morty y esta se incrementa
     	en 10 puntos, salvo que sea radiactivo.
	*/	
	override method energiaQueAfecta() = 10 
	
}