class Material{
	
	var cantidadDeMetal 	//gramos
	
	method esRadioactivo()
	
	method cuantaElectricidadConduce()
	
	method cuantaElectricidadGenera()
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cantidadDeMetal() = cantidadDeMetal
	
	method modificarEnergiaDe (unPersonaje) {
		unPersonaje.energia(unPersonaje.energia()-self.energiaQueResta())
	}
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
}
