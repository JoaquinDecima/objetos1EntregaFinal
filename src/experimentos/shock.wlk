import experimento.*

/*  Shock electrico: Sirve para incrementar la energia de su compañero. 
		* Para eso se necesita:
			* 	un generador electrico y un material conductivo. 
			* 	Se incrementa la energia en tantos puntos como la capacidad del 
				generador electrico * la capacidad conductiva del conductor.
	 */
	 
object shock inherits Experimento{

	override method materialesQueRequiere(mochila){
		/*
		if (mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1}).size() == 0){
			self.error ("No tiene Conductor")
		}
		if (mochila.filter({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1}).size() == 0){
			self.error ("No tiene Generador")
		}
		
		return mochila.find({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1})
					  .add(mochila.find({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1}))
		*/
		return mochila.findOrElse({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1 or 
							unMaterial.cuantaElectricidadGenera()>=1},{[]})
	}
	
	override method realizar(unRick){
		unRick.companiero().energia(unRick.companiero().energia()-self.energiaQueSuma())
	}
	
	method energiaQueSuma(){
		return self.generadorElectrico().cuantaElectricidadConduce() *
			   self.conductor().cuantaElectricidadGenera()
	}
	
	method generadorElectrico() = componentes.find({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1})
	
	method conductor()=componentes.find({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1})
	
}