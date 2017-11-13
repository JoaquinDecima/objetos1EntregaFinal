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
		if (materialesComponentes.isEmpty()) self.error ("No se puede realizar el experimento")
		unRick.quitarDeLaMochila(materialesComponentes)
		self.componentes(materialesComponentes)
		
	}

	
	override method cantidadDeMetal() = componentes.sum({material=>material.cantidadDeMetal()})
	
}