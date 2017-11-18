import materiales.material.*

// TODO Esta clase (y sus subclases) mezcla dos conceptos: los experimentos y sus resultados.
// Eso hace que el experimento no se puede hacer más de una vez.
class Experimento inherits Material{

	var componentes = []

	method componentes()=componentes
	
	method componentes(unosMateriales) {
		componentes=unosMateriales
	}		

		
	method materialesQueRequiere(mochila)
	
	// TODO No parece estar bien esta lógica. Si yo pido materiales que requiere y no los puede
	// obtener, debería tirar excepción, devolver una colección vacía es propenso a errores.
	method cumpleRequisitos(mochila) = self.materialesQueRequiere(mochila).size()>0
	
	method realizar(unRick){
		var materialesComponentes = self.materialesQueRequiere(unRick.mochila())
		if (materialesComponentes.isEmpty()) self.error ("No se puede realizar el experimento")
		unRick.quitarDeLaMochila(materialesComponentes)
		self.componentes(materialesComponentes)
		
	}

	
	override method cantidadDeMetal() = componentes.sum({material=>material.cantidadDeMetal()})
	
}