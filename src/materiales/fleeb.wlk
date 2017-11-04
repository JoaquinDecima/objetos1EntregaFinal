import lata.Lata
class Fleeb inherits Lata{
	var edad
	var comio = {}
	
	constructor (nEdad)=super(0){
		edad = nEdad
	}
	
	method comerMaterial(oMaterial){
		comio.add(oMaterial)
	}
	
	override method energiaQueResta(){
		return super() * 2
	}
	
	override method energiaQueSuma(){
		return 30
	}
	
	override method esRadioactivo(){
		return edad >= 15
	}
	
	override method cantMetal(){
		return comio.sum({material => material.cantMetal()})
	}
	
	override method cuantaElectricidadGenera(){
		return comio.max({material => material.cuantaElectricidadGenera()})
	}
	
	override method cuantaElectricidadConduce(){
		return comio.min({material => material.cuantaElectricidadConduce()})
	}
}