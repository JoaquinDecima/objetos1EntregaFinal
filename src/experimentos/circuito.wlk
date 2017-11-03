import materiales.material.*
class Circuito{
		/*Construir un Circuito: Requiere de al menos un material que conduzcan como mínimo 5 amperes.
			*  El circuito es construido con todos los materiales que Rick tiene en la mochila 
     			que conducen al menos 5 amperes. 
			* El circuito conduce el triple que la suma de lo que conducen sus componentes
			* Es radiactivo si alguno de sus componentes lo es
			* El metal es la suma del metal de sus componentes
			* y no genera electricidad.
			*/
			
	var electricidadQueConduce
	var esRadiactivo=false 
	var metal
	var energia=0
	
	constructor(materiales){
		electricidadQueConduce=3*materiales.sum({unMaterial=>unMaterial.electricidad()})
		metal=materiales.sum({unMaterial=>unMaterial.metal()})
		esRadiactivo=materiales.any({unMaterial=>unMaterial.esRadiactivo()})
		
		
	} 
}