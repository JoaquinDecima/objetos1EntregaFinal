 import rick.*
 import materiales.cable.*
 import materiales.fleeb.*
 import materiales.lata.*
 import materiales.materia_oscura.*
 
class Companiero{
	var energia
	var mochila = []
	
	constructor (_energia){
		energia = _energia
	}
	
	method cantMaxMochila() = 3
	
	method puedeRecolectar(unMaterial) = unMaterial.puedeSerRecolectadoPor(self) 

	method energia() = energia
	
	method energia(unaCantidadDeEnergia){
		energia = unaCantidadDeEnergia
	}
	
	method mochila () = mochila
	
	method guardar(unMaterial){
		if (mochila.size()==self.cantMaxMochila()) self.error ("No hay mas lugar en la mochila")
		mochila.add(unMaterial)
	}
	
	method recolectar(unMaterial){
		if (not self.puedeRecolectar(unMaterial)) self.error ("No tiene suficiente energia")
		self.guardar(unMaterial)
		self.consumirEnergia(unMaterial.energiaQueResta())
		unMaterial.alterarPersonalidadDe(self) // nuevo para uso de parasitos alienigenas..
	} 
	
	method consumirEnergia(nCantEnergia){
		energia -= nCantEnergia
	}
	
	method darObjetosA(unRick){
		unRick.recibir(mochila)
		self.vaciarMochila()
	}
	
	method vaciarMochila(){
		mochila = []
	}
	
	method quitar(unMaterial){
		mochila.remove(unMaterial)
	}
	
	method quitarUnoAlAzar(){ //lo utiliza parasitosAlienigenas
		if (not mochila.isEmpty()){
			self.quitar(mochila.anyOne()) 
		}
	}
	
	method modificarEnergia(valorAbsoluto){ //lo utiliza parasitosAlienigenas
		energia+=valorAbsoluto
	}
}

object morty inherits Companiero(100){}
