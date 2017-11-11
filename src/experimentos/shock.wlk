import experimento.*

object shock inherits Experimento{
	/*  Shock electrico: Sirve para incrementar la energia de su compañero. 
		* Para eso se necesita:
			* 	un generador electrico y un material conductivo. 
			* 	Se incrementa la energia en tantos puntos como la capacidad del 
				generador electrico * la capacidad conductiva del conductor.
	 */

	method materialesQueRequiere(mochila){
		if (mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1}).size() == 0){
			self.error ("No tiene Conductor")
		}
		if (mochila.filter({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1}).size() == 0){
			self.error ("No tiene Generador")
		}
		
		return mochila.find({unMaterial=>unMaterial.cuantaElectricidadConduce()>=1}).add(mochila.find({unMaterial=>unMaterial.cuantaElectricidadGenera()>=1}))
	}

}