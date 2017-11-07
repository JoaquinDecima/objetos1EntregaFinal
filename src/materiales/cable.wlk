import material.*

class Cable inherits Material{
	
	var longitud
	var seccion
	
	constructor (_cantidadDeMetal,_longitud,_seccion){
		cantidadDeMetal = _cantidadDeMetal
		longitud = _longitud
		seccion = _seccion
	}
	
	override method cuantaElectricidadConduce(){
		return 3 * seccion
	}
	
	override method cuantaElectricidadGenera() = 0
	
	override method esRadioactivo() = false	
	
}