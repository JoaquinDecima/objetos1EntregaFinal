import cable.*
import fleeb.*
import lata.*
import material.*

class MateriaOscura inherits Material{

 	var materialBase
 	
 	constructor (_materialBase){
 		materialBase = _materialBase
 		}
 	
 	override method cantidadDeMetal(){
 		return materialBase.cantidadDeMetal()	
 	}
 	
 	override method cuantaElectricidadConduce(){
 		if (materialBase.puedeConducirElectricidad()){
 			return materialBase.cuantaElectricidadConduce() / 2
 		}	
 		return 0
 	}
 	
 	override method cuantaElectricidadGenera(){
 		if (materialBase.puedeGenerarElectricidad()){
 			return materialBase.cuantaElectricidadGenera() * 2
 		}	
 		return 0
 	}
 	
 	override method esRadioactivo() = false 	
}