import experimentos.experimento.*
import materiales.material.*


object bateria inherits Experimento{
	 
 	override method materialesQueRequiere(mochila,estrategia){
 		return estrategia.seleccion().apply(
 			// TODO Este filter está mal y no me da un conjunto posible de materiales para usar, estaba mejor en la versión anterior.
 			// La selección luego toma uno entre todos los materiasles filtrados, pero no garantiza que se esté cumpliendo los dos
 			// requisitos (cantidad de metal y radioactivo).
 			// Se podría resolver si hacés dos filters por separado y cada uno lo pasás por la estrategia de selección.
 			// Pensado así, la selección debería devolver un único material, no entiendo por qué devolvería una lista.
 			mochila.filter({unMaterial=>unMaterial.cantidadDeMetal()>200 or unMaterial.esRadioactivo()})
 			)
 	}																													

	override method realizar(unRick){
		super(unRick)
			
		unRick.guardarEnMochilaUnMaterial(new Bateria (componentes))
		unRick.companiero().energia(unRick.companiero().energia()-self.energiaQueResta())
		//Mejorar como reduce /incrementa energia
	}
	
	
	method energiaQueResta() = 5
}