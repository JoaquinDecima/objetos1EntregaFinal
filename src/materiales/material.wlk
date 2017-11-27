class Material{
	
	method esRadioactivo() =  false
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	method esSerVivo() = false
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
	
	method alterarPersonalidadDe(unPersonaje){} //para polimorfismo de materiales. Solo lo usa parasitoAlienigena

	method cantidadDeMetal() 
}

class NuevoMaterial inherits Material{
	var esRadioActivo
	var electricidadQueGenera
	var electricidadQueConduce
	var cantMetal 
	
	constructor (_esRadioActivo,_electricidadQueGenera,_electricidadQueConduce,_cantMetal){
		esRadioActivo=_esRadioActivo
		electricidadQueConduce=_electricidadQueConduce
		electricidadQueGenera=_electricidadQueGenera
		cantMetal=_cantMetal
		
	}
	
	override method esRadioactivo() =  esRadioActivo
	
	override method cuantaElectricidadConduce() = electricidadQueConduce
	
	override method cuantaElectricidadGenera() = electricidadQueGenera
	
	override method cantidadDeMetal()=cantMetal
}