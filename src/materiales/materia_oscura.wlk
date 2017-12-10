import cable.*
import fleeb.*
import lata.*
import material.*

class MateriaOscura inherits Material{

 	var materialBase
 	
 	
 	constructor (_materialBase){
 		materialBase = _materialBase
 		}
 	
 	override method cantidadDeMetal() = return materialBase.cantidadDeMetal()	
 	
 	override method cuantaElectricidadConduce() = materialBase.cuantaElectricidadConduce() / 2

 	
 	
 	override method cuantaElectricidadGenera() = materialBase.cuantaElectricidadGenera() * 2

}