import experimentos.bateria.*
import experimentos.circuito.*
import experimentos.shock.*
import materiales.lata.*
object rick {

	
/*	* Rick realiza experimentos
	* Aquellos objetos necesarios que tiene en su mochila (aquellos que le dio su
	  compa�ero, Morty en este caso), con esto transforma materiales en otros materiales
	* algunos experimentos afectan a su compa�ero. */
	
	var mochila =[]
	var companiero //un compañero conocido
	
	method mochila() = mochila
	
	method recibir(unosMateriales){
		mochila+=unosMateriales
	}
	
	method experimentosQuePuedeRealizar(){
		return self.experimentosQueSabeHacer().filter({e=>e.cumpleRequisitos(mochila)})
	}

	method experimentosQueSabeHacer() = #{circuito}
	
	method realizar(unExperimento){
		//EN DESAROLLO
		unExperimento.realizar(self)
		
		
	}
	
	
	method guardarUno(unMaterial){
		mochila.add( unMaterial)
	}
	
	

}