import companieros.companiero.*

// TODO Dado que todos los compañeros arrancan con energia 100, ¿no se podría evitar el parámetro repetitivo?
object summer inherits Companiero(100) {

	override method cantMaxMochila() = 2
	
	override method darObjetosA(unRick){
		super(unRick)
		energia -= 10
	}

	// TODO Acá están repitiendo el código de la superclase, deberían evitarlo.
	// Fíjense que el código de la superclase cambió y acá no se hizo la correccion...
	// ahí se ve que repetir código es peligroso :)
	// Lo único que cambia con la superclase es el "0.8", hay que reformar esto
	// para poder sobreescribir sólo eso.	
	override method recolectar(unMaterial){
		if (not self.puedeRecolectar(unMaterial)) self.error ("No tiene suficiente energia")
		self.guardar(unMaterial)
		self.consumirEnergia(unMaterial.energiaQueResta()*0.8)
	}

}