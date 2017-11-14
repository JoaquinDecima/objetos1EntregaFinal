import companieros.companiero.*

class Summer inherits Companiero {

	override method guardar(unMaterial){
		if (mochila.size()==2) self.error ("No hay mas lugar en la mochila")
		mochila.add(unMaterial)
	}
	
	override method darObjetosA(unRick){
		super(unRick)
		energia -= 10
	}
	
	override method recolectar(unMaterial){
		if (not self.puedeRecolectar(unMaterial)) self.error ("No tiene suficiente energia")
		self.guardar(unMaterial)
		self.consumirEnergia(unMaterial.energiaQueResta()*0.8)
	}

}