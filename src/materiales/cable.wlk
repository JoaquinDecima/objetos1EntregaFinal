import material.*

class Cable inherits Material{
	
	var longitud
	var seccion
	
	constructor (_longitud,_seccion) =super(null){
		longitud = _longitud
		seccion = _seccion
	}
	
	override method cuantaElectricidadConduce(){
		return 3 * seccion
	}
	
	override method cantidadDeMetal() = longitud / 100 * seccion
	
}