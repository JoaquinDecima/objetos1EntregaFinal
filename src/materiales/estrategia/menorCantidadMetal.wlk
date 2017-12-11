import materiales.estrategia.materialesEstrategia.*

object menorCantidadMetal inherits MaterialesEstrategia {

	override method seleccion() = {mochila =>
									if (mochila.isEmpty()) self.error("Materiales insuficientes") 
								 	return [
										mochila.min({material=>material.cantidadDeMetal()})
									]
								}
	
}