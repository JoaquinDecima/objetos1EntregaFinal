/*
 * Compañero
 * 
 * En este caso podemos estimar el compañero es Morty pero no personalizamos la clase
 * dado que tambien puede ser otro en un universo palalelo.
 */
 
 import rick.*
 import materiales.cable.*
 import materiales.fleeb.*
 import materiales.lata.*
 import materiales.materia_oscura.*
 
class Companiero{
	var energia
	var mochila=[]
	
	constructor (_energia){
		energia=_energia
	}
	
	method puedeRecolectar(unMaterial) = unMaterial.puedeSerRecolectadoPor(self) 

	method energia() = energia
	
	method recolectar(unMaterial){
		//La recolecta (si puede) y se la guarda en su mochila.
		if (not self.puedeRecolectar(unMaterial)) self.error ("NO PUEDE RECOLECTAR ESTE MATERIAL")
		self.guardar(unMaterial)
 
		/*Al recolectar materiales radiactivos, la energ�a de Morty disminuye en la cantidad 
		requerida luego de la acci�n.*/
//		if (unMaterial.esRadioactivo()) self.disminuirEnergia(unMaterial.energiaQueAfecta())  	
		self.actualizarEnergia(unMaterial.energiaQueAfecta())
	} 
	
	
	method darObjetosA(unCompanero){
		// Saca todas las cosas de su mochila y se las pasa a un compa�ero
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
}

object morty inherits Companiero(100){}