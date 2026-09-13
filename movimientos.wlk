import gameConfiguration.*

/*
* Acá se define cómo se mueven los personajes cuando se usan las flechitas.
* Las posiciones son objetos inmutables, pero los personajes controlados pueden
* moverse setteándose la nueva posición cuando sea necesario.
*
* Esta versión anda, pero deja que los chicos se vayan de la pantalla.
* Cada dirección tiene que hacerse cargo de su propio borde.
*/

object movimiento {
	method mover(personajeLibre, direccion){
		const nuevaPosicion = direccion.posicionSiguiente(personajeLibre.position())
		personajeLibre.position(nuevaPosicion)
	}
}

object haciaArriba {
	// TODO: no se puede subir más arriba del suelo, donde está la casa
	method posicionSiguiente(posicion) = 
	if (posicion.y() < config.alturaDelSuelo()) posicion.up(1)
}

object haciaAbajo {
	// TODO: no se puede bajar más allá del y = 0

	method posicionSiguiente(posicion) = 
	if (posicion.y() > 0) posicion.down(1) 

}

object haciaLaDerecha {
	// LISTO: saliendo por el borde derecho se da la vuelta a la 

	method posicionSiguiente(posicion) = 
	if (posicion.x() >= config.anchoMaximo() - 1) posicion.createPosition(0, posicion.y())//game.at(0,posicion.y())
	else posicion.right(1)
}

object haciaLaIzquierda {
	// READY: saliendo por el borde izquierdo se da la vuelta a la manzana
	method posicionSiguiente(posicion) = 
	if (posicion.x() <= 0 ) posicion.createPosition(config.anchoMaximo() - 1, posicion.y())
	else posicion.left(1)
}
