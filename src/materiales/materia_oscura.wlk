import lata.Lata

class MateriaOscura inherits Lata{
	/* Materia Oscura: 
		* 	Contiene un material base. 
		*   La conductividad es la mitad de la base
		*   La cantidad de metal es la misma que la base
		*   No es radiactivo
		*   Genera el doble de energía que la base.
 	*/

 	var materialBase
 	
 	constructor (_gramos,unMaterial)=super(_gramos,unMaterial.electricidad()/2,false,2*unMaterial.energia()){
 		materialBase=unMaterial
 		metal=unMaterial.metal()
 	}
 	
 	
}