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
		game.addVisualCharacter(morty)
		
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
		R.onPressDo {self.recolectarDelLugar(morty)}
		
		D.onPressDo {morty.darObjetosA(rick)
					self.dibujarMochilaMorty(morty.mochila())
					self.refrescarMochilasRick()
		}
		
		E.onPressDo {self.dibujarMochilaExperimentos(rick.experimentosQuePuedeRealizar())}
		
		M.onPressDo {self.dibujarMochilaMorty(morty.mochila())}
		N.onPressDo {self.dibujarMochilaRick(rick.mochila())}
		
		P.onPressDo {self.mostrarMenu()}
		ENTER.onPressDo {self.ocultarMenu()}


		//Hacer experimentos
		NUM_1.onPressDo {self.realizarExperimentoPosicion(0)}
		NUM_2.onPressDo {self.realizarExperimentoPosicion(1)}
		NUM_3.onPressDo {self.realizarExperimentoPosicion(2)}
		
		
		
		
		
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
		self.dibujarMochilaHorizontal(unaLista,9,12)
	}

	method dibujarMochilaRick(unaLista){
		self.dibujarMochilaVertical(unaLista,7,3)
	}
	
	method dibujarMochilaHorizontal(unaLista,desde,hasta){
		self.limpiarPanel(desde,hasta)
		var a=desde
		unaLista.forEach({m=>
								new Position(a,7).drawElement(m)
								a+=1
			
		})
		
	}
	method dibujarMochilaVertical(unaLista,desde,hasta){
		self.limpiarPanelVertical(hasta,desde)
		var a=desde
		unaLista.forEach({m=>
								new Position(14,a).drawElement(m)
								a-=1
			
		})
		
	}
	
	method limpiarPanelVertical(desde,hasta){
		(desde..hasta).forEach({e=>game.removeVisual(self.objetoEnCelda(game.at(14,e)))})
	}
	method limpiarPanel(desde,hasta){
		(desde..hasta).forEach({e=>game.removeVisual(self.objetoEnCelda(game.at(e,7)))})
		
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


