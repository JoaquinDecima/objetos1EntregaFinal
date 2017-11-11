import materiales.material.*
import experimentos.experimento.*

object circuito inherits Experimento{
			/*Construir un Circuito: Requiere de al menos un material que conduzcan como m�nimo 5 amperes.
			*  El circuito es construido con todos los materiales que Rick tiene en la mochila 
     			que conducen al menos 5 amperes. 
			* El circuito conduce el triple que la suma de lo que conducen sus componentes
			* Es radiactivo si alguno de sus componentes lo es
			* El metal es la suma del metal de sus componentes
			* y no genera electricidad.
			*/
	
	method materialesQueRequiere(mochila){
		return mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce()>=5})
	}
	
	override method cumpleRequisitos(mochila){
		return super(mochila) && self.materialesQueRequiere(mochila).size()>0
	}
	
	method realizar(unCompaniero){
		var material = new Material()
		material.electricidadQueConduce(3*unCompaniero.mochila().sum({unElemento=>unElemento.cuantaElectricidadConduce()}))
		material.esRadioactivo(unCompaniero.mochila().any({unElemento=>unElemento.esRadioactivo()}))
		material.cantMetal(unCompaniero.mochila().sum({unElemento=>unElemento.cantidadDeMetal()}))
		unCompaniero.guardarUno(material)
	}	
	

}