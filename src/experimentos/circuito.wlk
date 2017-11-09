import materiales.material.*
import experimentos.experimento.*

object circuito inherits Experimento{
			/*Construir un Circuito: Requiere de al menos un material que conduzcan como mínimo 5 amperes.
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
	
	method cumpleRequisitos(mochila){
		return mochila.contains(self.materialesQueRequiere(mochila)) and not self.materialesQueRequiere(mochila).isEmpty()
	}
	
	method realizar(unCompaniero){
		var electricidadQueConduce=3*unCompaniero.mochila().sum({unElemento=>unElemento.cuantaElectricidadConduce()})
		var esRadiactivo=unCompaniero.mochila().any({unElemento=>unElemento.esRadiactivo()})
		var cantMetal = unCompaniero.mochila().sum({unElemento=>unElemento.cantMetal()})
		var electricidadQueGenera=0 //se puede quitar pero lo deje para dar claridad 
		unCompaniero.guardar(new Material (electricidadQueConduce,esRadiactivo,cantMetal,electricidadQueGenera))
	}	
	

}