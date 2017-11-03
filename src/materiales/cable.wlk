import lata.*


class Cable inherits Lata{
		/* Cable: Tiene:
			* 	Una longitud en metros 
			* 	Una secci�n en cm� (la superficie transversal). 
			*   La cantidad de metal es 1 gramo por cm� ((longitud / 1000) * secci�n)
			*   
			*   Puede conducir electricidad hasta 3 Amperes por cm� de secci�n.
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