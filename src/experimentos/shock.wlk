import experimento.*

	 
object shock inherits Experimento{

	override method materialesQueRequiere(mochila,estrategia){
		return mochila.findOrElse({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1 or 
							unMaterial.cuantaElectricidadGenera()>=1},{[]})
	}
	
	override method realizar(unRick){
		super(unRick)
		unRick.companiero().energia(unRick.companiero().energia()-self.energiaQueSuma())
	}
	
	method energiaQueSuma(){
		return self.generadorElectrico().cuantaElectricidadConduce() *
			   self.conductor().cuantaElectricidadGenera()
	}
	
	method generadorElectrico() = componentes.find({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1})
	
	method conductor()=componentes.find({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1})
	
}