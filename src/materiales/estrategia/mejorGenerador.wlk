import materiales.estrategia.materialesEstrategia.*

object mejorGenerador inherits MaterialesEstrategia {

	override method seleccion() = {mochila => [
									mochila.max({material=>material.cuantaElectricidadGenera()})
									]}
								
}