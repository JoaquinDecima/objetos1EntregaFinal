import materiales.lata.*
import materiales.fleeb.*
import materiales.cable.*
import materiales.materia_oscura.*
import companieros.companiero.*

class LataMov inherits Lata{
	method imagen()= "assets/lata.png"
}
class FleebMov inherits Fleeb{
	method imagen()= "assets/fleeb.png"
}
class MateriaOscuraMov inherits MateriaOscura{
	method imagen()= "assets/materiaoscura.png"
}
class CableMov inherits Cable{
	method imagen()= "assets/cable.png"
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