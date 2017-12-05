import materiales.material.*

class ParasitoAlienigena inherits Material{
	
	var acciones //una lista de acciones en un orden dado

	// TODO Que haya que construirlo con null como parámetro marca que hay algo que no está bien, 
	// ¿este material no tiene componentes? 
	// Hay que revisar la jerarquía para que no nos pase esto. 	
	constructor (_acciones)=super(null){
		acciones=_acciones 	
	}
	
	override method esSerVivo() = true
	
	override method cantidadDeMetal()=10
	
	override method cuantaElectricidadGenera() = 5
	
	override method alterarPersonalidadDe(unPersonaje){ 
		acciones.forEach({accion=>accion.aplicar(unPersonaje)})
	}
	
}



