class Material{
	
	method esRadioactivo() =  false
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cantidadDeMetal()= self.cantidadDeMetal() //Revisemos si es correcto
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	method esSerVivo() = false
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
	
	method alterarPersonalidadDe(unPersonaje){} //para polimorfismo de materiales. Solo lo usa parasitoAlienigena
}
