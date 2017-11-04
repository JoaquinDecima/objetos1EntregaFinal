import lata.*


class Cable inherits Lata{
	var longitud
	var seccion
	
	constructor (nLongitud,nSeccion)=  super ((nLongitud / 1000) * nSeccion){
		longitud = nLongitud
		seccion = nSeccion
	}
	
	override method cuantaElectricidadConduce(){
		return 3 * seccion
	}
}