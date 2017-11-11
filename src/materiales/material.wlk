class Material{
	
	var electricidadQueConduce = 0
	var esRadiactivo = false
	var cantMetal = 0
	var electricidadQueGenera = 0
	
	method electricidadQueConduce(nElec){ electricidadQueConduce =nElec}
	
	method esRadioactivo(bRadioactivo){esRadiactivo = bRadioactivo} 
	
	method cantMetal(nCantMetal){cantMetal = nCantMetal}
	
	method electricidadQueGenera(nElectricidadQueGenera ){electricidadQueGenera = nElectricidadQueGenera }
	
	method esRadioactivo() = esRadiactivo
	
	method cuantaElectricidadConduce() = electricidadQueConduce
	
	method cuantaElectricidadGenera() = electricidadQueGenera
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cantidadDeMetal()= self.cantidadDeMetal() //Revisemos si es correcto
	
	method modificarEnergiaDe (unPersonaje) {
		unPersonaje.energia(unPersonaje.energia()-self.energiaQueResta())
	}
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
}
