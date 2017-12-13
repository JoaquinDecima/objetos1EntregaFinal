import materiales.estrategia.materialesEstrategia.*

object alAzar inherits MaterialesEstrategia {

	override method seleccion() = {mochila =>
									if (mochila.isEmpty()) self.error("Materiales insuficientes")
									return [mochila.anyOne()]
	}
	
}