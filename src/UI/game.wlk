import wollok.game.*
import rick.*
import companieros.companiero.*
import materiales.cable.*
import materiales.lata.*
import materiales.fleeb.*
import materiales.materia_oscura.*
import UI.abstraccion.*
import UI.bordes.*

object juego {
	var morty =new MortyMov()
	var summer = new SummerMov()
	var personaje = morty
	
	method inicio(){	//CONFIGURACIÓN 
		
		self.cargarLayout()
		self.cargarSplashScreen()
		ENTER.onPressDo{self.cargarJuego()} 	
		
	
	}
	method cargarJuego(){
		game.clear()
		self.cargarLayout()
		self.cargarFondoJuego()
		
		self.colocarMateriales()	
		self.colocarBordes()
		self.cargarShortcuts()
		self.cargarPersonajes()
	}
	
	method cargarSplashScreen(){
		new Position(0,0).drawElement(splash)
	}
	method cargarFondoJuego(){
		new Position(0,0).drawElement(fondo)
	}
	method cargarLayout(){
		game.title("Rick & Morty")
		game.height(8)
		game.width(16)
		
	}
	
	method cargarPersonajes(){
		morty.energia(1000)
		summer.energia(1000)
		
		morty.swaper(summer)
		summer.swaper(morty)
		
		morty.salir()
		summer.salir()
		
		personaje.entrar()
		game.addVisualCharacter(morty)
		game.addVisualCharacter(summer)
		
		rick.companiero(personaje)
		new Position(0,0).drawElement(rick)
		
	}
	method colocarMateriales(){
		var cable=new CableMov(10,2)
		var lata =new LataMov(250)
		var lataParaMateriaOscura =new LataMov(5)
		var fleeb = new FleebMov(25)
		fleeb.comerMaterial(cable)
		var materiaOscura= new MateriaOscuraMov(lataParaMateriaOscura)

		
		var randomX = [1,2,3,4,5,6,7,8,9,10,11,12]
		var randomY = [0,1,2,3]
		
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(cable)
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(lata)
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(fleeb)
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiaOscura)
		
	}
	method colocarBordes(){
		(0 .. 12).forEach { n => self.dibujarMultiples(new BordeArriba(), new Position(n, 4)) }   
		(0 .. 3).forEach { n => self.dibujarMultiples(new BordeDerecha(), new Position(13, n)) }
		(0 .. 12).forEach { n => self.dibujarMultiples(new BordeAbajo(), new Position(n, -1)) } 
		(0 .. 3).forEach { n => self.dibujarMultiples(new BordeIzquierda(), new Position(-1, n)) }
	}
	
	method cargarShortcuts(){
		
		//cargo shortcuts
		R.onPressDo {self.recolectarDelLugar(personaje)}
		
		
		
		D.onPressDo {if (not self.estaRickAqui(personaje)) self.error ("Acercate a Rick para darle la mochila!")
					personaje.darObjetosA(rick)
					self.dibujarMochilaMorty(personaje.mochila())
					self.refrescarMochilasRick()
		}
		
		E.onPressDo {self.dibujarMochilaExperimentos(rick.experimentosQuePuedeRealizar())}
		

		
		P.onPressDo {self.mostrarMenu()}
		ENTER.onPressDo {self.ocultarMenu()}
		
		//Cambiar Personaje
		U.onPressDo {
			personaje.salir()
			personaje = personaje.swap()
			personaje.entrar()
			self.dibujarMochilaMorty(personaje.mochila())
			self.refrescarMochilasRick()
		}

		//Hacer experimentos
		NUM_1.onPressDo {self.realizarExperimentoPosicion(0)}
		NUM_2.onPressDo {self.realizarExperimentoPosicion(1)}
		NUM_3.onPressDo {self.realizarExperimentoPosicion(2)}
	
	}
	
	method estaRickAqui(companiero){
		return game.getObjectsIn(companiero.posicion()).contains(rick)
	}
	
	method realizarExperimentoPosicion(unaPosicion){
			rick.realizar(rick.experimentosQuePuedeRealizar().asList().get(unaPosicion))
			self.refrescarMochilasRick()
	}
		
	method dibujarMultiples(elemento, posicion) {
		posicion.drawElement(elemento)
		game.whenCollideDo(elemento, { player => elemento.empuja(player) })
	}
	
	method refrescarMochilasRick(){
		self.dibujarMochilaExperimentos(rick.experimentosQuePuedeRealizar())
		self.dibujarMochilaRick(rick.mochila())
	}
	
	method dibujarMochilaMorty(unaLista){
		self.dibujarMochilaHorizontal(unaLista,5,7)
	}
	
	method dibujarMochilaExperimentos(unaLista){
		self.dibujarMochilaHorizontalExp(unaLista,9,12)
	}

	method dibujarMochilaRick(unaLista){
		self.dibujarMochilaVertical(unaLista,7,3)
	}
	
	method dibujarMochilaHorizontalExp(unaLista,desde,hasta){
		self.limpiarPanel(desde,hasta)
		var a=desde
		unaLista.forEach({m=>
								self.agregarItem(game.at(a,7),m)
								self.agregarNroItem(a-desde+1,game.at(a,7))
								a+=1
			
		})
		
	}
	
	method agregarItem(posicion, item){
		new Position(posicion.x(),posicion.y()).drawElement(item)
	}
	
	method agregarNroItem(nro,posicion){
		new Position(posicion.x(),posicion.y()).drawElement(new NroItem(nro))
	}
	
	method dibujarMochilaHorizontal(unaLista,desde,hasta){
		self.limpiarPanel(desde,hasta)
		var a=desde
		unaLista.forEach({m=>
								self.agregarItem(game.at(a,7),m)
								a+=1
			
		})
		
	}
	method dibujarMochilaVertical(unaLista,desde,hasta){
		self.limpiarPanelVertical(hasta,desde)
		var a=desde
		unaLista.forEach({m=>
								self.agregarItem(game.at(14,a),m)
								a-=1
			
		})
		
	}
	
	method limpiarPanelVertical(desde,hasta){
		(desde..hasta).forEach({e=>self.removerElementosEnCelda(game.at(14,e))})
	}
	method limpiarPanel(desde,hasta){
		(desde..hasta).forEach({e=>self.removerElementosEnCelda(game.at(e,7))})
		
	}
	
	method removerElementosEnCelda(celda){
		game.getObjectsIn(celda).forEach({elemento=>game.removeVisual(elemento)})
	}
	
	method objetoEnCelda(posicion){
		if (game.getObjectsIn(posicion).isEmpty()){
			return null
		}else{
			return game.getObjectsIn(posicion).first()
		}
	}
	
	method recolectarDelLugar(unCompaniero){
		if (unCompaniero.queHayAqui().isEmpty()) self.error ("Acá no hay nada para recolectar!")
		unCompaniero.recolectar(unCompaniero.queHayAqui().first())
		self.dibujarMochilaMorty(unCompaniero.mochila())
	}
	
	method mostrarMenu(){
		new Position(0,0).drawElement(menu)
	}
	method ocultarMenu(){
		game.removeVisual(menu)
	}
}

object menu{
	method imagen()= "assets/menuPausa.png"
}

object fondo{
	method imagen()= "assets/fondo.png"
}
object splash{
	method imagen()= "assets/splash.png"
}



class NroItem{
	const nro
	constructor (unNro){
		nro=unNro
	}
	method imagen(){
		if (nro==1) return "assets/experimento1.png"
		if (nro==2) return "assets/experimento2.png"
		return "assets/experimento3.png"		
	}
}
