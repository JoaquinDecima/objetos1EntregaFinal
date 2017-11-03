/*
 * CompaÃ±ero
 * 
 * En este caso podemos estimar el compaÃ±ero es Morty pero no personalizamos la clase
 * dado que tambien puede ser otro en un universo palalelo.
 */
 
 //Yo arranque llamando Personaje a Morty pero si quieren se lo cambiamos a companiero o lo que prefieran

class Personaje{
	var energia
	var mochila=[]
	
	constructor (_energia){
		energia=_energia
	}
	
	method puedeRecolectar(unMaterial) = unMaterial.puedeSerRecolectadoPor(self) 

	method recolectar(unMaterial){
		//La recolecta (si puede) y se la guarda en su mochila.
		if (not self.puedeRecolectar(unMaterial)) self.error ("NO PUEDE RECOLECTAR ESTE MATERIAL")
		self.guardar(unMaterial)
 
		/*Al recolectar materiales radiactivos, la energía de Morty disminuye en la cantidad 
		requerida luego de la acción.*/
//		if (unMaterial.esRadioactivo()) self.disminuirEnergia(unMaterial.energiaQueAfecta())  	
		self.actualizarEnergia(unMaterial.energiaQueAfecta())
	} 
	
	
	method darObjetosA(unCompanero){
		// Saca todas las cosas de su mochila y se las pasa a un compañero
		mochila.forEach({material=>
									unCompanero.guardar(material)
									self.quitar(material)
		})
	}
	
	
	// otros metodos
	method quitar(unMaterial){
		mochila.remove(unMaterial) //verificar si quita todo los materiales iguales o solo ese material
	}
	method guardar(unMaterial){
		//se presupone que al agregar un 4to elemento se elimina el primero levantado
		if (mochila.size()==3) self.quitar(mochila.first())
		mochila.add(unMaterial)
	}
	
	method actualizarEnergia(cantidad){
		energia+=cantidad
	}
	method energia()=energia
}