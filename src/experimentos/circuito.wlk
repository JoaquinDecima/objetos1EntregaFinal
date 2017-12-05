import materiales.material.*
import experimentos.experimento.*

object circuito inherits Experimento{
	
	override method materialesQueRequiere(mochila,estrategia) { 
		// TODO Acá no se nota, pero la selección debería entregar sólo uno (el mejor) 
		// y es responsabilidad del experimento armar una colección de materiales.
		return estrategia.seleccion().apply(
			mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce()>=5})
		)
	}
	
	override method realizar(unRick){
		super (unRick)
		unRick.guardarEnMochilaUnMaterial(new Circuito (componentes))
	}
	

}