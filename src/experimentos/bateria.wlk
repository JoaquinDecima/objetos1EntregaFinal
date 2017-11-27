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
		var nuevoMaterial=new NuevoMaterial(self.esRadioActivo(),self.electricidadQueGenera(),self.electricidadQueConduce(),self.cantidadDeMetal())	
		unRick.guardarEnMochilaUnMaterial(nuevoMaterial)
		unRick.companiero().energia(unRick.companiero().energia()-self.energiaQueResta())
		//Mejorar como reduce /incrementa energia
	}
	
	
	method energiaQueResta() = 5
	method electricidadQueGenera() = 2 * self.cantidadDeMetal()
	method electricidadQueConduce()=0
	method cantidadDeMetal() = componentes.sum({unElemento=>unElemento.cantidadDeMetal()})
	method esRadioActivo()=true
}