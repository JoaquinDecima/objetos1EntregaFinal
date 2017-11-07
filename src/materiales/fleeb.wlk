import material.*

class Fleeb inherits Material{
	
	var edad
	var materialesQueComio = #{}
	
	constructor (_edad){
		edad = _edad
	}
	
	override method esRadioactivo(){
		return edad >= 15
	}
	
	override method cuantaElectricidadConduce(){
		return materialesQueComio.min({material => material.cuantaElectricidadConduce()})
	}
	
	override method cuantaElectricidadGenera(){
		return materialesQueComio.max({material => material.cuantaElectricidadGenera()})
	}
	
	override method cantidadDeMetal(){
		return materialesQueComio.sum({material => material.cantidadDeMetal()})
	
	}
	
	override method energiaQueResta(){
		if(!self.esRadioactivo()){ return (super() * 2) - 10}
		return (super() * 2) 
	}
	
	method comerMaterial(unMaterial){
		materialesQueComio.add(unMaterial)
	}
}