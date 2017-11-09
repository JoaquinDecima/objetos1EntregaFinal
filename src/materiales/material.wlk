class Material{
	
	var electricidadQueConduce
	var esRadiactivo
	var cantMetal
	var electricidadQueGenera
	
	constructor (_electricidadQueConduce,_esRadiactivo,_cantMetal,_electricidadQueGenera){
		electricidadQueConduce=_electricidadQueConduce
		esRadiactivo=_esRadiactivo
		cantMetal=_cantMetal
		electricidadQueGenera=_electricidadQueGenera	
	}
	
	method esRadioactivo() = false
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cantidadDeMetal()= self.cantidadDeMetal() //Revisemos si es correcto
	
	method modificarEnergiaDe (unPersonaje) {
		unPersonaje.energia(unPersonaje.energia()-self.energiaQueResta())
	}
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
}
