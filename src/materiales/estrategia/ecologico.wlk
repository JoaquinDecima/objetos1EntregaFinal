import materiales.estrategia.materialesEstrategia.*

object ecologico inherits MaterialesEstrategia {

	override method seleccion() = {mochila => 
								    if (mochila.isEmpty()) self.error("Materiales insuficientes") 
									return [mochila.findOrElse(
										{unMaterial => unMaterial.esSerVivo()},
										{unMaterial => !unMaterial.esRadioactivo()}
									)]		
								}
}