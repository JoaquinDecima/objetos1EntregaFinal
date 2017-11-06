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
	
	constructor (nEnergia){
		energia = nEnergia
	}
	
	method puedeRecolectar(oMaterial) = oMaterial.puedeSerRecolectadoPor(self) 

	method energia() = energia
	
	method guardar(oMaterial){
		if (mochila.size()==3) self.error ("No hay mas lugar en la mochila")
		mochila.add(oMaterial)
	}
	
	method recolectar(oMaterial){
		if (not self.puedeRecolectar(oMaterial)) self.error ("NO PUEDE RECOLECTAR ESTE MATERIAL")
		self.guardar(oMaterial)
		self.restarEnergia(oMaterial.energiaQueResta())
		self.sumarEnergia(oMaterial.energiaQueSuma())
	} 
	
	
	method darObjetosA(unCompanero){
		mochila.forEach({material => unCompanero.guardar(material)
									self.quitar(material)
		})
	}
	
	
	method quitar(unMaterial){
		mochila.remove(unMaterial)
	}
	
	
	method sumarEnergia(cantidad){
		energia += cantidad
	}
	
	method restarEnergia(cantidad){
		energia -= cantidad
	}	
}

object morty inherits Companiero(100){}