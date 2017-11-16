class EntregarTodo {
	var unCompaniero
	
	constructor (_unCompaniero){
		unCompaniero=_unCompaniero
	}

	method aplicar(unPersonaje){
		unPersonaje.darObjetosA(unCompaniero) //Se podria delegar en personaje
	}
}

class QuitarUnoAlAzar {
	method aplicar(unPersonaje){
		unPersonaje.quitarUnoAlAzar()
	}
}
class ModificarEnergia { //Modifica la energia del personaje
	const cantEnergia
	
	constructor (_cantEnergia){
		cantEnergia=_cantEnergia
	}
	
	method aplicar(unPersonaje){
		unPersonaje.modificarEnergia(cantEnergia)
	}
}
class RecolectarMaterialOculto {
	const materialOculto
	
	constructor (unMaterial){
		materialOculto=unMaterial
	}
	
	method aplicar(unPersonaje){
		//Depende si el recolector puede recolectar
		unPersonaje.recolectar(materialOculto)

	}
}

	
	
	
	
	
	
	
	



