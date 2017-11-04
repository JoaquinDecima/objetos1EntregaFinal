import cable.*
import fleeb.*
import lata.*
import material.*

class MateriaOscura inherits Lata{

 	var materialBase
 	
 	constructor (oMaterial)=super(oMaterial.cantMetal()){
 		materialBase = oMaterial
 		}
 	
 	override method cuantaElectricidadConduce(){
 		if (materialBase.puedeConducirElectricidad()){
 			return materialBase.cuantaElectricidadConduce() / 2
 		}
 		
 		return super()
 	}
 	
 	override method cuantaElectricidadGenera(){
 		if (materialBase.puedeGenerarElectricidad()){
 			return materialBase.cuantaElectricidadGenera() * 2
 		}
 		
 		return super()
 	}
}