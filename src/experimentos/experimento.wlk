import materiales.material.*

class Experimento inherits Material{

	var componentes = []

	method componentes()=componentes
	
	method componentes(unosMateriales) {
		componentes=unosMateriales
	}		

		
	method materialesQueRequiere(mochila)
	
	method cumpleRequisitos(mochila) = self.materialesQueRequiere(mochila).size()>0
	
	method realizar(unRick){
		var materialesComponentes = self.materialesQueRequiere(unRick.mochila())
		unRick.quitarDeLaMochila(materialesComponentes)
		self.componentes(materialesComponentes)
		unRick.guardarEnMochila(self)
	}

	
	//--------------------

	override method cantidadDeMetal() = componentes.sum({material=>material.cantidadDeMetal()})
	
}