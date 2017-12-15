import experimento.*

	 
object shock inherits Experimento{
	
	method imagen()="assets/shock.png"

	override method materialesQueRequiere(mochila,estrategia){
	//	if (not self.cumpleCombinacionDeCondiciones(mochila)) self.error ("No cumple requisitos")
		return estrategia.seleccion().apply(
 					mochila.filter({unMaterial=>unMaterial.puedeConducirElectricidad()})
 				) +
 				estrategia.seleccion().apply(
 					mochila.filter({otroMaterial => otroMaterial.puedeGenerarElectricidad()})
 				)
	}
	
//	method cumpleCombinacionDeCondiciones(mochila){
//		return (self.materialesQueConducen(mochila).size()>0 and self.materialesQueGeneran(mochila).size()>0)
//	}
//
//	method materialesQueConducen(mochila) = mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce() >= 1})
//		
//	method materialesQueGeneran(mochila) = mochila.filter ({unMaterial => unMaterial.cuantaElectricidadGenera()>=1})	
	
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