import materiales.material.*
import experimentos.experimento.*

/*Construir un Circuito: Requiere de al menos un material que conduzcan como m�nimo 5 amperes.
			*  El circuito es construido con todos los materiales que Rick tiene en la mochila 
     			que conducen al menos 5 amperes. 
			* El circuito conduce el triple que la suma de lo que conducen sus componentes
			* Es radiactivo si alguno de sus componentes lo es
			* El metal es la suma del metal de sus componentes
			* y no genera electricidad.
			*/
			
object circuito inherits Experimento{
				
	override method materialesQueRequiere(mochila){
		return mochila.filter({unMaterial=>unMaterial.cuantaElectricidadConduce()>=5})
	}
	
	override method esRadioactivo() = componentes.any({unElemento=>unElemento.esRadioactivo()}) 
	
	override method cuantaElectricidadConduce() = 3 * componentes.sum({unElemento=>unElemento.cuantaElectricidadConduce()})
}