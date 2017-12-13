import experimento.*

	 
object shock inherits Experimento{
	
	method imagen()="assets/shock.png"

	override method materialesQueRequiere(mochila,estrategia){
		return mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce() >= 1}) +
				mochila.filter ({otroMaterial => otroMaterial.cuantaElectricidadGenera()>=1})
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