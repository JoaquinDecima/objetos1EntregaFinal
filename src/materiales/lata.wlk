import material.*

class Lata inherits Material{
		/* Lata: 
			* 	Tiene una cantidad de metal que es distinta para cada lata
			* 	No es radiactivo
			*   No genera electricidad 
			*   Puede producir electricidad, 0.1 Amperes por gramo de metal que posee 
		*/
	var metal
	
	constructor (_gramos,_metal) = super(_gramos,0,false,0.1*_gramos){
		metal=_metal
	}
	
	method metal()=metal
	
		
}