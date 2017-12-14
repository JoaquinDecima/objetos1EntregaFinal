import experimento.*

	 
object shock inherits Experimento{
	
	method imagen()="assets/shock.png"

	override method materialesQueRequiere(mochila,estrategia){
		if (not self.cumpleCombinacionDeCondiciones(mochila)) self.error ("No cumple requisitos")
		
		return mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce() >= 1}) +
				mochila.filter ({otroMaterial => otroMaterial.cuantaElectricidadGenera()>=1})
		 
	}
	method cumpleCombinacionDeCondiciones(mochila){
		if 	(self.materialesQueConducen(mochila).size()>0 and self.materialesQueGeneran(mochila).size()>0){
			return true
		}
		return false
		
	}

	method materialesQueConducen(mochila) = mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce() >= 1})
		
	method materialesQueGeneran(mochila) = mochila.filter ({unMaterial => unMaterial.cuantaElectricidadGenera()>=1})	
	
	override method realizar(unRick){
		super(unRick)
		unRick.companiero().energia(unRick.companiero().energia()+self.energiaQueSuma())
	}
	
	method energiaQueSuma(){
		return self.generadorElectrico().cuantaElectricidadConduce() *
			   self.conductor().cuantaElectricidadGenera()
	}
	
	method generadorElectrico() = componentes.find({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1})
	
	method conductor()=componentes.find({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1})
	
}