import experimentos.experimento.*
import materiales.material.*


object bateria inherits Experimento{
	 
 	override method materialesQueRequiere(mochila,estrategia){
 		return estrategia.seleccion().apply(
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