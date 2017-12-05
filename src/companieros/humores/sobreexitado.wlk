
object sobreexitado {
	var chance = [1,2,3,4]

	method cantMaxMochila() = 6
	
	method recolectar(unCompaniero,unMaterial){
		// TODO Acá también hay código repetido
		if (not unCompaniero.puedeRecolectar(unMaterial)) unCompaniero.error ("No tiene suficiente energia")
		unCompaniero.guardar(unMaterial)
		unCompaniero.consumirEnergia(unMaterial.energiaQueResta())
		if(chance.anyOne() == 1){
			unCompaniero.vaciarMochila()
		}
	}

}