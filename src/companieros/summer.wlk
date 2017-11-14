import companieros.companiero.*

object summer inherits Companiero(100) {

	override method cantMaxMochila() = 2
	
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