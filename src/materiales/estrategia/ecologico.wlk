import materiales.estrategia.materialesEstrategia.*

object ecologico inherits MaterialesEstrategia {

	override method seleccion() = {mochila => 
								    if (mochila.isEmpty()) return mochila 
									return [mochila.findOrDefault(
										{unMaterial => unMaterial.esSerVivo()},
										{unMaterial => !unMaterial.esRadioactivo()}
									)]		
								}
}