import materiales.material.*
import experimentos.experimento.*

object circuito inherits Experimento{
	
	override method materialesQueRequiere(mochila,estrategia) { 
		return estrategia.seleccion().apply(
			mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce()>=5})
		)
	}
	
	override method realizar(unRick){
		super (unRick)
		unRick.guardarEnMochilaUnMaterial(new Circuito (componentes))
	}
	

}