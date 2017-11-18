class Material{
	
	method esRadioactivo() =  false
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	// TODO NO, esto no es correcto :)
	method cantidadDeMetal()= self.cantidadDeMetal() //Revisemos si es correcto
	
	// TODO Creo que no es necesario modificar la energía del personaje, si el Material puede
	// devolver la energía que resta con eso es suficiente y quedaría menos acoplado.
	method modificarEnergiaDe (unPersonaje) {
		unPersonaje.energia(unPersonaje.energia()-self.energiaQueResta())
	}
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
}
