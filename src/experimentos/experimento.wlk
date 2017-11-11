
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
		unRick.quitarDeLaMochila(self.materialesQueRequiere(unRick.mochila()))
		self.componentes(self.materialesQueRequiere(unRick.mochila()).asSet())
		unRick.guardarUno(self)
	}

	
	//--------------------

	method cantidadDeMetal() = componentes.sum({material=>material.cantidadDeMetal()})
	
	method esRadioactivo() = false
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	

}