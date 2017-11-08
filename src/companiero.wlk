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
	var mochila = []
	
	constructor (_energia){
		energia = _energia
	}
	
	method puedeRecolectar(unMaterial) = unMaterial.puedeSerRecolectadoPor(self) 

	method energia() = energia
	
	method energia(unaCantidadDeEnergia){
		energia = unaCantidadDeEnergia
	}
	
	method mochila () = mochila
	
	method guardar(unMaterial){
		if (mochila.size()==3) self.error ("No hay mas lugar en la mochila")
		mochila.add(unMaterial)
	}
	
	method recolectar(unMaterial){
		if (not self.puedeRecolectar(unMaterial)) self.error ("No tiene suficiente energia")
		self.guardar(unMaterial)
		unMaterial.modificarEnergiaDe(self)
	} 
	
	method darObjetosA(unRick){
		/*mochila.forEach({material => unCompaniero.guardar(material)
									self.quitar(material)
		})*/
		unRick.recibir(mochila)
		self.mochila().clean()
	}
	
	method quitar(unMaterial){
		mochila.remove(unMaterial)
	}
	
	
/* 	
	method sumarEnergia(cantidad){
		energia += cantidad
	}
	
	method restarEnergia(cantidad){
		energia -= cantidad
	}
	
*/
	
}

object morty inherits Companiero(100){}