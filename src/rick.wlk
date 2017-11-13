import experimentos.bateria.*
import experimentos.circuito.*
import experimentos.shock.*
import materiales.lata.*
import companiero.*

	
object rick {
	
	var mochila =[]
	var companiero = morty 
	
	method mochila() = mochila
	
	method recibir(unosMateriales){
		mochila+=unosMateriales
	}
	
	method experimentosQuePuedeRealizar(){
		return self.experimentosQueSabeHacer().filter({e=>e.cumpleRequisitos(mochila)})
	}

	method experimentosQueSabeHacer() = #{circuito,bateria,shock}
	
	method puedeRealizarExperimento(unExperimento) = self.experimentosQuePuedeRealizar().contains(unExperimento) 
	
	method realizar(unExperimento){
			unExperimento.realizar(self)
	}
	
	method guardarEnMochila(unMaterial){
		self.recibir([unMaterial])
	}
	
	method companiero(unCompaniero){
		companiero=unCompaniero
	}
	
	method companiero() = companiero
	
	method quitarDeLaMochila(elementos){
		elementos.forEach({elem => self.quitarElementoDeMochila(elem)})
	}
	
	method quitarElementoDeMochila(elemento){
		mochila.remove(elemento)
	}

}