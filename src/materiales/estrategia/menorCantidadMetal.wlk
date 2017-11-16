import materiales.estrategia.materialesEstrategia.*

object menorCantidadMetal inherits MaterialesEstrategia {

	override method seleccion() = {mochila => [
									mochila.min({material=>material.cantidadDeMetal()})
								]}
	

}