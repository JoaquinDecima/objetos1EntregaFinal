class EntregarTodo {
	method aplicar(unPersonaje){
		unPersonaje.darTodoACompaniero() 
	}
}

class QuitarUnoAlAzar {
	method aplicar(unPersonaje){
		unPersonaje.quitarUnoAlAzar()
	}
}
class ModificarEnergia { 
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
		unPersonaje.recolectar(materialOculto)
	}
}

	
	
	
	
	
	
	
	



