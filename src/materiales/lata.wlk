import material.*

class Lata inherits Material{
	
	var cantidadDeMetal
	
	constructor (_cantidadDeMetal) =super (0,0,0,0){
		cantidadDeMetal = _cantidadDeMetal
	}
	
	override method cuantaElectricidadConduce(){
		return cantidadDeMetal * 0.1
	}
	
	override method cantidadDeMetal() = cantidadDeMetal
	
}