class Material{
	
	
	method esRadioactivo() = false
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cantidadDeMetal()
	
	method modificarEnergiaDe (unPersonaje) {
		unPersonaje.energia(unPersonaje.energia()-self.energiaQueResta())
	}
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
}
