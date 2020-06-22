import marcas.*

class Jarras{
	var property capacidad
	var property cerveza
	
	method contenidoAlcoholico() {
		return self.capacidad() * (cerveza.graduacion() / 100)
	}
	
	method marca() = cerveza.marca()
	
	
}
