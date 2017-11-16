import materiales.estrategia.materialesEstrategia.*

object ecologico inherits MaterialesEstrategia {

	override method seleccion() = {mochila => [
									mochila.findOrElse({material => material.esSerVivo()},{material=>!material.esRadioactivo()})
		]}
		
}