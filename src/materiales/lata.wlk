import material.*

class Lata inherits Material{
	
	constructor (_cantidadDeMetal){
		cantidadDeMetal = _cantidadDeMetal
	}
	
	override method esRadioactivo() = false
	
	override method cuantaElectricidadConduce(){
		return cantidadDeMetal * 0.1
	}

	override method cuantaElectricidadGenera() = 0
	
}