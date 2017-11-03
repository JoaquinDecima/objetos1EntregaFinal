class Material{
	var gramos //propiedad
	var electricidad
	var radioactivo //propiedad
	var energia
	
	constructor (_gramos,_electricidad,_esRadioactivo,_energia){
		gramos=_gramos
		electricidad=_electricidad
		radioactivo=_esRadioactivo
		energia=_energia
	}
	
	method energia()=energia
	method gramos()=gramos
	method esRadioactivo()=radioactivo
	method electricidad()=electricidad
	
	method puedeSerRecolectadoPor(unPersonaje) = unPersonaje.energia()>= self.gramos()
	
	method energiaQueAfecta() = -self.gramos()
}
