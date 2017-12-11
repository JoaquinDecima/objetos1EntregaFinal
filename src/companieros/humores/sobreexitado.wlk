import humor.*

object sobreexitado inherits Humor {
	var chance = [1,2,3,4]

	method cantMaxMochila() = 6
	
	override method recolectar(unCompaniero,unMaterial){
		super(unCompaniero,unMaterial)
		if(chance.anyOne() == 1){
			unCompaniero.vaciarMochila()
		}
	}

}