import lata.*


class Cable inherits Lata{
		/* Cable: Tiene:
			* 	Una longitud en metros 
			* 	Una sección en cm² (la superficie transversal). 
			*   La cantidad de metal es 1 gramo por cm³ ((longitud / 1000) * sección)
			*   
			*   Puede conducir electricidad hasta 3 Amperes por cm² de sección.
			*   No genera electricidad 
			*   No es radiactivo.
		*/
	var longitud
	var seccion
	
	constructor (_gramos,_metal,_longitud,_seccion)=  super (_gramos,_metal){
		longitud=_longitud
		seccion=_seccion
	}
	
}