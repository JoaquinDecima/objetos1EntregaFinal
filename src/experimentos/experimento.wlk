
class Experimento {

	var componentes = []

	method componentes()=componentes
	
	method componentes(unosMateriales) {
		componentes=unosMateriales
	}		


	/*
	 method cumpleRequisitos(mochila){
		return mochila.size()>0
	}
	*/
		
	method materialesQueRequiere(mochila)
	
	method cumpleRequisitos(mochila) = self.materialesQueRequiere(mochila).size()>0
	
/*
 * method aplicarEfecto(unRick)
 */	
	
	method realizar(unRick){
		var materialesComponentes = self.materialesQueRequiere(unRick.mochila())
		unRick.quitarDeLaMochila(materialesComponentes)
		self.componentes(materialesComponentes)
		unRick.guardarEnMochila(self)
	}

	
	//--------------------

	method cantidadDeMetal() = componentes.sum({material=>material.cantidadDeMetal()})
	
	method esRadioactivo() = false
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	

}