import materiales.estrategia.materialesEstrategia.*

object alAzar inherits MaterialesEstrategia {

	override method seleccion() = {mochila =>
									if (mochila.isEmpty()) return mochila 
									return [mochila.anyOne()]
	}
	
}