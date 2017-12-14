import materiales.material.*

class Experimento{

	var componentes = []

	method componentes()=componentes
	
	method componentes(unosMateriales) {
		componentes=unosMateriales
	}
		
	method materialesQueRequiere(mochila, unaEstrategia)
	
	method cumpleRequisitos(mochila, unaEstrategia) {
		try{
			//este metodo rompe si no tiene los materiales que se requiere
			if (self.materialesQueRequiere(mochila,unaEstrategia).isEmpty()){
				return false
			}
			return true
		} 
		catch  e {
			return false
		} 
	}
	
	method realizar(unRick){
		var materialesComponentes = self.materialesQueRequiere(unRick.mochila(),unRick.estrategia())
		if (materialesComponentes.isEmpty()) self.error ("No se puede realizar el experimento")
		unRick.quitarDeLaMochila(materialesComponentes)
		self.componentes(materialesComponentes)
	}
		
}