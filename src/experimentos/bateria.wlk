import experimentos.experimento.*


object bateria inherits Experimento{
	 
 	override method materialesQueRequiere(mochila,estrategia){
 		return estrategia.seleccion().apply(
 			mochila.filter({unMaterial=>unMaterial.cantidadDeMetal()>200 or unMaterial.esRadioactivo()})
 			)
 	}																													

	override method realizar(unRick){
		super(unRick)
		unRick.guardarEnMochila(self)
		unRick.companiero().energia(unRick.companiero().energia()-self.energiaQueResta())
	}
	
	override method energiaQueResta() = 5
	
	override method cuantaElectricidadGenera() = 2 * self.cantidadDeMetal()
	
	override method esRadioactivo() = true
 	
}