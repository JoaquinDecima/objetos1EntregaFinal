
class Borde {
	method imagen()= "assets/borde.png"
}
class BordeArriba inherits Borde {
	method empuja(granjero) {
		granjero.abajo()
	}
}

class BordeAbajo inherits Borde {
	method empuja(granjero) {
		granjero.arriba()
	}
}

class BordeIzquierda inherits Borde{
	method empuja(granjero) {
		granjero.derecha()
	}
}

class BordeDerecha inherits Borde {
	method empuja(granjero) {
		granjero.izquierda()
	}
}