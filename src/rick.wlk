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
		// TODO mal indentado
			unExperimento.realizar(self)
	}
	
	// TODO Este método me da desconfianza, guardarEnMochila y recibir son muy parecidos... 
	// si queremos dejar los dos por comodidad de uso, al menos deberíamos ponerles nombres que indiquen que son lo mismo con uno o muchos elementos.
	// O si significan algo distinto deberíamos aclararlo.
	method guardarEnMochila(unMaterial){
		self.recibir([unMaterial])
	}
	
	method companiero(unCompaniero){
		companiero=unCompaniero
	}
	
	method companiero() = companiero
	
	// TODO De nuevo quitarDeLaMochila y quitarElementoDeLaMochila son muy parecidos y no es clara la diferencia.
	method quitarDeLaMochila(elementos){
		// TODO Más fácil usando removeAll()
		elementos.forEach({elem => self.quitarElementoDeMochila(elem)})
	}
	
	method quitarElementoDeMochila(elemento){
		mochila.remove(elemento)
	}

}