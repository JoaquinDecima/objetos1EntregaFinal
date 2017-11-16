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
		//Quitar uno al azar, si no hay nada no hace nada
		if (not unPersonaje.mochila().isEmpty()){
			unPersonaje.quitar(unPersonaje.mochila().anyOne()) //Se podria delegar en personaje un metodo quitarAlAzar
		}
	}
}
class ModificarEnergia { //Modifica la energia del personaje
	const cantEnergia
	
	constructor (_cantEnergia){
		cantEnergia=_cantEnergia
	}
	
	method aplicar(unPersonaje){
		unPersonaje.energia(unPersonaje.energia()+cantEnergia)
		//Podria mejorar si aplicamos el metodo modificarEnergia(valorAbsoluto) en companiero
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

	
	
	
	
	
	
	
	



