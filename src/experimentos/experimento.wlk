import materiales.material.*

class Experimento{

 
	var componentes = []

	method componentes()=componentes
	
	method componentes(unosMateriales) {
		componentes=unosMateriales
	}
	

		
	method materialesQueRequiere(mochila, unaEstrategia)
	
	method cumpleRequisitos(mochila, unaEstrategia) {
		if (self.materialesQueRequiere(mochila,unaEstrategia).isEmpty()){self.error("Requisitos insuficientes")}
		return true					
	}
	
	method realizar(unRick){
		var materialesComponentes = self.materialesQueRequiere(unRick.mochila(),unRick.estrategia())
		if (materialesComponentes.isEmpty()) self.error ("No se puede realizar el experimento")
		unRick.quitarDeLaMochila(materialesComponentes)
		self.componentes(materialesComponentes)
	}
		
}