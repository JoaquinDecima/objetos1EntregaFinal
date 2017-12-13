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
	
	method imagen()="assets/rick50.png"	
	
	method cambiarEstrategia(unaEstrategia){
		estrategia=unaEstrategia
	}
	
	method estrategia() = estrategia
	
	method recibir(unosMateriales){
		mochila+=unosMateriales
	}
	
	method experimentosQuePuedeRealizar(){
		return self.experimentosQueSabeHacer().filter({experimento=>experimento.cumpleRequisitos(mochila,estrategia)})
	}

	method experimentosQueSabeHacer() = #{circuito,bateria,shock}
	
	method puedeRealizarExperimento(unExperimento) = self.experimentosQuePuedeRealizar().contains(unExperimento) 
	
	method realizar(unExperimento){
		unExperimento.realizar(self)
	}
	
	
	/*A este metodo le cambie el nombre, sino podriamos hacer todo con recibir pero hay que acordarse de pasarle una lista..
	Me parece que teniendo dos metodos queda mas claro el uso de cada uno.
	*/
	method guardarEnMochilaUnMaterial(unMaterial){
		self.recibir([unMaterial])
	}
	
	method quitarDeLaMochila(elementos){
		mochila.removeAll(elementos)
	}
	
	
	method companiero(unCompaniero){
		companiero=unCompaniero
	}
	
	method companiero() = companiero
	

}