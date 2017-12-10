import materiales.estrategia.materialesEstrategia.*

object mejorGenerador inherits MaterialesEstrategia {

	override method seleccion() = {mochila => 
									if (mochila.isEmpty()) return mochila 
								 	return [
										mochila.max({material=>material.cuantaElectricidadGenera()})
									]
								}
								
}