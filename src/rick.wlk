import experimentos.bateria.*
import experimentos.circuito.*
import experimentos.shock.*
import materiales.lata.*
import companieros.companiero.*
import materiales.estrategia.alAzar.*
import materiales.estrategia.ecologico.*
import materiales.estrategia.mejorGenerador.*
import materiales.estrategia.menorCantidadMetal.*

object rick {
	
	var mochila =[]
	var companiero = morty 
	var estrategia = alAzar
	
	method mochila() = mochila
	
	method cambiarEstrategia(unaEstrategia){
		estrategia=unaEstrategia
	}
	
	method estrategia() = estrategia
	
	method recibir(unosMateriales){
		mochila+=unosMateriales
	}
	
	method experimentosQuePuedeRealizar(){
		return self.experimentosQueSabeHacer().filter({e=>e.cumpleRequisitos(mochila,estrategia)})
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