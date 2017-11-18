import material.*

class Cable inherits Material{
	
	var longitud
	var seccion
	
	constructor (_longitud,_seccion){
		longitud = _longitud
		seccion = _seccion
	}
	
	override method cuantaElectricidadConduce(){
		return 3 * seccion
	}

	// TODO En realidad está mal el enunciado, pero para pasar de metros a centímetros
	// hay que dividir por cien, no por mil.	
	override method cantidadDeMetal() = longitud / 1000 * seccion
	
}