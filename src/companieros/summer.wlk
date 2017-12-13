import companieros.companiero.*

object summer inherits Companiero{

	override method cantMaxMochila() = 2
	
	override method darObjetosA(unRick){
		super(unRick)
		energia -= 10
	}

	override method consumirEnergia(nCantEnergia){
		energia -= nCantEnergia * 0.8
	}

}