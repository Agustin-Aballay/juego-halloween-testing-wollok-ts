import movimientos.*
import wollok.game.*
import disfraces.*

object rolo {
	var property position = game.origin()
	method image() = "rolo.png"

	method disfrazateDeSuperheroe() {
		// TODO: ¿qué debería hacer Rolo cuando pasa por un vestidor?
	}

	method disfrazateDeAntiheroe() {
		// TODO: ¿qué debería hacer Rolo cuando pasa por un vestidor?
	}
}

object juanita {
	var property disfraz = superheroe

	method position(){
		// TODO: debería estar siempre una celda a la izquierda de tito
		
		// return game.at(tito.position().x() - 1, tito.position().y())
		return haciaLaIzquierda.posicionSiguiente(tito.position())
	}

	method image(){
		// TODO: debería cambiar cuando se cambia el disfraz
		return "juanita-superheroe.png"
	}

	method disfrazateDeSuperheroe() {
		// TODO: ¿de qué se disfraza Juanita en el vestidor de superhéroes?
	}

	method disfrazateDeAntiheroe() {
		// TODO: ¿de qué se disfraza Juanita en el vestidor de antihéroes?
	}
}

object tito {
	var property position = game.at(2, 0)
	var property disfraz = superheroe

	method image(){
		// TODO: debería cambiar cuando se cambia el disfraz
		return "tito-superheroe.png"
	}

	method disfrazateDeSuperheroe() {
		// TODO: ¿de qué se disfraza Tito en el vestidor de superhéroes?
	}

	method disfrazateDeAntiheroe() {
		// TODO: ¿de qué se disfraza Tito en el vestidor de antihéroes?
	}
}
