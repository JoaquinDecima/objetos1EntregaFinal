
object malHumor {

	method cantMaxMochila() = 1
	
	method recolectar(unCompaniero,unMaterial){
		// TODO Código repetido con buenHumor
		if (not unCompaniero.puedeRecolectar(unMaterial)) unCompaniero.error ("No tiene suficiente energia")
		unCompaniero.guardar(unMaterial)
		unCompaniero.consumirEnergia(unMaterial.energiaQueResta())
	}

}