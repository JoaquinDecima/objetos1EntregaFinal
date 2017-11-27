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
		
		var nuevoMaterial = new NuevoMaterial(self.esRadioactivo(),
											  0,
											  self.cuantaElectricidadConduce(),
											  self.cantidadDeMetal())
		unRick.guardarEnMochilaUnMaterial(nuevoMaterial)
	}
	
	method esRadioactivo() = componentes.any({unElemento=>unElemento.esRadioactivo()}) 
	
	method cuantaElectricidadConduce() = 3 * componentes.sum({unElemento=>unElemento.cuantaElectricidadConduce()})
	
	method cantidadDeMetal() = componentes.sum({unElemento=>unElemento.cantidadDeMetal()})
}