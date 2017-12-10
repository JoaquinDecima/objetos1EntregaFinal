import materiales.estrategia.materialesEstrategia.*

object menorCantidadMetal inherits MaterialesEstrategia {

	override method seleccion() = {mochila =>
									if (mochila.isEmpty()) return mochila 
								 	return [
										mochila.min({material=>material.cantidadDeMetal()})
									]
								}
	
}