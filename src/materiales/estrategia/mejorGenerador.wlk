import materiales.estrategia.materialesEstrategia.*

object mejorGenerador inherits MaterialesEstrategia {

	override method seleccion() = {mochila => 
									if (mochila.isEmpty()) self.error("Materiales insuficientes") 
								 	return [
										mochila.max({material=>material.cuantaElectricidadGenera()})
									]
								}
								
}