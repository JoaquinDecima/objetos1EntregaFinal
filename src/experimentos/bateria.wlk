import experimentos.experimento.*
import materiales.material.*


object bateria inherits Experimento{
	 
 	override method materialesQueRequiere(mochila,estrategia){
 		return estrategia.seleccion().apply(
 					mochila.filter({unMaterial => unMaterial.cantidadDeMetal()>200})
 				) +
 				estrategia.seleccion().apply(
 					mochila.filter({otroMaterial => otroMaterial.esRadioactivo()})
 				)
 	}																													

	override method realizar(unRick){
		super(unRick)
		unRick.guardarEnMochilaUnMaterial(new Bateria(componentes))
		unRick.companiero().consumirEnergia(self.energiaQueResta())
	}
	
	
	method energiaQueResta() = 5
}