class Material{
	var cantMetal //propiedad
	
	constructor (nCantMetal){
		cantMetal = nCantMetal
	}
	
	method cantMetal() = cantMetal
	
	method esRadioactivo() = false
	
	method cuantaElectricidadGenera() = 0
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
	
	method cuantaElectricidadConduce() = 0
	
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia()>= self.energiaQueAfecta()
	
	method energiaQueAfecta() = self.cantMetal()
}
