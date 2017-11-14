import companieros.companiero.*
import companieros.humores.buen_humor.*
import companieros.humores.mal_humor.*
import companieros.humores.sobreexitado.*

object jerry inherits Companiero(100){

	var humor = buenHumor
	
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