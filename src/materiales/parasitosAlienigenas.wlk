import material.*

class ParasitoAlienigena inherits Material{
	
	var acciones //una lista de acciones en un orden dado
	
	constructor (_acciones){
		acciones=_acciones 	
	}
	
	override method cantidadDeMetal()=10
	
	override method cuantaElectricidadGenera() = 5
	
	override method alterarPersonalidadDe(unPersonaje){ // llamado por un personaje al ser recolectado
		acciones.forEach({accion=>accion.aplicar(unPersonaje)})
	}
	
		
	/*	* Cuando es recolectado, el recolector sufre una alteraci�n en su personalidad realizando
			una o mas acciones forzosamente.
			* Las acciones que se realizan y el orden de las mismas se configuran al inicio del juego 
			  para cada instancia de un Par�sito Alien�gena con el cual se quiera jugar.

Entre las distintas acciones con las que se puede configurar el par�sito se encuentran:
	* Que el recolector entregue todos sus elementos a su compa�ero
		recolector.darObjetosA(unCompañero)
	* Que el recolector descarte un elemento al azar de su mochila. 
		Si la mochila est� vac�a no descarta nada.

	* Incrementar o decrementar la energ�a del recolector. 
		La cantidad de energ�a es un porcentaje que debe ser configurado al momento de configurarse el par�sito.
		Distintos par�sitos podr�an tener distintos valores o incluso, un mismo par�sito
		podr�a tener dos acciones de energ�a con valores distintos! (por ejemplo, restar el
		10% , hacer algo m�s y luego sumar 5%)

	* Que el recolector recolecte un elemento oculto. 
		Al igual que en el punto anterior, el elemento que est� oculto en esta acci�n se configura al inicio del juego.
		Un mismo par�sito podr�a tener dos acciones distintas de este tipo, por ejemplo, una acci�n
		para recolectar un fleeb y una acci�n para recolectar una lata. 
		Si el recolector no puede recolectar el elemento oculto, entonces no lo hace. */


}



