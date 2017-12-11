class Humor{
	
	method recolectar(unCompaniero,unMaterial){
		if (not unCompaniero.puedeRecolectar(unMaterial)) unCompaniero.error ("No tiene suficiente energia")
		unCompaniero.guardar(unMaterial)
		unCompaniero.consumirEnergia(unMaterial.energiaQueResta())
	}
}