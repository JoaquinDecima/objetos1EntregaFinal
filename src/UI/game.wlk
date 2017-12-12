import wollok.game.*
import rick.*
import companieros.companiero.*
import materiales.cable.*
import materiales.lata.*
import materiales.fleeb.*
import materiales.materia_oscura.*

object juego {
	
	method inicio(){	//CONFIGURACIÓN 
		game.title("Rick & Morty")
		game.height(8)
		game.width(16)
		new Position(0,0).drawElement(fondo)
		
		var morty =new MortyMov()
		
		new Position(0,0).drawElement(rick)
		
		
		E.onPressDo {game.say(rick, "Puedo hacer : "+ rick.experimentosQuePuedeRealizar()) }
		D.onPressDo {morty.darObjetosA(rick)}
		R.onPressDo {morty.recolectar(morty.queHayAqui().first())}
		
		M.onPressDo {game.say(morty,"Tengo " + self.listaATexto(morty.mochila()))}
		N.onPressDo {game.say(rick,"Tengo " + self.listaATexto(rick.mochila()))	}

		NUM_1.onPressDo {rick.realizar(rick.experimentosQuePuedeRealizar().get(0))}
		NUM_2.onPressDo {rick.realizar(rick.experimentosQuePuedeRealizar().get(1))}
		NUM_3.onPressDo {rick.realizar(rick.experimentosQuePuedeRealizar().get(2))}

		

		
		
		
		var cable=new CableMov(10,2)
		var lata =new LataMov(500)
		var lataParaMateriaOscura =new LataMov(500)
		var fleeb = new FleebMov(38)
		var materiaOscura= new MateriaOscuraMov(lataParaMateriaOscura)
		var materiales =[cable,lata,fleeb,materiaOscura]	
		
		
			
	
		//Incluyo varios materiales en tablero
		var randomX = [1,2,3,4,5,6,7,8,9,10,11,12]
		var randomY = [0,1,2,3]
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiales.anyOne())
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiales.anyOne())
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiales.anyOne())
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiales.anyOne())
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiales.anyOne())
		new Position(randomX.anyOne(),randomY.anyOne()).drawElement(materiales.anyOne())
		
	
		
		game.addVisualCharacter(morty)
		game.start()
	
	}
	
	method listaATexto(unaLista){
		return unaLista.fold("",{acum,item => acum + item + ", "})
		
		
	}
}

object fondo{
	const imagen = "assets/fondo.png"
}


class LataMov inherits Lata{
	const imagen ="assets/lata.png"
}
class FleebMov inherits Fleeb{
	const imagen ="assets/fleeb.png"
}
class MateriaOscuraMov inherits MateriaOscura{
	const imagen ="assets/materiaoscura.png"
}
class CableMov inherits Cable{
	const imagen ="assets/cable.png"
}

class MortyMov inherits Companiero {
	var posicion = game.at(1,0)
	method imagen() = "assets/morty50.png"
	
	method izquierda() {
		posicion.moveLeft(1)
	}
	method derecha() {
		posicion.moveRight(1)
	}
	method arriba() {
		posicion.moveUp(1)
	}
	method abajo() {
		posicion.moveDown(1)
	}
	
	method queHayAqui()	{
		return game.colliders(self)
	}
	
	override method recolectar(unMaterial){
		super(unMaterial)
		game.removeVisual(unMaterial)
		
		
	}
}