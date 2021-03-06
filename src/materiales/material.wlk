class Material{
	
	method esRadioactivo() =  false
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia() >= self.energiaQueResta()
	
	method energiaQueResta() = self.cantidadDeMetal()
	
	method cuantaElectricidadConduce() = 0
	
	method cuantaElectricidadGenera() = 0
	
	method esSerVivo() = false
	
	method puedeGenerarElectricidad() = self.cuantaElectricidadGenera() > 0
		
	method puedeConducirElectricidad() = self.cuantaElectricidadConduce() > 0
	
	method cantidadDeMetal() 
	
	method serRecolectado(unCompaniero){
		unCompaniero.consumirEnergia(self.energiaQueResta())
		
	}
	
	//Corregimos la forma de igualdad de los materiales
	//Dos materiales con iguales caracteristicas son iguales pero no identicos (===)
	override method ==(unMaterial){ 
		return unMaterial != null and (self.cuantaElectricidadConduce()==unMaterial.cuantaElectricidadConduce() and
		self.esRadioactivo()==unMaterial.esRadioactivo() and
		self.cuantaElectricidadConduce()==unMaterial.cuantaElectricidadConduce() and
		self.cantidadDeMetal()==unMaterial.cantidadDeMetal())
		
	}
}


class Circuito inherits Material{
	
	var componentes
	
	
	
	constructor (_componentes){
		componentes=_componentes
	}
	
	method imagen()="assets/circuito.png"
	
	override method cuantaElectricidadGenera() = 0
	
	override method esRadioactivo() = componentes.any({unElemento=>unElemento.esRadioactivo()}) 
	
	override method cuantaElectricidadConduce() = 3 * componentes.sum({unElemento=>unElemento.cuantaElectricidadConduce()})
	
	override method cantidadDeMetal() = componentes.sum({unElemento=>unElemento.cantidadDeMetal()})
	
}

class Bateria inherits Material{
	
	var componentes
	
	constructor (_componentes){
		componentes=_componentes
	}
	
	method imagen()="assets/bateria.png"
	
	override method cuantaElectricidadGenera() = 2 * self.cantidadDeMetal()
	
	override method esRadioactivo() = true
	
	override method cuantaElectricidadConduce()=0
	
	override method cantidadDeMetal() = componentes.sum({unElemento=>unElemento.cantidadDeMetal()})

}