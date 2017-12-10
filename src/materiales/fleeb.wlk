import material.*

class Fleeb inherits Material{
	
	var edad
	var materialesQueComio = #{}
	
	constructor (_edad) {
		edad = _edad
	}
	
	override method esRadioactivo(){
		return edad >= 15
	}
	
	override method cuantaElectricidadConduce(){
		return materialesQueComio.map({material => material.cuantaElectricidadConduce()}).min()
	}
	
	override method cuantaElectricidadGenera(){
		return materialesQueComio.map({material => material.cuantaElectricidadGenera()}).max()
	}
	
	override method cantidadDeMetal(){
		return materialesQueComio.sum({material => material.cantidadDeMetal()})
	
	}
	
	override method energiaQueResta(){
		return (super() * 2) - self.energiaQueSuma()
	}
	
	method energiaQueSuma() {
		if(!self.esRadioactivo()){return 10}
		return 0
	}
	
	method comerMaterial(unMaterial){
		materialesQueComio.add(unMaterial)
	}
	
	override method esSerVivo() = true
}