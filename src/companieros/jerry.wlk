import companieros.companiero.*
import companieros.humores.buen_humor.*
import companieros.humores.mal_humor.*
import companieros.humores.sobreexitado.*

class Jerry inherits Companiero{

	var humor = buenHumor
	
	method humor() = humor
	
	method ponerMalHumor(){
		humor = malHumor
	}
	
	method sobreexitar(){
		humor  = sobreexitado
	}
	
	method ponerBuenHumor(){
		humor = buenHumor
	}
	
	override method cantMaxMochila() = humor.cantMaxMochila() 
	
	override method recolectar(unMaterial){
		humor.recolectar(self,unMaterial)
		if (unMaterial.esSerVivo()){
			self.ponerBuenHumor()
		}
		if (unMaterial.esRadioactivo()){
			self.sobreexitar()
		}
	} 
}